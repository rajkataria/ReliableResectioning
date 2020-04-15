import csv
import datetime
import glob
import json
import os
import sys

from argparse import ArgumentParser

def get_results(root_directory, experiments):
    results = {}
    metadata = {}
    datasets = glob.glob(root_directory + '/*/*/')
    for d in datasets:
        # if 'ETH3D' not in d or 'botanical_garden' not in d:
        #     continue
        # if 'DuplicateStructures' in d or 'Disambiguation' in d:
        #     continue
        dataset_name = d.split('/')[-3]
        results_folder = os.path.join(d, 'results')
        ate_results_fn = '{}/ate_results.json'.format(results_folder)
        rpe_results_fn = '{}/rpe_results.json'.format(results_folder)
        reconstruction_results_fn = '{}/reconstruction_results.json'.format(results_folder)

        if os.path.exists(reconstruction_results_fn):
            with open(reconstruction_results_fn, 'r') as fin:
                data = json.load(fin)
                for exp in experiments:
                    if exp not in data:
                        print ('\tReconstruction Results  --  Dataset: "{}" missing results for experiment: "{}"'.format(d.split('/')[-2], exp))
                        continue
                    sequence_name = data[exp]['dataset']
                    r_key = '{}---{}'.format(dataset_name, sequence_name)
                    if r_key not in results:
                        results[r_key] = {}
                        metadata[r_key] = {
                            'images': data[exp]["total images in dataset"],
                            'dataset': dataset_name
                        }

                    if exp not in results[r_key]:
                         results[r_key][exp] = {}

                    results[r_key][exp].update({ \
                        'points triangulated': data[exp]['points triangulated '],
                        'registered images': data[exp]['registered images'],
                        'time': data[exp]['time']
                        })

        if os.path.exists(ate_results_fn):
            with open(ate_results_fn, 'r') as fin:
                data = json.load(fin)
                for exp in experiments:
                    if exp not in data:
                        print ('\tATE Results  --  Dataset: "{}" missing results for experiment: "{}"'.format(d.split('/')[-2], exp))
                        continue
                    sequence_name = data[exp]['trajectory']
                    r_key = '{}---{}'.format(dataset_name, sequence_name)
                    if r_key not in results:
                        results[r_key] = {}    

                    results[r_key][exp].update({ \
                        'sequence': sequence_name,
                        'ATE dm': data[exp]['images aligned %f dm'],
                        'ATE cm': data[exp]['images aligned %f cm'],
                        'ATE m': data[exp]['images aligned %f m'],
                        'images': data[exp]['total images %f'],
                        })

        if os.path.exists(rpe_results_fn):
            with open(rpe_results_fn, 'r') as fin:
                data = json.load(fin)
                for exp in experiments:
                    if exp not in data:
                        print ('\tRPE Results  --  Dataset: "{}" missing results for experiment: "{}"'.format(d.split('/')[-2], exp))
                        continue
                    sequence_name = data[exp]['trajectory']
                    r_key = '{}---{}'.format(dataset_name, sequence_name)
                    if r_key not in results:
                        results[r_key] = {}    

                    results[r_key][exp].update({ \
                        # 'sequence': sequence_name,
                        'RPE < 0.5 deg': data[exp]['error < 0.5 deg'] if 'error < 0.5 deg' in data[exp] else 0,
                        'RPE < 1.0 deg': data[exp]['error < 1.0 deg'] if 'error < 1.0 deg' in data[exp] else 0,
                        'RPE < 2.0 deg': data[exp]['error < 2.0 deg'] if 'error < 2.0 deg' in data[exp] else 0,
                        'RPE < 5.0 deg': data[exp]['error < 5.0 deg'] if 'error < 5.0 deg' in data[exp] else 0,
                        'RPE < 10 deg': data[exp]['error < 10.0 deg'] if 'error < 10.0 deg' in data[exp] else 0,
                        'RPE >= 10.0 deg': data[exp]['error >= 10.0 deg'] if 'error >= 10.0 deg' in data[exp] else 0,
                        'rotational error mean (deg)': data[exp]['rotational error mean (deg)'],
                        'total pairs': data[exp]['total pairs'],
                        })

    # print results
    # import sys; sys.exit(1)
    return metadata, results

