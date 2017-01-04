#!/bin/bash

TARGET=docs

rm -fR $TARGET/
for f in $(find . -name README.md.template); do
    cd `dirname $f`
    echo "processing `pwd`"
    SNIPPET=`ls *.pde`
    sed -e "/##SNIPPET##/{
        r$SNIPPET
        a
        d    
    }" README.md.template > README.md
    cd - > /dev/null
done
