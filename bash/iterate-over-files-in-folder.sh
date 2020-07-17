#!/bin/bash

path_to_files=/path/to/folder/with/files/*.txt

for file in ${path_to_files}
do
    cmd ${file}
done
