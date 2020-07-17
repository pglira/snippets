dir=$(dirname "${filepath}")
filename=$(basename -- "${filepath}")
extension="${filename##*.}"
filename="${filename%.*}"
