#!/bin/bash

TARGET=docs
ROOT=`pwd`

echo "removing files..."
rm -fR $TARGET/
find examples/ -name README.md -exec rm {} \;

echo "starting building process..."
for f in $(find . -name metadata); do
    cd `dirname $f`
    source metadata
    echo "processing `pwd` ..."
    SNIPPET=`ls *.pde`
    POSTER=`ls *.png`
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
      }" $ROOT/README.md.template > README.md
    cd - > /dev/null
done
echo "DONE"