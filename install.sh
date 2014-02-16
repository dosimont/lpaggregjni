#!/bin/bash -x
LIB=liblpaggregjni.so
cd Release
LSLIB=`ls ${LIB}*`
cd ..
DIR=/usr/lib
sudo rm $DIR/$LIB
sudo cp Release/$LSLIB $DIR
sudo ln -s $DIR/$LSLIB $DIR/$LIB
echo "/usr/lib/" > /etc/ld.so.conf.d/lpaggreg.conf
ldconfig
exit 0
