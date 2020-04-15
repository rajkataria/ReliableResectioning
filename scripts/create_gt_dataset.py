import cv2
import datetime
import gzip
import json
import math
import matplotlib
import networkx as nx
import numpy as np
import os
import pickle
import pyopengv
import random
import socket
import sklearn
import sys
import time
import warnings

from matplotlib import pyplot as plt
from matplotlib.collections import LineCollection
from sklearn import manifold
from sklearn.metrics import euclidean_distances
from sklearn.decomposition import PCA
from scipy.integrate import trapz, simps
from argparse import ArgumentParser
from multiprocessing import Pool
from scipy.special import comb

def mkdir_p(path):
    try:
        os.makedirs(path)
    except os.error as exc:
        pass

def find_nearest(array, value):
    array = np.asarray(array)
    idx = (np.abs(array - value)).argmin()
    return idx

def plot_pr(pr, color, markers=[]):
    precision, recall, threshs = pr
    plt.step(recall, precision, color=color, alpha=5, where='post')

    marker_colors = ['black', 'blue', 'yellow', 'green', 'cyan', 'red']
    for i,marker in enumerate(markers):
        ri = find_nearest(threshs, marker)
        plt.plot(recall[ri], precision[ri], color=marker_colors[i], marker='o') 

def plot_prs(pr, pr_baseline, pr_auc, pr_auc_baseline, markers = [], markers_baseline=[]):
    legend = []
    plt.clf()
    fig = plt.figure()
    plt.xlim([0.0, 1.05])
    plt.ylim([0.0, 1.05])
    plt.title('Precision-Recall Curves')
    plt.xlabel('Recall')
    plt.ylabel('Precision')

    plot_pr(pr_baseline, color='blue', markers=markers_baseline)
    plot_pr(pr, color='green', markers=markers)

    legend.extend(['Baseline AUC=' + str(round(pr_auc_baseline,3))])
    legend.extend(['Marker threshold: {}'.format(i) for i in markers_baseline])
    legend.extend(['AAM AUC=' + str(round(pr_auc,3))])
    legend.extend(['Marker threshold: {}'.format(i) for i in markers])
    plt.legend(legend, loc='lower left', shadow=True, fontsize=10)

    fig.set_size_inches(13.875, 7.875)
    fig.canvas.draw()
    fig_np = np.fromstring(fig.canvas.tostring_rgb(), dtype=np.uint8, sep='').reshape(fig.canvas.get_width_height()[::-1] + (3,))
    return fig, fig_np

def calculate_dataset_auc(y, y_gt):
    pr = sklearn.metrics.precision_recall_curve(y_gt, y)
    auc = sklearn.metrics.average_precision_score(y_gt, y)
    auc_roc = sklearn.metrics.roc_auc_score(y_gt, y)
    roc = sklearn.metrics.roc_curve(y_gt, y)
    return auc, auc_roc, pr, roc

def __rmatches_outliers_path(data, options):
    return os.path.join(options['data_folder'], os.path.join('/'.join(os.path.abspath(data.data_path).split('/')[-2::]), 'rmatches_outliers'))

def __rmatches_inliers_path(data, options):
    return os.path.join(options['data_folder'], os.path.join('/'.join(os.path.abspath(data.data_path).split('/')[-2::]), 'rmatches_inliers'))

def __common_tracks_path(data, options):
    return os.path.join(options['data_folder'], os.path.join('/'.join(os.path.abspath(data.data_path).split('/')[-2::]), 'common_tracks'))

def __match_visualizations_path(data, options):
    return os.path.join(options['data_folder'], os.path.join('/'.join(os.path.abspath(data.data_path).split('/')[-2::]), 'match_visualizations'))

def __rmatches_outliers_file(data, image, options):
    return os.path.join(__rmatches_outliers_path(data, options), '{}_outliers.pkl.gz'.format(image))

def __rmatches_inliers_file(data, image, options):
    return os.path.join(__rmatches_inliers_path(data, options), '{}_inliers.pkl.gz'.format(image))

def __common_tracks_file(data, image, options):
    return os.path.join(__common_tracks_path(data, options), '{}_common_tracks.json'.format(image))

def __match_visualization_file(data, image_fn, options):
    return os.path.join(__match_visualizations_path(data, options), '{}_match_visualization.png'.format(image_fn))

