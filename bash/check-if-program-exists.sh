#!/bin/bash

command=grep

if ! command -v ${command} &> /dev/null
then
    echo "${command} could not be found!"
    exit 1
fi