
# All Target
all:	
	(cd swig; ./swig.sh)
	(cd Release; make)

ocelotl:	
	(cd swig; ./swig.sh)
	(cd Ocelotl; make)


install:
	./install.sh
clean:
	rm -fr src java
	(cd Release; make clean)
	(cd Ocelotl; make clean)
