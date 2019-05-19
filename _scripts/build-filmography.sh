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

# remove old output
rm -f $ROOT/$OUTPUT_FILE

# build table header
echo -e "Title\tYear\tDirector\tGenre\tCountry" >> $ROOT/$OUTPUT_FILE

# build table content
for f in $(find $ROOT/$SOURCE -name $INFO_FILE -type f ); do

    echo "[$LABEL] working on '$(basename $(dirname $f))'..."

    TITLE="`jq -r .Title $f`"
    YEAR="`jq -r .Year $f`"
    GENRE="`jq -r .Genre $f`"
    DIRECTOR="`jq -r .Director $f`"
    COUNTRY="`jq -r .Country $f`"

    echo -e "$TITLE\t$YEAR\t$DIRECTOR\t$GENRE\t$COUNTRY" >> $ROOT/$OUTPUT_FILE
done

echo "[$LABEL] ... DONE"
