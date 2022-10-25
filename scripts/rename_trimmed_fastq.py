#! /usr/bin/env python
import getopt
import os
import sys


def main(argv):
    program_name = os.path.basename(argv[0])
    usage_message = 'USAGE: {p} -i <input_directory> '.format(p=program_name)

    if len(argv) == 3:
        # Extract options and values
        try:
            opts, args = getopt.getopt(argv[1:], "hi:", ["input_directory="])
        except getopt.GetoptError:
            print(usage_message)
            sys.exit(2)

        # Process option and values
        input_directory = ''
        sample_files = None

        for opt, arg in opts:
            if opt == '-h':
                print(usage_message)
                sys.exit()
            elif opt in ("-i", "--input_directory"):
                input_directory = arg
                sample_files = [f for f in os.listdir(input_directory) if f.endswith('fq.gz')]

        # Rename files
        rename_files(file_list=sample_files, input_dir=input_directory)

    else:
        print(usage_message)


def rename_files(file_list, input_dir):
    for f in file_list:
        tmp_s = os.path.join(input_dir, f)
        new_name = '_'.join(f.split('.')[0].split('_')[:-2]).replace('_L1_', '_L001_').replace('_L2_', '_L002_')
        tmp_d = '{f}_001.fastq.gz'.format(f=os.path.join(input_dir, new_name))
        os.rename(src=tmp_s, dst=tmp_d)


if __name__ == '__main__':
    main(argv=sys.argv)