def __match_matrix_file(data, options):
    match_matrix_path = os.path.join(options['data_folder'], '/'.join(os.path.abspath(data.data_path).split('/')[-2::]))
    return os.path.join(match_matrix_path, 'match_matrix.pkl.gz')

def save_rmatches_outliers(data, image, outliers, options):
    mkdir_p(__rmatches_outliers_path(data, options))
    with gzip.open(__rmatches_outliers_file(data, image, options), 'wb') as fout:
        pickle.dump(outliers, fout)

def save_rmatches_inliers(data, image, inliers, options):
    mkdir_p(__rmatches_inliers_path(data, options))
    with gzip.open(__rmatches_inliers_file(data, image, options), 'wb') as fout:
        pickle.dump(inliers, fout)

def save_common_tracks(data, image, common_tracks, options):
    mkdir_p(__common_tracks_path(data, options))
    with open(__common_tracks_file(data, image, options), 'w') as fout:
        json.dump(common_tracks, fout, sort_keys=True, indent=4, separators=(',', ': '))

def save_match_visualization(data, image_fn, images, options):
    mkdir_p(__match_visualizations_path(data, options))
    if 'cv2-saving' in options and options['cv2-saving']:
        cv2.imwrite(__match_visualization_file(data, image_fn, options), images)
    else:
        plt.rcParams.update({'font.size': 20})
        fig, ax = plt.subplots()
        norm = matplotlib.colors.Normalize(vmin=2.0, vmax=6.0)
        plt.imshow(images, cmap=plt.cm.get_cmap('plasma_r'), norm=norm)
        plt.colorbar(ax=ax, cmap='plasma_r', norm=norm)
        plt.axis('off')
        fig.tight_layout()
        fig.set_size_inches(27, 15)
        
        fig.savefig(__match_visualization_file(data, image_fn, options), bbox_inches='tight')
        plt.close()
        plt.cla()

def load_rmatches_outliers(data, image, options):
    with gzip.open(__rmatches_outliers_file(data, image, options), 'rb') as fin:
        outliers = pickle.load(fin)
    return outliers

def load_rmatches_inliers(data, image, options):
    with gzip.open(__rmatches_inliers_file(data, image, options), 'rb') as fin:
        inliers = pickle.load(fin)
    return inliers

def load_common_tracks(data, image, options):
    with open(__common_tracks_file(data, image, options), 'r') as fin:
        common_tracks = json.load(fin)
    return common_tracks

def load_aam_matches(data):
    with open(os.path.join(data.data_path, 'aam_matches.json'), 'r') as fin:
        aam_matches = json.load(fin)
    return aam_matches

def save_match_matrix(data, match_matrix, options):
    with gzip.open(__match_matrix_file(data, options), 'wb') as fout:
        pickle.dump(match_matrix, fout)

def load_match_matrix(data, options):
    with gzip.open(__match_matrix_file(data, options), 'rb') as fin:
        match_matrix = pickle.load(fin)
    return match_matrix

def _compute_inliers_bearings(b1, b2, T, min_thresh=0.01, max_thresh=0.01):
    R = T[:, :3]
    t = T[:, 3]
    p = pyopengv.triangulation_triangulate(b1, b2, t, R)

    br1 = p.copy()
    br1 /= np.linalg.norm(br1, axis=1)[:, np.newaxis]

    br2 = R.T.dot((p - t).T).T
    br2 /= np.linalg.norm(br2, axis=1)[:, np.newaxis]

    err1 = multiview.vector_angle_many(br1, b1)
    err2 = multiview.vector_angle_many(br2, b2)

    ok1 = err1 < min_thresh
    ok2 = err2 < min_thresh

    nok1 = err1 >= max_thresh
    nok2 = err2 >= max_thresh

    return ok1 * ok2, nok1 + nok2, err1, err2, p

