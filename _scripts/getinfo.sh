#!/bin/bash

ROOT=`pwd`

INFO_FILE=info.json
ID_FILE=imdb-id

echo "[GETINFO] retrieve movie info from IMDB site ..."
echo "          use -c or --cleanup to remove obsolete files"

# check for root folder

if [ ! -d $ROOT/examples ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/examples ]; then
    echo "[GETINFO] ERROR: unable to find root folder."
    exit -1
fi

# check for dependencies
if [ -z "`curl --version`" ]; then
    echo "[GETINFO] ERROR: missing required tool: curl."
    exit -1
fi

# check for dependencies
if [ -z "`jq --version`" ]; then
    echo "[GETINFO] ERROR: missing required tool: jq."
    exit -1
fi

# check for command line params
for p in "$@"; do
    case $p in
        -c|--cleanup)
        echo "[GETINFO] cleaning existing info files ..."
        find $ROOT -name $INFO_FILE -delete
        shift
        ;;
    esac
done

# retrieve info form IMDB size
for f in $(find $ROOT -name $ID_FILE); do

    TMP=`dirname $f`

    cd $TMP

    # do not overwrite existing info file
    if [ -f $INFO_FILE ]; then
        echo "[GETINFO] skipping `basename $TMP` ..."
        continue
    fi

    ID=`cat $ID_FILE`
    echo "[GETINFO] retriving info for `basename $TMP` with id:$ID ..."
    curl -s http://www.omdbapi.com/?i=$ID | jq . > $INFO_FILE
    
    cd - > /dev/null
done

COUNT=`find $ROOT -name $INFO_FILE | wc -l`
echo "[GETINFO] $COUNT info files ($INFO_FILE) in local repository ..."

echo "... DONE"