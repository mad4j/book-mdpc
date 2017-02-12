#!/bin/bash

SOURCE=examples
TARGET=docs
ROOT=`pwd`

function build_index {

  echo "building index on $1 ..."

  INDEX_FILE="$ROOT/$1.txt"
  echo "" > $INDEX_FILE

  COUNTER=0
  for f in $(find $SOURCE/$1/* -maxdepth 0 -type d ); do
  
    cd $f
    NAME=`basename $f`
    POSTER=`ls *.png`

    # skip if no poster is present
    if [ -z $POSTER ]; then
      cd - > /dev/null
      continue
    fi

    # look for metadata
    if [ -a metadata ]; then 
      source metadata
    else
      TITLE=$NAME
    fi
    
    echo "<a href=\"$SOURCE/$1/$NAME\">" >> $INDEX_FILE
    echo "    <img src=\"$SOURCE/$1/$NAME/$POSTER\" width=\"120px\" title=\"$TITLE\"/>" >> $INDEX_FILE
    echo "</a>" >> $INDEX_FILE
    let COUNTER=COUNTER+1
    if [ $COUNTER -eq 6 ]; then
      COUNTER=0
      echo "<br/>" >> $INDEX_FILE
    fi
    cd - > /dev/null
  done
}

echo "removing genereated README files..."
rm -fR $TARGET/
find $ROOT/ -name README.md -exec rm {} \;

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
  }" $ROOT/README-master.md.template > README.md

rm $ROOT/volume?.txt

echo "starting building process..."
for f in $(find $SOURCE/ -name metadata); do
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

