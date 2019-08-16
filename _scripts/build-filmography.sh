#!/bin/bash

LABEL=BUILDFILMOGRAPHY

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
TMP=`jq --version`
if [ -z "$TMP" ]; then
    echo "[$LABEL] ERROR: unable to find needed tool 'jq'."
    exit -1
else 
    echo "[$LABEL] using jq: '$TMP'."
fi

# remove old output
rm -f $ROOT/$OUTPUT_FILE

# build table header
echo -e "Title\tYear\tDirector\tGenre\tCountry\tRating" >> $ROOT/$OUTPUT_FILE

# build table content
for f in $(find $ROOT/$SOURCE -name $INFO_FILE -type f ); do
    echo "[$LABEL] working on '$(basename $(dirname $f))'..."
    jq -r '"\(.Title)\t\(.Year)\t\(.Director)\t\(.Genre)\t\(.Country)\t\(.imdbRating)"' $f >> $ROOT/$OUTPUT_FILE
done

echo "[$LABEL] ... DONE"
