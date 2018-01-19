#!/bin/bash

SOURCE=examples
OUTPUT=_mosaics

ROOT=`pwd`

# check for root folder

if [ ! -d $ROOT/$SOURCE ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$SOURCE ]; then
    echo "[BUIDMOSAICS] ERROR: unable to find root folder."
    exit -1
fi

echo "[BUIDMOSAICS] root folder '$(basename $ROOT)'..."

# remove old output
rm -fr $ROOT/$OUTPUT/
mkdir -p $ROOT/$OUTPUT/

for d in $(find $ROOT/$SOURCE -mindepth 1 -maxdepth 1 -type d); do
    v=$(basename $d)
    echo "[BUIDMOSAICS] working on $v..."
    montage `find $d -name *.png -type f` -geometry 120x160+0+0 $ROOT/$OUTPUT/$v-mosaic.png
done


echo "[BUIDMOSAIC] ... DONE"