def compute_gt_inliers(data, gt_poses, im1, im2, p1, p2, camera1, camera2, matches, error_inlier_threshold, error_outlier_threshold, debug):
    if len(matches) < 8:
        return np.array([])

    p1_ = p1[matches[:, 0].astype(int)][:, :2].copy()
    p2_ = p2[matches[:, 1].astype(int)][:, :2].copy()
    b1 = camera1.pixel_bearings(p1_)
    b2 = camera2.pixel_bearings(p2_)
   
    R_ = gt_poses['R2'].dot(gt_poses['R1'].T)
    t_ = gt_poses['R1'].dot(-gt_poses['R2'].T.dot(gt_poses['t2']) + gt_poses['R1'].T.dot(gt_poses['t1']))

    T_ = np.empty((3, 4))
    T_[0:3,0:3] = R_.T
    T_[0:3,3] = t_[0:3]

    inliers, outliers, n1, n2, points = _compute_inliers_bearings(b1, b2, T_, \
        error_inlier_threshold, error_outlier_threshold)

    if debug:
        T_o = pyopengv.relative_pose_ransac(b1, b2, "STEWENIUS", \
            1 - np.cos(data.config['robust_matching_threshold']), 1000)
        inliers_o, outliers_o, n1_o, n2_o, points_o = _compute_inliers_bearings(b1, b2, T_o, \
            error_inlier_threshold, error_outlier_threshold)

        print('\t{} - {}  ||  Inliers: {} \tOutliers: {}\t\t\tInliers-Original: {}\tOutliers-Original: {}\t\t\tTotal: {}'.format(im1, im2, len(matches[inliers]), len(matches[outliers]), len(matches[inliers_o]), len(matches[outliers_o]), len(matches)))

    return matches[inliers], matches[outliers], np.array(n1), np.array(n2), points#, dist1, dist2

def get_camera(d, cameras, reconstruction_gt):
    if d['camera'] in cameras:
        camera = cameras[d['camera']]
    else:
        camera = cameras[cameras.keys()[0]] # Pick the first camera

    camera.k1 = 0.0 if camera.k1 is None else camera.k1
    camera.k2 = 0.0 if camera.k2 is None else camera.k2
    camera.k1_prior = 0.0 if camera.k1_prior is None else camera.k1_prior
    camera.k2_prior = 0.0 if camera.k2_prior is None else camera.k2_prior
    camera.focal = 0.85 if camera.focal is None else camera.focal
    camera.focal_prior = 0.85 if camera.focal_prior is None else camera.focal_prior
    return camera

def draw_projections(image, coordinates, colors, display=True):
    height,width,channels = image.shape
    font                   = cv2.FONT_HERSHEY_SIMPLEX
    bottomLeftCornerOfText = (10,height-50)
    fontScale              = 1
    fontColor              = (0,0,255)
    lineType               = 2

    pts_denormalized = features.denormalized_image_coordinates(coordinates, width, height)
    for ii, pt in enumerate(pts_denormalized):
        color = colors[ii%30]
        cv2.circle(image, (int(pt[0]), int(pt[1])), 10 * int(height / 800.0), color, -1)
    if display:
        cv2.putText(image, 'Number of point projections: {}'.format(len(coordinates)), 
            bottomLeftCornerOfText, 
            font, 
            fontScale,
            fontColor,
            lineType)

