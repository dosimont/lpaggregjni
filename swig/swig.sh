#!/bin/sh -x
SRC=/home/dosimont/Documents/github/lpaggreg/src/
PACKAGE=fr.inria.soctrace.tools.ocelotl.core.lpaggreg.jni 
OUTDIR=/home/dosimont/Documents/github/ocelotl/fr.inria.soctrace.tools.ocelotl.core/src/fr/inria/soctrace/tools/ocelotl/core/lpaggreg/jni
cp lpaggreg.i $SRC
cd $SRC
swig -c++ -java -package $PACKAGE -outdir $OUTDIR lpaggreg.i
cd -
mv $SRC/lpaggreg.i .
mv $SRC/lpaggreg_wrap.cxx ../src/

exit 0
