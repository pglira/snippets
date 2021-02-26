#!/usr/bin/env bash

# Compare variable with string
var=foo
if [ "${var}" = foo ]; then
  echo equal
fi

# Alternative
var=bar
if [[ "${var}" == foo ]]; then
  echo equal
fi

# Check if the are not equal
var=bar
if [ "${var}" != foo ]; then
  echo not equal
fi

# Check if a variable is empty
var=
if [[ -z "${var}" ]]; then
  echo variable is empty
fi

# Check if a variable is not empty
var=a
if [[ -n "${var}" ]]; then
  echo variable is not empty
fi

