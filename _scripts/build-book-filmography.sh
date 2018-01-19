#!/bin/bash

SOURCE=examples/volume1
INFO_FILE=info.json
OUTPUT_FILE=filmography.adoc


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

# build table header
#echo -e "Title\tYear\tDirector\tGenre\tCountry" >> $ROOT/$OUTPUT_FILE


# build table content
for f in $(find $ROOT/$SOURCE -name $INFO_FILE -type f ); do

    echo "[BUIDFILMOGRAPHY] working on '$(basename $(dirname $f))'..."

    TITLE="`jq -r .Title $f`"
    YEAR="`jq -r .Year $f`"
    GENRE="`jq -r .Genre $f`"
    DIRECTOR="`jq -r .Director $f`"
    COUNTRY="`jq -r .Country $f`"
    PLOT="`jq -r .Plot $f`"

    echo -e "=== $TITLE\n" >> $ROOT/$OUTPUT_FILE
    echo -e "di $DIRECTOR\n" >> $ROOT/$OUTPUT_FILE
    echo -e "$GENRE\n" >> $ROOT/$OUTPUT_FILE
    echo -e "($YEAR) $COUNTRY\n" >> $ROOT/$OUTPUT_FILE
    echo -e "$\n" >> $ROOT/$OUTPUT_FILE
done

echo "[BUIDFILMOGRAPHY] ... DONE"
