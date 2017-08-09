#!/bin/bash

SOURCE=examples
TEMPLATES=templates

TEMPLATE=README-main.template

ROOT=`pwd`


function build_index {

  echo
  echo "[BUILDMAIN] building index on $1 ..."

  INDEX_FILE="$ROOT/$1.txt"
  echo "" > $INDEX_FILE

  COUNTER=0
  for f in $(find $SOURCE/$1/* -maxdepth 0 -type d ); do

    cd $f
    NAME=`basename $f`

    echo "[BUILDMAIN] working on '$NAME'"

    POSTER=`ls *.png`

    # skip if no poster is present
    if [ -z $POSTER ]; then
      cd - > /dev/null
      continue
    fi

    echo "<a href=\"$SOURCE/$1/$NAME/README.md\">" >> $INDEX_FILE
    echo "    <img src=\"$SOURCE/$1/$NAME/$POSTER\" width=\"120px\" title=\"$NAME\"/>" >> $INDEX_FILE
    echo "</a>" >> $INDEX_FILE
    let COUNTER=COUNTER+1
    if [ $COUNTER -eq 6 ]; then
      COUNTER=0
      echo "<br class=\"index-separator\"/>" >> $INDEX_FILE
    fi
    cd - > /dev/null
  done
}

# check for root folder

if [ ! -d $ROOT/$TARGET ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$TARGET ]; then
    echo "[BUILDMAIN] ERROR: unable to find root folder."
    exit -1
fi

echo "[BUILDMAIN] working on '$ROOT'"

echo "[BUILDMAIN] removing generated README file..."
rm -f $ROOT/README.md

build_index volume1
build_index volume2
build_index volume3
build_index volume4

sed -e "/##VOLUME1##/{
    rvolume1.txt
    d
  }" -e "/##VOLUME2##/{
    rvolume2.txt
    d
  }" -e "/##VOLUME3##/{
    rvolume3.txt
    d
  }" -e "/##VOLUME4##/{
    rvolume4.txt
    d
  }" $ROOT/$TEMPLATES/README-main.md.template > README.md

rm $ROOT/volume?.txt


echo "[BUILDMAIN] DONE"
