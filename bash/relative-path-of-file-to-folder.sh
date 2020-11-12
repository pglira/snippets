#/bin/bash

base_dir=~
file=/tmp/file.txt

relative_path_to_file=$(realpath --relative-to="${base_dir}" "${file}")