#!/bin/bash

path_to_folders=/path/to/folders

cd ${path_to_folders}

for dir in */
do
    echo ${dir}
done
