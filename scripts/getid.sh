#!/bin/bash

ROOT=../

echo "[GETID] store imdb id from previously downloaded json info"

if [ -z `jq --version` ]; then
    echo "[GETID] ERROR: missing required tool: jq"
    exit -1
fi

for f in $(find $ROOT -name info.json); do

    TMP=`dirname $f`

    cd $TMP
    echo "[GETID] processing `basename $TMP` ..."

    ID=`jq -r .imdbID info.json`
    if [ -n $ID ]; then
        echo $ID > imdb-id
    fi

    cd - > /dev/null
done