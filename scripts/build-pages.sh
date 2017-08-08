#!/bin/bash

ROOT=`pwd`
TEMPLATES=templates
TARGET=examples

INFO_FILE=info.json
TEMPLATE_FILE=README.md.template
OUTPUT_FILE=README.md

echo "[BUILDPAGES] building README files form downloaded movie infomration ..."
echo "             use -c or --cleanup to remove obsolete files"

# check for root folder

if [ ! -d $ROOT/$TARGET ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$TARGET ]; then
    echo "[BUILDPAGES] ERROR: unable to find root folder."
    exit -1
fi

echo "[BUILDPAGES] working on '$ROOT'"


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
        echo "[BUILDPAGES] skipping `basename $TMP` on '$TMP' ..."
        continue
    fi


    # retrive page info form downloaded json file
    TITLE="`jq -r .Title $INFO_FILE`"
    YEAR="`jq -r .Year $INFO_FILE`"
    GENRE="`jq -r .Genre $INFO_FILE`"
    URL="https://www.imdb.com/title/`jq -r .imdbID $INFO_FILE`/"
    DESCRIPTION="`jq -r .Plot $INFO_FILE`"

    # look for projec files
    SNIPPET=`ls *.pde`
    POSTER=`ls *.png`

    # translate labels
    GENRE="${GENRE/Adventure/Avventura}"
    GENRE="${GENRE/Animation/Animazione}"
    GENRE="${GENRE/Biography/Biografico}"
    GENRE="${GENRE/Comedy/Commedia}"
    GENRE="${GENRE/Crime/Poliziesco}"
    GENRE="${GENRE/Drama/Drammatico}"
    GENRE="${GENRE/Romance/Sentimentale}"
    GENRE="${GENRE/Sci-Fi/Fantascienza}"
    GENRE="${GENRE/War/Guerra}"
    GENRE="${GENRE/Family/Ragazzi}"
    GENRE="${GENRE/Thriller/Giallo}"
    GENRE="${GENRE/Horror/Orrore}"
    GENRE="${GENRE/Fantasy/Fantascico}"  
    GENRE="${GENRE/Action/Azione}"
    GENRE="${GENRE/History/Storico}"
    GENRE="${GENRE/Sport/Sportivo}"
    GENRE="${GENRE/Erotic/Erotico}"
    GENRE="${GENRE/Mistery/Mistero}" 

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