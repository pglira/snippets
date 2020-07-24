#!/bin/bash

read -p "Are you sure? " -n 1 -r
echo # new line
if [[ $REPLY =~ ^[Yy]$ ]]
then
    echo "do dangerous stuff"
fi
