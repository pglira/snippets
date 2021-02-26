#!/bin/bash

prm=$(yad --width=800 --form --field=target-dir "/tmp" --field=file "file.dat")

IFS="|"
read -r -a prm_array <<< "$prm"

target_dir=${prm_array[0]}
file=${prm_array[1]}

echo "target-dir=${target_dir}"
echo "file=${file}"