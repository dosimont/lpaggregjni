#!/bin/bash -x
source ../configuration
LPAGGREG=lpaggreg
LPAGGREG_SRC=$LPAGGREG/src
LPAGGREGJNI_SRC=../src
JAVA_BIN=../java

mkdir -p $JAVA_BIN &&
mkdir -p $LPAGGREGJNI_SRC &&
mkdir temp &&
swig -c++ -java -package $TARGET_PACKAGE -outdir temp lpaggreg.i &&
cp temp/* $JAVA_BIN &&
rm -fr temp &&
mv lpaggreg_wrap.cxx $LPAGGREGJNI_SRC

exit 0
