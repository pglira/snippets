#!/bin/bash

for file in ./*.cpp; do

    echo "Compile ${file}"

    filewext=$(basename -- "${file}")
    filewext="${file%.*}"

    g++ -o ${filewext} ${file}

done
