#!/bin/bash

TARGET="$(pwd)/json"

#set -x
echo "["
for file in "$TARGET"/*; do
    FILENAME="$(basename "$file")"
    cat $TARGET/$FILENAME
	printf ","
echo
done
echo "]"
