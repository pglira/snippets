#!/usr/bin/env bash

# Read input
read -e -p "Enter variable: " var
echo "var=${var}"

# Read input with default value
default_value=foo
read -e -p "Enter variable [${default_value}]: " var
var=${var:-${default_value}}
echo "var=${var}"
