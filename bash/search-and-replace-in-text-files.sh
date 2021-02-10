#!/usr/bin/bash

# Search recursively in files
grep 

# Replace text in specific file
sed -i 's/old/new/g' path_to_file

# Replace text recursively in all m files
find . -name '*.m' -print0 | xargs -0 sed -i 's/old/new/g'
