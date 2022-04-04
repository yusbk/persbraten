#!/usr/bin/env bash

SIZE=$1
FOLDER=${PWD##*/}
SMALLERFOLDER=../$FOLDER-$SIZE
mkdir $SMALLERFOLDER
echo 'Made a new directory to contain the resized images at '$SMALLERFOLDER

for f in `find . -regex ".*\.\(jpg\|gif\|png\|jpeg\|JPG\)"`
do
  echo "Resizing - $f to $SIZE%"
  convert $f -resize $SIZE% $SMALLERFOLDER/$f
done
