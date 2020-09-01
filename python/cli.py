import argparse
import os
import sys


def main(args_in):
    print('Start!')
    args = parse_args(args_in)
    print('Finished!')


def parse_args(args_in):
    def path_to_file(input_string):
        path = input_string
        if not os.path.isfile(path):
            msg = 'File "{}" not found!'.format(input_string)
            raise argparse.ArgumentTypeError(msg)
        return path

    def path_to_dir(input_string):
        path = input_string
        if not os.path.isdir(path):
            msg = 'Directory "{}" not found!'.format(input_string)
            raise argparse.ArgumentTypeError(msg)
        return path

    parser = argparse.ArgumentParser()
    parser.add_argument('-f', '--file', help='Path to file', dest='file', required=True,
                        type=path_to_file)
    parser.add_argument('-d', '--dir', help='Path to directory', dest='dir', required=True,
                        type=path_to_dir)
    parser.add_argument('-i', '--integer', help='An optional integer', dest='integer',
                        required=False, type=int, default=100)
    parser.add_argument('-l', '--float', help='An optional float', dest='float',
                        required=False, type=float, default=1.234)
    args = parser.parse_args(args_in)

    return args


if __name__ == '__main__':  # if called directly
    main(sys.argv[1:])  # pass command line arguments to main function
