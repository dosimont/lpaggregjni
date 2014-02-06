
# All Target
all:	
	(cd swig; ./swig.sh)
	(cd Release; make)

install:
	./install.sh
clean:
	rm -fr src java
	(cd Release; make clean)
