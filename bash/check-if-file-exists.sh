#!/bin/bash

if [ -f "/path/to/file" ]; then
  echo "file exists"
fi

if [ ! -f "/path/to/file" ]; then
  echo "file does not exist"
fi