def output_csv(metadata, experiments, results):
    with open('results.csv', mode='w') as csv_file:
        fieldnames = ['Dataset', 'Sequence', 'Images']
        for key in sorted([experiments[e]['key'] for e in experiments]):
            fieldnames.extend([
                'Cameras Registered - {}'.format(key), \
                'Points Triangulated - {}'.format(key), \
                'ATE (cm) - {}'.format(key), \
                'ATE (dm) - {}'.format(key), \
                'ATE (m) - {}'.format(key), \
                # 'RPE < 0.5 deg - {}'.format(key), \
                # 'RPE < 1.0 deg - {}'.format(key), \
                # 'RPE < 2.0 deg - {}'.format(key), \
                # 'RPE < 5.0 deg - {}'.format(key), \
                # 'RPE < 10.0 deg - {}'.format(key), \
                # 'RPE >= 10.0 deg - {}'.format(key), \
                'Mean RPE (deg) - {}'.format(key), \
                # 'Time - {}'.format(key), \
                # 'Visual Inspection - {}'.format(key)
            ])

        writer = csv.DictWriter(csv_file, fieldnames=fieldnames, delimiter=',', quotechar='"', quoting=csv.QUOTE_MINIMAL)
        writer.writeheader()
        for r_key in sorted(results.keys()):
            sequence_name = r_key.split('---')[-1]
            row = {
                'Dataset': str(metadata[r_key]['dataset']),
                'Sequence': str(sequence_name),
                'Images': str(metadata[r_key]['images'])
            }

            for exp in results[r_key]:
                row.update({
                    'Cameras Registered - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['registered images']),
                    'Points Triangulated - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['points triangulated']),
                    'ATE (cm) - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['ATE cm']) if 'ATE cm' in results[r_key][exp] else 'X',
                    'ATE (dm) - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['ATE dm']) if 'ATE dm' in results[r_key][exp] else 'X',
                    'ATE (m) - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['ATE m']) if 'ATE m' in results[r_key][exp] else 'X',
                    # 'RPE < 0.5 deg - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['RPE < 0.5 deg']) if 'RPE < 0.5 deg' in results[r_key][exp] else 'X',
                    # 'RPE < 1.0 deg - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['RPE < 1.0 deg']) if 'RPE < 1.0 deg' in results[r_key][exp] else 'X',
                    # 'RPE < 2.0 deg - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['RPE < 2.0 deg']) if 'RPE < 2.0 deg' in results[r_key][exp] else 'X',
                    # 'RPE < 5.0 deg - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['RPE < 5.0 deg']) if 'RPE < 5.0 deg' in results[r_key][exp] else 'X',
                    # 'RPE < 10.0 deg - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['RPE < 10.0 deg']) if 'RPE < 10.0 deg' in results[r_key][exp] else 'X',
                    # 'RPE >= 10.0 deg - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['RPE >= 10.0 deg']) if 'RPE >= 10.0 deg' in results[r_key][exp] else 'X',
                    'Mean RPE (deg) - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['rotational error mean (deg)']) if 'rotational error mean (deg)' in results[r_key][exp] else 'X',
                    # 'Time - {}'.format(experiments[exp]['key']): str(results[r_key][exp]['time']),
                    # 'Visual Inspection - {}'.format(experiments[exp]['key']): str("-")
                })
            writer.writerow(row)

        descriptions = {}
        for exp in experiments:
            descriptions[experiments[exp]['key']] = experiments[exp]['desc']
        writer.writerow({'Dataset': json.dumps(descriptions, sort_keys=True, indent=4, separators=(',', ': '))})

def main(argv):
    parser = ArgumentParser(description='')
    parser.add_argument('-r', '--root_directory', help='')
  
    parser_options = parser.parse_args()

    experiments = {
        'supplimental-resectioning_type-original-resectioning_distance_measure-rmatches-resectioning_parameter-NA': \
            {'key': 1, 'desc': 'Baseline'},
        'supplimental-resectioning_type-local-resectioning_distance_measure-rmatches-resectioning_parameter-2.0': \
            {'key': 2, 'desc': 'Baseline + colmap resectioning'},
        'supplimental-resectioning_type-local-resectioning_distance_measure-aam-resectioning_parameter-2.0': \
            {'key': 3, 'desc': 'MDS + colmap resectioning + 6-14 @ 15%'},
    }
    metadata, results = get_results(parser_options.root_directory, experiments)
    output_csv(metadata, experiments, results)

if __name__ == '__main__':
    main(sys.argv)
