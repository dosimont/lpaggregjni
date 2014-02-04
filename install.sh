#!/bin/bash -x
LIB=liblpaggregjni.so
cd Release
LSLIB=`ls ${LIB}*`
cd ..
DIR=/usr/lib
sudo rm $DIR/$LIB
sudo cp Release/$LSLIB $DIR
sudo ln -s $DIR/$LSLIB $DIR/$LIB
ldconfig -n /usr/lib
exit 0
