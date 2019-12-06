import logging
import numpy as np
from timeit import default_timer as timer

from networkx.algorithms import bipartite

from opensfm import dataset
from opensfm import io
from opensfm import matching

logger = logging.getLogger(__name__)


class Command:
    name = 'create_aam'
    help = "Create ambiguity-adjusted matches from tracks"

    def add_arguments(self, parser):
        parser.add_argument('dataset', help='dataset to process')

    def run(self, args):
        data = dataset.DataSet(args.dataset)

        start = timer()
        features, colors = self.load_features(data)
        features_end = timer()

        aam_num_matches = self.calculate_aam_using_tracks_graph(data)
        data.save_aam_matches(aam_num_matches)
        aam_matches_end = timer()

        aam_thresholded_matches = self.load_thresholded_aam_matches(data, aam_num_matches)
        # import pdb; pdb.set_trace()
        matches_end = timer()
        tracks_graph = matching.create_tracks_graph(features, colors, aam_thresholded_matches, data.config)
        tracks_end = timer()
        data.save_tracks_graph(tracks_graph, 'tracks-aam-{}.csv'.format(data.config['resectioning_parameter']))
        
        end = timer()

        with open(data.profile_log(), 'a') as fout:
            fout.write('create_aam: {0}\n'.format(end - start))

        self.write_report(data,
                          tracks_graph,
                          features_end - start,
                          aam_matches_end - features_end,
                          matches_end - aam_matches_end,
                          tracks_end - matches_end)

    def load_features(self, data):
        logging.info('reading features')
        features = {}
        colors = {}
        for im in data.images():
            p, f, c = data.load_features(im)
            features[im] = p[:, :2]
            colors[im] = c
        return features, colors

    def load_thresholded_aam_matches(self, data, aam_matches):
        matches = {}
        for im1 in data.images():
            try:
                im1_matches = data.load_matches(im1)
            except IOError:
                continue
            for im2 in im1_matches:
                if aam_matches[im1][im2] >= float(data.config['resectioning_parameter']):
                    matches[im1, im2] = im1_matches[im2]
        return matches

    def calculate_aam_using_tracks_graph(self, data):
        graph = data.load_tracks_graph()
        im_matches = {}
        track_base_weight = 0.5
        
        for im1 in sorted(data.images()):
            for im2 in sorted(data.images()):
                if im1 == im2:
                    continue
                if im1 not in im_matches:
                    im_matches[im1] = {}
                if im2 not in im_matches:
                    im_matches[im2] = {}
                im_matches[im1][im2] = 0
                im_matches[im2][im1] = 0

        for im1 in sorted(data.images()):
            if graph.has_node(im1):
                for t in graph[im1].keys():
                    for im2 in graph[t].keys():
                        if im1 == im2:
                            continue
                        im_matches[im1][im2] += np.power(track_base_weight, len(graph[t].keys()) - 2)
                    
        return im_matches

    def write_report(self, data, graph,
                     features_time, aam_time, matches_time, tracks_time):
        tracks, images = matching.tracks_and_images(graph)
        image_graph = bipartite.weighted_projected_graph(graph, images)
        view_graph = []
        for im1 in data.images():
            for im2 in data.images():
                if im1 in image_graph and im2 in image_graph[im1]:
                    weight = image_graph[im1][im2]['weight']
                    view_graph.append((im1, im2, weight))

        report = {
            "wall_times": {
                "load_features": features_time,
                "calculate_aam": aam_time,
                "load_matches": matches_time,
                "compute_tracks": tracks_time,
            },
            "wall_time": features_time + matches_time + tracks_time,
            "num_images": len(images),
            "num_tracks": len(tracks),
            "view_graph": view_graph
        }
        data.save_report(io.json_dumps(report), 'tracks.json')
