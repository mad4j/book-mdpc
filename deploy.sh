#!/bin/bash

TARGET=doc
BUILD=`git rev-list HEAD | wc -l`
VERSION=`git describe --tags`

echo "Building '$VERSION' / build '$BUILD' in folder '$TARGET'..."

rm -fR $TARGET/
mkdir -p $TARGET/book-mdpc/examples
cp -R examples/ $TARGET/book-mdpc/examples
sed -e "s/##BUILD##/$BUILD/g" -e "s/##VERSION##/$VERSION/g" examples.properties.template  > examples.properties
cp examples.properties $TARGET/book-mdpc
cp examples.properties $TARGET/book-mdpc.txt
cp LICENSE $TARGET/book-mdpc
cp README.md $TARGET/book-mdpc
zip -rq $TARGET/book-mdpc.zip $TARGET/book-mdpc
rm examples.properties
rm -fR $TARGET/book-mdpc/

echo "...DONE"