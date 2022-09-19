#! /usr/bin/env python
import getopt
import os.path
import sys


def parse_samples(fname, sep='\t'):
    fname_mapping = dict()

    with open(file=fname, mode='r') as fin:
        next(fin)
        for line in fin:
            cols = line.strip().split(sep)
            fname_mapping[cols[1]] = cols[0]
            fname_mapping[cols[2]] = cols[0]
    return fname_mapping


def rename_files(files_mapping, file_list, input_dir):
    for f in file_list:
        tmp_s = os.path.join(input_dir, f)
        tmp_d = '{f}.fastq.gz'.format(f=os.path.join(input_dir, files_mapping[f]))
        os.rename(src=tmp_s, dst=tmp_d)


def main(argv):
    program_name = os.path.basename(argv[0])
    usage_message = 'USAGE: {p} -s <samples_metadata> -i <input_directory> '.format(p=program_name)

    if len(argv) == 5:
        # Extract options and values
        try:
            opts, args = getopt.getopt(argv[1:], "hs:i:", ["samples_metadata=", "input_directory="])
        except getopt.GetoptError:
            print(usage_message)
            sys.exit(2)

        # Process option and values
        samples_metadata = ''
        input_directory = ''
        sample_files = None

        for opt, arg in opts:
            if opt == '-h':
                print(usage_message)
                sys.exit()
            elif opt in ("-s", "--samples_metadata"):
                samples_metadata = arg
            elif opt in ("-i", "--input_directory"):
                input_directory = arg
                sample_files = [f for f in os.listdir(input_directory) if f.endswith('fastq.gz')]

        # Extract samples mapping names
        samples_mapping = parse_samples(fname=samples_metadata)

        # Rename files
        rename_files(files_mapping=samples_mapping, file_list=sample_files, input_dir=input_directory)

    else:
        print(usage_message)


if __name__ == '__main__':
    main(argv=sys.argv)