def compute_matches_using_gt_reconstruction(args):
    data, im1, reconstruction_gt, error_inlier_threshold, error_outlier_threshold, graph, options, debug = \
        args

    im1_rmatches_inliers = {}
    im1_rmatches_outliers = {}
    im1_common_tracks = {}
    colors = [(int(random.random()*255), int(random.random()*255), int(random.random()*255)) for i in xrange(0,30)]

    if data.matches_exists(im1):
        im1_rmatches = data.load_matches(im1)

    cameras = reconstruction_gt.cameras
    d1 = data.load_exif(im1)
    camera1 = get_camera(d1, cameras, reconstruction_gt)
    R1 = reconstruction_gt.shots[im1].pose.get_rotation_matrix()
    t1 = reconstruction_gt.shots[im1].pose.translation
    
    for im2 in im1_rmatches.keys():
        if im2 not in reconstruction_gt.shots.keys():
            continue

        if im2 not in im1_rmatches or len(im1_rmatches[im2]) == 0:
            im1_rmatches_inliers[im2] = []
            continue

        d2 = data.load_exif(im2)
        camera2 = get_camera(d2, cameras, reconstruction_gt)
        R2 = reconstruction_gt.shots[im2].pose.get_rotation_matrix()
        t2 = reconstruction_gt.shots[im2].pose.translation
        gt_poses = {'R1': R1, 't1': t1, 'R2': R2, 't2': t2}

        # symmetric matching
        p1, f1, c1 = data.load_features(im1)
        p2, f2, c2 = data.load_features(im2)

        rmatches_inliers, rmatches_outliers, err1, err2, points = \
            compute_gt_inliers(data, gt_poses, im1, im2, p1, p2, \
                camera1, camera2, im1_rmatches[im2], error_inlier_threshold, error_outlier_threshold, debug)

        im1_rmatches_inliers[im2] = rmatches_inliers
        im1_rmatches_outliers[im2] = rmatches_outliers

        im1_common_tracks[im2] = 0
        inlier_pts_im1 = []
        inlier_pts_im2 = []
        inlier_coordinates = []
        for point in reconstruction_gt.points:
            if len(set(graph[point].keys()).intersection(set([im1,im2]))) == 2:
                point_coordinates = reconstruction_gt.points[point].coordinates
                im1_projection = reconstruction_gt.shots[im1].project(point_coordinates)
                im2_projection = reconstruction_gt.shots[im2].project(point_coordinates)
                if np.sum(np.absolute(im1_projection) < 0.5) == 2 and np.sum(np.absolute(im2_projection) < 0.5) == 2:
                    if np.linalg.norm(graph[point][im1]['feature'] - im1_projection) <= data.config['bundle_outlier_threshold'] and \
                        np.linalg.norm(graph[point][im2]['feature'] - im2_projection) <= data.config['bundle_outlier_threshold']:

                        im1_common_tracks[im2] += 1
                        inlier_pts_im1.append(im1_projection)
                        inlier_pts_im2.append(im2_projection)
                        inlier_coordinates.append(point_coordinates)

        inlier_pts_im1 = np.array(inlier_pts_im1)
        inlier_pts_im2 = np.array(inlier_pts_im2)
        inlier_coordinates = np.array(inlier_coordinates)

        if len(inlier_coordinates) > 0:
            ris = np.where((inlier_coordinates[:,2] >= inlier_coordinates[:,2].mean() - inlier_coordinates[:,2].std()) & (inlier_coordinates[:,2] <= inlier_coordinates[:,2].mean() + inlier_coordinates[:,2].std()))[0]
            
            inlier_pts_im1 = inlier_pts_im1[ris,:]
            inlier_pts_im2 = inlier_pts_im2[ris,:]
            inlier_coordinates = inlier_coordinates[ris,:]

        image1 = cv2.imread(os.path.join(data.data_path + '/images/', im1))
        image2 = cv2.imread(os.path.join(data.data_path + '/images/', im2))
        if len(inlier_pts_im1) > 0:
            draw_projections(image1, np.array(inlier_pts_im1), colors)
            draw_projections(image2, np.array(inlier_pts_im2), colors, display=False)

        if debug:
            print ('\t\t{} / {} : {}'.format(im1, im2, im1_common_tracks[im2]))

        images = np.concatenate((image1,cv2.resize(image2, (image1.shape[1], image1.shape[0]))),axis=1)
        if options['debug']:
            save_match_visualization(data, '{}---{}'.format(im1,im2), images, options)
    save_common_tracks(data, im1, im1_common_tracks, options)
    save_rmatches_inliers(data, im1, im1_rmatches_inliers, options)
    save_rmatches_outliers(data, im1, im1_rmatches_outliers, options)

def calculate_groundtruth_data(datasets, options):
    for d in datasets:
        data = dataset.DataSet(d)
        if not data.reconstruction_exists(options['reconstruction_fn']):
            continue

        images = data.images()
        args = []
        for im in images:
            element = [data, im, data.load_reconstruction(options['reconstruction_fn'])[0], \
                0.01, 0.01, data.load_tracks_graph('tracks.csv'), options, options['debug']]
            args.append(element)

        p = Pool(options['processes'], maxtasksperchild=2)
        if options['processes'] == 1:    
            for arg in args:
                compute_matches_using_gt_reconstruction(arg)
        else:
            p.map(compute_matches_using_gt_reconstruction, args)
        p.close()

