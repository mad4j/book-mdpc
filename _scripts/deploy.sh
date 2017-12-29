#!/bin/bash

TEMP=temp
TEMPLATES=_templates
EXAMPLES=examples

TARGET=.

ROOT=`pwd`

BUILD=`git rev-list HEAD | wc -l`
VERSION=`git describe --tags`


# check for root folder
if [ ! -d $ROOT/$EXAMPLES ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$EXAMPLES ]; then
    echo "[DEPLOY] ERROR: unable to find root folder."
    exit -1
fi


echo "[DEPLOY] Building '$VERSION' / build '$BUILD' in folder '$TARGET' using '$TEMP'..."
echo "[DEPLOY] using root folder '$ROOT'"

# cleanup any residual build
rm -fR $ROOT/$TEMP/
rm -f $ROOT/$TARGET/book-mdpc.txt
rm -f $ROOT/$TARGET/book-mdpc.zip

if [ ! -d $ROOT/$TARGET ]; then
    mkdir -p $ROOT/$TARGET
fi

# create working area
mkdir -p $ROOT/$TEMP/book-mdpc/examples

# create contents
cp -R $ROOT/$EXAMPLES $ROOT/$TEMP/book-mdpc/
find $ROOT/$TEMP/ -type f -name '*.template' -delete
sed -e "s/##BUILD##/$BUILD/g" \
    -e "s/##VERSION##/$VERSION/g" $ROOT/$TEMPLATES/examples.properties.template  > $ROOT/$TARGET/examples.properties
cp $ROOT/$TARGET/examples.properties $ROOT/$TEMP/book-mdpc
cp $ROOT/$TARGET/examples.properties $ROOT/$TEMP/book-mdpc.txt
cp $ROOT/$TARGET/LICENSE $ROOT/$TEMP/book-mdpc
cp $ROOT/$TARGET/README.md $ROOT/$TEMP/book-mdpc
cd $ROOT/$TEMP
zip -rq book-mdpc.zip book-mdpc/
cd - > /dev/null
cp $ROOT/$TEMP/book-mdpc.txt $ROOT/$TARGET/
cp $ROOT/$TEMP/book-mdpc.zip $ROOT/$TARGET/

# remove working area
rm $ROOT/$TARGET/examples.properties
rm -fR $ROOT/$TEMP

echo "...DONE"