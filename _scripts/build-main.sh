#!/bin/bash

SOURCE=examples
TEMPLATES=_templates

TEMPLATE_FILE=README-main.md.template
INFO_FILE=info.json

ROOT=`pwd`


function build_index {

  echo
  echo "[BUILDMAIN] building index on $1 ..."

  INDEX_FILE="$ROOT/$1.txt"
  echo "" > $INDEX_FILE

  COUNTER=0
  for f in $(find $ROOT/$SOURCE/$1/* -maxdepth 0 -type d ); do

    cd $f
    NAME=`basename $f`

    echo "[BUILDMAIN] working on '$NAME'"

    POSTER=`ls *.png`

    # skip if no poster is present
    if [ -z $POSTER ]; then
      cd - > /dev/null
      continue
    fi

    TITLE="`jq -r .Title $INFO_FILE`"

    echo "<a href=\"$SOURCE/$1/$NAME/\">" >> $INDEX_FILE
    echo "    <img src=\"$SOURCE/$1/$NAME/$POSTER\" width=\"120px\" title=\"$TITLE\"/>" >> $INDEX_FILE
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
if [ ! -d $ROOT/$SOURCE ]; then
    ROOT=$(dirname $ROOT)
fi

if [ ! -d $ROOT/$SOURCE ]; then
    echo "[BUILDMAIN] ERROR: unable to find root folder."
    exit -1
fi

# check for template file
if [ ! -f $ROOT/$TEMPLATES/$TEMPLATE_FILE ]; then
    echo "[BUILDMAIN] ERROR: unable to find page template '$TEMPLATE_FILE'."
    exit -1
fi

# check for dependencies
if [ -z "`jq --version`" ]; then
    echo "[BUILDPAGES] ERROR: missing required tool: jq."
    exit -1
fi

echo "[BUILDMAIN] working on '$ROOT' using template '$TEMPLATE_FILE'..."

echo "[BUILDMAIN] removing generated README file..."
rm -f $ROOT/README.md

build_index volume1
build_index volume2
build_index volume3
build_index volume4
build_index volume5

sed -e "/##VOLUME1##/{
    r$ROOT/volume1.txt
    d
  }" -e "/##VOLUME2##/{
    r$ROOT/volume2.txt
    d
  }" -e "/##VOLUME3##/{
    r$ROOT/volume3.txt
    d
  }" -e "/##VOLUME4##/{
    r$ROOT/volume4.txt
    d
  }" -e "/##VOLUME5##/{
    r$ROOT/volume5.txt
    d
  }" $ROOT/$TEMPLATES/$TEMPLATE_FILE > $ROOT/README.md

rm $ROOT/volume?.txt


echo "[BUILDMAIN] DONE"