def plot_match_matrix(data, im_matches_matrix, images, options):
    fig, ax = plt.subplots()
    im = ax.imshow(im_matches_matrix)

    # We want to show all ticks...
    ax.set_xticks(np.arange(len(images)))
    ax.set_yticks(np.arange(len(images)))
    # ... and label them with the respective list entries
    ax.set_xticklabels(images)
    ax.set_yticklabels(images)

    # Rotate the tick labels and set their alignment.
    plt.setp(ax.get_xticklabels(), rotation=90, ha="right",
             rotation_mode="anchor")

    # Loop over data dimensions and create text annotations.
    for i in range(len(images)):
        for j in range(len(images)):
            text = ax.text(j, i, im_matches_matrix[i, j],
                           ha="center", va="center", color="w", fontsize=4)

    ax.set_title("Image match matrix")
    fig.tight_layout()
    fig.set_size_inches(13.875, 7.875)
    fig.savefig(os.path.join(options['data_folder'], 'match_matrix_{}.png'.format(os.path.abspath(data.data_path).split('/')[-1])))
    plt.close()

def evaluate_rmatches_and_aam(datasets, options):
    pr_baselines = []
    pr_aams = []
    baseline_interps = []
    aam_interps = []
    baseline_aucs = []
    aam_aucs = []
    relevant_precisions = np.linspace(0.0, 1.0, 101)

    for d in datasets:
        match_data = []
        data = dataset.DataSet(d)
        images = data.images()
        mapping = {}
        im_matches_matrix_gt = np.zeros((len(images), len(images))).astype(np.int)

        aam_matches = load_aam_matches(data)
        for ii, im1 in enumerate(sorted(images)):
            if im1 not in mapping:
                mapping[im1] = ii
            if data.matches_exists(im1):
                im1_rmatches = data.load_matches(im1)
                im1_rmatches_inliers = load_rmatches_inliers(data, im1, options)
                im1_common_tracks = load_common_tracks(data, im1, options)
            else:
                continue

            for jj, im2 in enumerate(sorted(images)):
                if im2 not in mapping:
                    mapping[im2] = jj
                if jj <= ii:
                    continue

                if im2 not in im1_rmatches:
                    im2_rmatches = data.load_matches(im2)
                    if im1 not in im2_rmatches:
                        continue
                    else:
                        im1_im2_rmatches = len(im2_rmatches[im1])
                else:
                    im1_im2_rmatches = len(im1_rmatches[im2])


                if im2 not in im1_common_tracks:
                    im2_common_tracks = load_common_tracks(data, im2, options)
                    if im1 not in im2_common_tracks:
                        continue
                    else:
                        im1_im2_common_tracks = im2_common_tracks[im1]
                else:
                    im1_im2_common_tracks = im1_common_tracks[im2]

                match_datum = [im1_im2_rmatches, aam_matches[im1][im2], im1_im2_common_tracks]
                match_data.append(match_datum)
                if im1_im2_common_tracks >= options['image_matching_gt_threshold']:
                    im_matches_matrix_gt[mapping[im1], mapping[im2]] = im1_im2_common_tracks
                    im_matches_matrix_gt[mapping[im2], mapping[im1]] = im1_im2_common_tracks
            
        match_data = np.array(match_data)
        auc_pr_baseline, auc_roc_baseline, pr_baseline, roc_baseline = calculate_dataset_auc(match_data[:,0], (match_data[:,2] > options['image_matching_gt_threshold']).astype(np.int))#, color='blue', ls='dashed', markers=[15, 16, 20])
        auc_pr_aam, auc_roc_aam, pr_aam, roc_aam = calculate_dataset_auc(match_data[:,1], (match_data[:,2] > options['image_matching_gt_threshold']).astype(np.int))#, color='green', ls='dashed', markers=[15, 16, 20])
        
        fig_prs, _ = plot_prs(pr_aam, pr_baseline, auc_pr_aam, auc_pr_baseline, markers=[15, 16, 20], markers_baseline=[15, 16, 20])
        fig_prs.savefig(os.path.join(options['data_folder'], 'rmatches_vs_aam_{}.png'.format(os.path.abspath(data.data_path).split('/')[-1])))
        plt.close()
        save_match_matrix(data, im_matches_matrix_gt, options)
        plot_match_matrix(data, im_matches_matrix_gt, sorted(images), options)
        
        pr_baselines.append(pr_baseline)
        pr_aams.append(pr_aam)
        baseline_interps.append(np.interp(relevant_precisions, pr_baseline[0], pr_baseline[1]))
        aam_interps.append(np.interp(relevant_precisions, pr_aam[0], pr_aam[1]))
        baseline_aucs.append(auc_pr_baseline)
        aam_aucs.append(auc_pr_aam)

    baseline_recalls = np.mean(np.array(baseline_interps), axis=0)
    aam_recalls = np.mean(np.array(aam_interps), axis=0)
    fig = plt.figure()
    plt.rcParams.update({'font.size': 47})
    plt.plot(relevant_precisions, baseline_recalls, color='green', linewidth=10)
    plt.plot(relevant_precisions, aam_recalls, color='red', linewidth=10)
    plt.xlabel('Recall', fontsize=55)
    plt.ylabel('Precision', fontsize=55)
    
    legend = ['Robust Matches: AP=' + str(round(np.mean(np.array(baseline_aucs)),2)), \
        'AAM: AP=' + str(round(np.mean(np.array(aam_aucs)),2)), \
        ]

    plt.legend(legend, loc='lower left', shadow=True, fontsize=50)
    fig.set_size_inches(27, 15)
    fig.tight_layout()
    fig.savefig(os.path.join(options['data_folder'], 'rmatches_aam_precision_recall.png'), bbox_inches='tight')
    plt.close()
    plt.cla()
    
