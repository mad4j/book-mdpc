#!/bin/bash

LABEL=BUILDPAGES

SOURCE=examples
INFO_FILE=info.json
BASE=assets/docs
OUTPUT=$BASE/contents

ROOT=`pwd`

# check for root folder

if [ ! -d $ROOT/$SOURCE ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$SOURCE ]; then
    echo "[$LABEL] ERROR: unable to find root folder."
    exit -1
fi

echo "[$LABEL] root folder '$(basename $ROOT)'..."

# create output folder, if needed
mkdir -p $ROOT/$OUTPUT/

for d in $(find $ROOT/$SOURCE -mindepth 1 -maxdepth 1 -type d); do
    echo -e
    echo "[$LABEL] working on $(basename $d)..."

    # create a new file

    DOCFILE=$ROOT/$OUTPUT/$(basename $d)-pages.adoc
    rm -f $DOCFILE
    echo -e > $DOCFILE

    for s in $(find $d -mindepth 1 -maxdepth 1 -type d); do
        echo "[$LABEL] processing '$(basename $s)' ..."

        f=$s/info.json
        image=$(ls $s/*.png)
        code=$(ls $s/*.pde)

        TITLE="`jq -r .Title $f`"
        YEAR="`jq -r .Year $f`"
        GENRE="`jq -r .Genre $f`"
        DIRECTOR="`jq -r .Director $f`"
        COUNTRY="`jq -r .Country $f`"
        PLOT="`jq -r .Plot $f`"

        echo -e "\n=== $TITLE" >> $DOCFILE
        echo -e "\n- - -" >> $DOCFILE
        echo -e "\nimage::$BASE/$(basename $image)[align=\"center\"]" >> $DOCFILE
        echo -e "\n\n<<<" >> $DOCFILE
#       echo -e "\n.$(basename $code)" >> $DOCFILE
        echo -e "\n[source,java]" >> $DOCFILE
        echo -e "\n----" >> $DOCFILE
        echo -e "\ninclude::$BASE/$(basename $code)[]" >> $DOCFILE
        echo -e "\n----" >> $DOCFILE
        echo -e "\n\n<<<" >> $DOCFILE

    done
done

echo "[$LABEL] ... DONE"
