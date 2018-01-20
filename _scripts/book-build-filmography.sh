#!/bin/bash

LABEL=BUILDFILMOGRAPHY

SOURCE=examples
OUTPUT=assets/docs/contents

INFO_FILE=info.json

ROOT=`pwd`


# check for root folder

if [ ! -d $ROOT/$SOURCE ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$SOURCE ]; then
    echo "[$LABEL] ERROR: unable to find root folder."
    exit -1
fi

echo "[$LABEL] working on '$(basename $ROOT)'"

# create output folder, if needed
mkdir -p $ROOT/$OUTPUT/

for d in $(find $ROOT/$SOURCE -mindepth 1 -maxdepth 1 -type d); do

    echo -e
    echo "[$LABEL] working on $(basename $d)..."

    # create new ooutput file
    DOCFILE=$ROOT/$OUTPUT/$(basename $d)-filmography.adoc
    rm -f $DOCFILE
    echo -e > $DOCFILE

    # build table content
    for f in $(find $d -name $INFO_FILE -type f ); do

        echo "[$LABEL] working on '$(basename $(dirname $f))'..."

        TITLE="`jq -r .Title $f`"
        YEAR="`jq -r .Year $f`"
        GENRE="`jq -r .Genre $f`"
        DIRECTOR="`jq -r .Director $f`"
        COUNTRY="`jq -r .Country $f`"
        PLOT="`jq -r .Plot $f`"

        echo -e "=== $TITLE\n" >> $DOCFILE
        echo -e "di $DIRECTOR\n" >> $DOCFILE
        echo -e "$GENRE\n" >> $DOCFILE
        echo -e "($YEAR) $COUNTRY\n" >> $DOCFILE
        echo -e "$PLOT\n" >> $DOCFILE
    done
done

echo "[$LABEL] ... DONE"
