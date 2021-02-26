#!/bin/bash

# Crop single file
pdal pipeline crop-pipeline.json

# Crop multiple files to multiple files
cd ./testdata
for lasfile in G11*.las
do
    echo "Process \"${lasfile}\""
    file_without_ext="${lasfile%.*}"
    outfile=../outputs/${file_without_ext}_cropped.las
    pdal pipeline ../crop-pipeline.json \
      --readers.las.filename=${lasfile} \
      --writers.las.filename=${outfile}
done
cd ..

# Crop multiple files to single file
pdal pipeline crop-and-merge-pipeline.json