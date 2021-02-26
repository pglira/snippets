#!/usr/bin/env bash

# Simplest case
pdal translate testdata/G111.las outputs/G111.pcd

# Specify reader
pdal translate testdata/G112.xyz outputs/G112.laz --reader text