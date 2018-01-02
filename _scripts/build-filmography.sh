#!/bin/bash

SOURCE=examples
INFO_FILE=info.json
OUTPUT_FILE=filmography.csv


ROOT=`pwd`

# check for root folder

if [ ! -d $ROOT/$SOURCE ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$SOURCE ]; then
    echo "[BUIDFILMOGRAPHY] ERROR: unable to find root folder."
    exit -1
fi

echo "[BUIDFILMOGRAPHY] working on '$ROOT'"

# remove old output
rm -f $ROOT/$OUTPUT_FILE

# find all info files
LIST=`find $ROOT/$SOURCE -name $INFO_FILE`

for f in $(find $ROOT/$SOURCE -name $INFO_FILE -type f ); do

    echo "[BUIDFILMOGRAPHY] working on '$(basename $(dirname $f))'..."

    TITLE="`jq -r .Title $f`"
    YEAR="`jq -r .Year $f`"
    GENRE="`jq -r .Genre $f`"

    echo -e "$TITLE\t$YEAR\t$GENRE" >> $ROOT/$OUTPUT_FILE
done