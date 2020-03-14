#!/bin/sh
#
# Build snapraid from source
# 
# Env:
#    VERSION      (string)     Version to build
#

FILENAME=snapraid-${VERSION}
URL=https://github.com/amadvance/snapraid/releases/download/v${VERSION}/${FILENAME}.tar.gz

echo "==> Downloading $FILENAME"
wget ${URL}
tar -xvf ${FILENAME}.tar.gz

echo "==> Building $FILENAME"
cd ${FILENAME}
./configure
make

echo "==> Testing $FILENAME"
make check

echo "==> Moving $FILENAME binary"
cp snapraid /output
cp *.conf.example /output