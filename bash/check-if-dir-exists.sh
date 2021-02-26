#!/bin/bash

if [ -d "/tmp" ]; then
  echo "dir exists"
fi

if [ ! -d "/tmpp" ]; then
  echo "dir does not exist"
fi

# short version
[[ -d "/tmp" ]] && echo "dir does exist"
