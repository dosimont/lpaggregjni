
# All Target
all:	swig	
	(cd linux-shared; make)

otl-linux:	swig	
	(cd otl-linux; make)

otl-linux-x86:	swig	
	(cd otl-linux-x86; make)

otl-win64:	swig	
	(cd otl-win64; make)

otl-win32:	swig	
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
