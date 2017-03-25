#!/bin/bash

TEMP=temp
TARGET=.
TEMPLATES=templates

BUILD=`git rev-list HEAD | wc -l`
VERSION=`git describe --tags`

echo "Building '$VERSION' / build '$BUILD' in folder '$TARGET' using '$TEMP'..."

# cleanup any residual build
rm -fR $TEMP/
rm -f $TARGET/book-mdpc.txt
rm -f $TARGET/book-mdpc.zip

if [ ! -d $TARGET ]; then
    mkdir -p $TARGET
fi

# create working area
mkdir -p $TEMP/book-mdpc/examples

# create contents
cp -R examples/ $TEMP/book-mdpc/
find $TEMP/ -type f -name '*.template' -delete
sed -e "s/##BUILD##/$BUILD/g" \
    -e "s/##VERSION##/$VERSION/g" $TEMPLATES/examples.properties.template  > examples.properties
cp examples.properties $TEMP/book-mdpc
cp examples.properties $TEMP/book-mdpc.txt
cp LICENSE $TEMP/book-mdpc
cp README.md $TEMP/book-mdpc
cd $TEMP
zip -rq book-mdpc.zip book-mdpc/
cd - > /dev/null
cp $TEMP/book-mdpc.txt $TARGET/
cp $TEMP/book-mdpc.zip $TARGET/

# remove working area
rm examples.properties
rm -fR $TEMP

echo "...DONE"