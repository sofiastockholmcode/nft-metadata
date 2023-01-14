#!/bin/bash

TARGET="$(pwd)/images"

#set -x
for file in "$TARGET"/*; do
    FILENAME="$(basename "$file")"
    ORG_NUMBER=$(echo $FILENAME | awk 'BEGIN { FS="." }  { print $1}')
   re='^[0-9]+$'
   if ! [[ $yournumber =~ $re ]] ; then
   	NEXT_NUMBER=$(($ORG_NUMBER+6000))
   	echo $FILENAME $NEXT_NUMBER
	mv "$TARGET/$FILENAME" "$TARGET/$NEXT_NUMBER.png"
   fi
done
