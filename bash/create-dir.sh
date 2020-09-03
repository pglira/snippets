#!/usr/bin/env bash

# Leads to error if path already exists or if intermediate dir do not exist
mkdir ~/path/to/some/dir

# Creates also intermediate dirs and returns no error if dir already exists
mkdir -p ~/path/to/some/dir
