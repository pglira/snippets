#!/bin/bash

CMD=ls

# Option 1
if ${CMD}; then
  echo "no error"
else
  echo "error"
fi

# Option 2
${CMD}
if [ $? -ne 0 ]; then
  echo "error"
else
  echo "no error"
fi