def track_distribution_histograms(data, inlier_tracks, outlier_tracks, options):
    fig, ax = plt.subplots()
    plt.subplot(1, 2, 1)
    plt.title("Track distributions between matching image pairs")
    plt.ylabel('Inlier Count')
    plt.xlabel('Track Length')
    inlier_probabilities, inlier_bins = np.histogram(inlier_tracks, bins=np.max(inlier_tracks) - 1, range=(2, np.max(inlier_tracks) + 1), normed=True)
    width = 0.95 * (inlier_bins[1] - inlier_bins[0])
    center = (inlier_bins[:-1] + inlier_bins[1:]) / 2
    plt.bar(center, inlier_probabilities, align='center', width=width, color='green')

    plt.subplot(1, 2, 2)
    plt.title("Track distributions between non-matching image pairs")
    plt.ylabel('Outlier Count')
    plt.xlabel('Track Length')
    outlier_probabilities, outlier_bins = np.histogram(outlier_tracks, bins=np.max(outlier_tracks) - 1, range=(2, np.max(outlier_tracks) + 1), normed=True)
    width = 0.95 * (outlier_bins[1] - outlier_bins[0])
    center = (outlier_bins[:-1] + outlier_bins[1:]) / 2
    plt.bar(center, outlier_probabilities, align='center', width=width, color='red')

    print ('Inlier sum: {}  Outlier sum:{}'.format(np.sum(inlier_probabilities), np.sum(outlier_probabilities)))
    fig.set_size_inches(27, 15)
    fig.savefig(os.path.join(options['data_folder'], 'track_distributions_{}.png'.format(os.path.abspath(data.data_path).split('/')[-1])))
    plt.cla()
    return inlier_probabilities, inlier_bins.astype(np.int), outlier_probabilities, outlier_bins.astype(np.int)

def load_matches_using_tracks_graph(data, graph):
    im_matches = {}
    im_match_weights = {}
    track_base_weight = 0.5
    images = sorted(data.images())
    
    for im1 in images:
        if im1 not in im_matches:
            im_matches[im1] = {}
            im_match_weights[im1] = {}
        for t in graph[im1].keys():

            for im2 in graph[t].keys():
                if im1 == im2:
                    continue

                if im2 not in im_matches[im1]:
                    im_matches[im1][im2] = []
                    im_match_weights[im1][im2] = []

                im_matches[im1][im2].append([graph[t][im1]['feature'], graph[t][im2]['feature']])
                im_match_weights[im1][im2].append(np.power(track_base_weight, len(graph[t].keys()) - 2))

    return im_matches, im_match_weights

