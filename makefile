
# All Target
all:	
	(cd swig; ./swig.sh)
	(cd Release; make)

install:
	./install.sh
clean:
	(cd Release; make clean)
