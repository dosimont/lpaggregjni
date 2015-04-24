
.PHONY: all otl-linux otl-linux-86 otl-win64 otl-win32 swig install clean

# All Target
all:	
	(cd swig; ./swig.sh)
	(cd linux-shared; make)

otl-linux:	
	(cd swig; ./swig.sh)
	(cd otl-linux; make)

otl-linux-x86:	
	(cd swig; ./swig.sh)
	(cd otl-linux-x86; make)

otl-win64:	
	(cd swig; ./swig.sh)
	(cd otl-win64; make)

otl-win32:	
	(cd swig; ./swig.sh)
	(cd otl-win32; make)

install:
	./install.sh

swig:
	(cd swig; ./swig.sh)

clean:
	rm -fr src java
	(cd linux-shared; make clean)
	(cd otl-linux; make clean)
	(cd otl-linux-x86; make clean)
	(cd otl-win32; make clean)
	(cd otl-win64; make clean)