def main():
    parser = ArgumentParser(
        description='test apriltag Python bindings')

    parser.add_argument('-d', '--dataset', help='dataset to scan')
    parser.add_argument('-l', '--opensfm_path', help='opensfm path')

    parser.add_argument('--debug', dest='debug', action='store_true', help='show mask')
    parser.set_defaults(debug=False)
    parser_options = parser.parse_args()

    if not parser_options.opensfm_path in sys.path:
        sys.path.insert(1, parser_options.opensfm_path)
    import opensfm
    from opensfm import commands, features, dataset, matching, reconstruction, types, io, multiview
    global features, matching, dataset, types, multiview

    eth3d_datasets = [
        '/ReliableResectioning/data/opensfm/ETH3D/courtyard/',
        '/ReliableResectioning/data/opensfm/ETH3D/delivery_area/',
        '/ReliableResectioning/data/opensfm/ETH3D/electro/',
        '/ReliableResectioning/data/opensfm/ETH3D/facade/',
        '/ReliableResectioning/data/opensfm/ETH3D/kicker/',
        '/ReliableResectioning/data/opensfm/ETH3D/meadow/',
        '/ReliableResectioning/data/opensfm/ETH3D/exhibition_hall/',
        '/ReliableResectioning/data/opensfm/ETH3D/lecture_room/',
        '/ReliableResectioning/data/opensfm/ETH3D/living_room/',
    ]

    uiuctag_datasets = [
        '/ReliableResectioning/data/opensfm/UIUCTag/ece_floor2_hall/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/ece_floor3_loop/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/ece_floor3_loop_ccw/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/ece_floor3_loop_cw/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/ece_floor5/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/ece_floor5_stairs/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/ece_floor5_wall/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/ece_stairs/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/yeh_day_all/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/yeh_day_atrium/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/yeh_day_backward/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/yeh_day_forward/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/yeh_night_all/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/yeh_night_atrium/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/yeh_night_backward/', 
        '/ReliableResectioning/data/opensfm/UIUCTag/yeh_night_forward/'
    ]

    tanks_and_temples_datasets = [
        '/ReliableResectioning/data/opensfm/TanksAndTemples/Barn/',
        '/ReliableResectioning/data/opensfm/TanksAndTemples/Caterpillar/',
        '/ReliableResectioning/data/opensfm/TanksAndTemples/Church/',
        '/ReliableResectioning/data/opensfm/TanksAndTemples/Courthouse/',
        '/ReliableResectioning/data/opensfm/TanksAndTemples/Ignatius/',
        '/ReliableResectioning/data/opensfm/TanksAndTemples/Meetingroom/',
        '/ReliableResectioning/data/opensfm/TanksAndTemples/Truck/',
    ]

    yan_datasets = [
        '/ReliableResectioning/data/opensfm/Yan/books/',
        '/ReliableResectioning/data/opensfm/Yan/cereal/',
        '/ReliableResectioning/data/opensfm/Yan/cup-original/', #####
        '/ReliableResectioning/data/opensfm/Yan/desk/', ##
        '/ReliableResectioning/data/opensfm/Yan/oats/',
        '/ReliableResectioning/data/opensfm/Yan/street/', ##
    ]

    options = {
        'datasets': 'Yan',
        'plot': 'image-matching-pr',
        'image_matching_gt_threshold': 20,
        'data_folder': 'data/gt-datasets',
        'aggregate': True if parser_options.dataset is None else False,
        'reconstruction_fn': 'reconstruction-supplimental-resectioning_type-local-resectioning_distance_measure-aam-resectioning_parameter-2.0.json',
        'processes': 8,
        'debug': False,
    }

    if options['aggregate']:
        options['fontsize'] = 35
    else:
        options['fontsize'] = 20

    mkdir_p(options['data_folder'])
    if options['datasets'] == 'Yan':
        datasets = yan_datasets
    elif options['datasets'] == 'UIUCTag':
        datasets = uiuctag_datasets
    elif options['datasets'] == 'TanksAndTemples':
        datasets = tanks_and_temples_datasets
    elif options['datasets'] == 'ETH3D':
        datasets = eth3d_datasets
    elif options['datasets'] == 'All':
        datasets = uiuctag_datasets + yan_datasets + tanks_and_temples_datasets

    calculate_groundtruth_data(datasets, options)
    evaluate_rmatches_and_aam(datasets, options)

if __name__ == '__main__':
    main()