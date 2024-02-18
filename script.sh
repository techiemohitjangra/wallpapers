#!/bin/bash

i=0
# declare -i i=0      # declares i as int

for file in *; do
    if [ -f "$file" ]; then
        if [ "$file" != "script.sh" ]; then
            extension="${file##*.}"
            filename="${file%.*}"
            i=$((i+1))
            mv "$file" "wallpaper$i.$extension"
            echo "echo moved from $file to $i.$extension"
        else
            continue
        fi

    fi
done
