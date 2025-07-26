#!/usr/bin/env bash

# i=0
declare -i i=0      # declares i as int

for file in *;
do
    if [[ -f "$file" ]]; then
        if [[ "$file" == "script.sh" ]] || [[ "$file" == "README.md" ]]; then
            continue
        else
            extension="${file##*.}"
            filename="${file%.*}"
            i=$((i+1))
            mv "$file" "wallpaper$i.$extension"
            echo "echo moved from $file to $i.$extension"
        fi

    fi
done
