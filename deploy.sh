#!/bin/bash
rm -fR dist/
mkdir -p dist/book-mdpc/examples
cp -R examples/ dist/book-mdpc/examples
cp examples.properties dist/book-mdpc
cp examples.properties dist/book-mdpc.txt
cp LICENSE dist/book-mdpc
cp README.md dist/book-mdpc
zip -rq dist/book-mdpc.zip dist/book-mdpc
rm -fR dist/book-mdpc/
