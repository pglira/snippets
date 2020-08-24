#!/usr/bin/bash

# Source: https://unix.stackexchange.com/a/163716
beep() {
  ( \speaker-test --frequency $1 --test sine )&
  pid=$!
  \sleep 0.${2}s
  \kill -9 $pid
}

beep 400 200 > /dev/null 2>&1
