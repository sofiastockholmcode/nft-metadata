#!/bin/bash

TARGET="$(pwd)/json"

set -x
NUM=1
for file in "$TARGET"/*; do
    FILENAME="$(basename "$file")"
    #cat $TARGET/$FILENAME
    echo "current number is $NUM"
    NEXT_NUMBER=$(($NUM+6000))
    sed -i '' "s/#$NUM/#$NEXT_NUMBER/g" $TARGET/$FILENAME
    sed -i '' "s/NewUriToReplace\/$NUM/NewUriToReplace\/$NEXT_NUMBER/g" $TARGET/$FILENAME
    sed -i '' "s/\"edition\":\ $NUM/\"edition\":\ $NEXT_NUMBER/g" $TARGET/$FILENAME
    NUM=$((NUM+1))
done
