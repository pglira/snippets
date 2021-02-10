#!/usr/bin/env bash

# Create dsm
# The output tif file contains multiple bands:
# band 1: min
# band 2: max
# band 3: mean
# band 4: idw
# band 5: count
# band 6: std
pdal pipeline dsm-pipeline.json

# Use gdaldem (not part of pdal) to generate a shading of the idw band (band 4)
gdaldem hillshade ./outputs/G111_dsm.tif \
  ./outputs/G111_shd.tif \
  -z 1.0 -s 1.0 -az 315.0 -alt 45.0 \
  -of GTiff \
  -b 4

# Substitute filenames in pipeline file
pdal pipeline dsm-pipeline.json \
  --readers.las.filename=./testdata/G112.las \
  --writers.gdal.filename=./outputs/G112_dsm.tif

# Iterate over multiple files with substitution
for lasfile in ./testdata/G11*.las
do
    echo "Process \"${lasfile}\""
    file_without_ext="${lasfile%.*}"
    dsmfile=${file_without_ext}.tif
    dsmshdfile=${file_without_ext}_shd.tif
    pdal pipeline dsm-pipeline.json \
      --readers.las.filename=${lasfile} \
      --writers.gdal.filename=${dsmfile}
    gdaldem hillshade -b 4 ${dsmfile} ${dsmshdfile}
done
