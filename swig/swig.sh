#!/bin/sh -x
source ../configuration
mkdir -p $OUTPUT_DIRECTORY
cp lpaggreg.i $LPAGGREG_SRC
cd $LPAGGREG_SRC
swig -c++ -java -package $TARGET_PACKAGE -outdir $OUTPUT_DIRECTORY lpaggreg.i
cd -
mv $LPAGGREG_SRC/lpaggreg.i .
mv $LPAGGREG_SRC/lpaggreg_wrap.cxx ../src/

exit 0
