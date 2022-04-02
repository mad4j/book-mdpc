#!/bin/bash

LABEL=BUILDINDEXES

SOURCE=examples
INFO_FILE=info.json
OUTPUT_FILE=filmography.tsv

ROOT=`pwd`

# check for root folder

if [ ! -d $ROOT/$SOURCE ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$SOURCE ]; then
    echo "[$LABEL] ERROR: unable to find root folder."
    exit -1
fi

echo "[$LABEL] working on '$ROOT'"

# check needed tools
TMP=`montage -version | grep Version`
if [ -z "$TMP" ]; then
    echo "[$LABEL] ERROR: unable to find needed tool 'montage' from ImageMagick."
    echo "[$LABEL]        install by using: sudo apt-get install imagemagick"
    exit -1
else 
    echo "[$LABEL] using montage: '$TMP'."
fi

# remove old output
find $ROOT -name '*-index.png' -exec rm -f {} \;

# build index pages
for f in $(find $ROOT -name 'volume*' -type d); do
    echo "[$LABEL] working on '$(basename $f)'..."
    montage -geometry +0+0 `find $f -name '*.png'` $f-index.png
done

echo "[$LABEL] ... DONE"