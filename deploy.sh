#!/bin/bash

TARGET=docs
BUILD=`git rev-list HEAD | wc -l`
VERSION=`git describe --tags`

echo "Building '$VERSION' / build '$BUILD' in folder '$TARGET'..."

rm -fR $TARGET/
mkdir -p $TARGET/book-mdpc/examples
cp -R examples/ $TARGET/book-mdpc/
find $TARGET/ -type f -name '*.template' -delete
sed -e "s/##BUILD##/$BUILD/g" -e "s/##VERSION##/$VERSION/g" examples.properties.template  > examples.properties
cp examples.properties $TARGET/book-mdpc
cp examples.properties $TARGET/book-mdpc.txt
cp LICENSE $TARGET/book-mdpc
cp README.md $TARGET/book-mdpc
cd $TARGET
zip -rq book-mdpc.zip book-mdpc/
cd -
rm examples.properties
rm -fR $TARGET/book-mdpc/

echo "...DONE"