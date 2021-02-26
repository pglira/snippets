#!/bin/bash

filepath="/tmp/dir1/dir2/file.sh"

dir=$(dirname "${filepath}")
filename_without_dir=$(basename -- "${filepath}")
extension="${filename_without_dir##*.}"
filename_without_extension="${filename_without_dir%.*}"

echo "filepath = ${filepath}"
echo "dir = ${dir}"
echo "filename_without_dir = ${filename_without_dir}"
echo "extension = ${extension}"
echo "filename_without_extension = ${filename_without_extension}"
