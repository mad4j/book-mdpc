#!/bin/bash

ROOT=`pwd`
TEMPLATES=templates
TARGET=examples

INFO_FILE=info.json
TEMPLATE_FILE=README.md.template
OUTPUT_FILE=README.md

echo "[BUILDPAGES] retrieve movie info from IMDB site ..."
echo "          use -c or --cleanup to remove obsolete files"

# check for root folder

if [ ! -d $ROOT/$TARGET ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$TARGET ]; then
    echo "[BUILDPAGES] ERROR: unable to find root folder."
    exit -1
fi

# check for dependencies
if [ -z "`jq --version`" ]; then
    echo "[BUILDPAGES] ERROR: missing required tool: jq."
    exit -1
fi

# check for command line params
for p in "$@"; do
    case $p in
        -c|--cleanup)
        echo "[BUILDPAGES] cleaning existing info files ..."
        find $ROOT/examples -name $OUTPUT_FILE -delete
        shift
        ;;
    esac
done

# retrieve info form IMDB size
for f in $(find $ROOT/$TARGET -name $INFO_FILE); do

    TMP=`dirname $f`

    cd $TMP

    # do not overwrite existing readme file
    if [ -f $OUTPUT_FILE ]; then
#        echo "[BUILDPAGES] skipping `basename $TMP` ..."
        continue
    fi


    TITLE="`jq -r .Title $INFO_FILE`"
    YEAR="`jq -r .Year $INFO_FILE`"
    GENRE="`jq -r .Genre $INFO_FILE`"
    URL="https://www.imdb.com/title/`jq -r .imdbID $INFO_FILE`/"
    DESCRIPTION="`jq -r .Plot $INFO_FILE`"

    SNIPPET=`ls *.pde`
    POSTER=`ls *.png`

    echo "[BUILDPAGES] processing `basename $TMP` ..."
    
    sed -e "s/##TITLE##/$TITLE/" \
      -e "s/##YEAR##/$YEAR/" \
      -e "s/##GENRE##/$GENRE/" \
      -e "s/##DESCRIPTION##/$DESCRIPTION/" \
      -e "s/##POSTER##/$POSTER/" \
      -e "s/##URL##/${URL//\//\\/}/" \
      -e "/##SNIPPET##/{
        r$SNIPPET
        a
        d
      }" $ROOT/$TEMPLATES/$TEMPLATE_FILE > $OUTPUT_FILE
    
    cd - > /dev/null
done

COUNT=`find $ROOT/$TARGET -name $OUTPUT_FILE | wc -l`
echo "[BUILDPAGES] $COUNT readme files ($OUTPUT_FILE) in local repository ..."

echo "... DONE"