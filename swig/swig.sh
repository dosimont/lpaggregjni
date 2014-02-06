#!/bin/bash -x
source ../configuration
LPAGGREG=lpaggreg
LPAGGREG_SRC=$LPAGGREG/src
LPAGGREGJNI_SRC=../src
JAVA_BIN=../java

mkdir -p $JAVA_BIN
mkdir -p ../src
git clone https://github.com/dosimont/lpaggreg.git $LPAGGREG
cp lpaggreg.i $LPAGGREG_SRC
cd $LPAGGREG_SRC
mkdir temp
swig -c++ -java -package $TARGET_PACKAGE -outdir temp lpaggreg.i
cp temp/* $JAVA_BIN
cd -
mv $LPAGGREG_SRC/lpaggreg_wrap.cxx $LPAGGREGJNI_SRC
rm -fr $LPAGGREG

exit 0
