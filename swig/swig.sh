#!/bin/sh -x
SRC=/home/dosimont/Documents/github/lpaggreg/src/
PACKAGE=fr.inria.soctrace.tools.paje.lpaggreg.core.jni 
OUTDIR=/home/dosimont/Documents/forge/generoso/soctrace/source/trunk/workspace/fr.inria.soctrace.tools.paje.lpaggreg.core/src/fr/inria/soctrace/tools/paje/lpaggreg/core/jni
cp lpaggreg.i $SRC
cd $SRC
swig -c++ -java -package $PACKAGE -outdir $OUTDIR lpaggreg.i
cd -
mv $SRC/lpaggreg.i .
mv $SRC/lpaggreg_wrap.cxx ../src/

exit 0
