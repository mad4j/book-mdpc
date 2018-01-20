#!/bin/bash

SOURCE=examples
OUTPUT=assets/docs/figures

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

# create output folder, if needed
mkdir -p $ROOT/$OUTPUT/

for d in $(find $ROOT/$SOURCE -mindepth 1 -maxdepth 1 -type d); do
    v=$(basename $d)
    OUTFILE=$ROOT/$OUTPUT/$v-mosaic.png
    rm -f $OUTFILE
    echo "[BUIDMOSAICS] working on $v..."
    montage `find $d -name *.png -type f` -geometry +0+0 $OUTFILE
done

echo "[BUIDMOSAIC] ... DONE"
