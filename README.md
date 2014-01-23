lpaggregjni
===========


__License__

This library provides a java interface with lpaggreg C++ library.
It can be used as a native library in a java program.

(C) Copyright (February 28th 2013) Damien Dosimont. All rights reserved.

Damien Dosimont <damien.dosimont@imag.fr>

This library is free software; you can redistribute it and/or modify it
under the terms of the GNU Lesser General Public License as published by
the Free Software Foundation; either version 3.0 of the License, or
(at your option) any later version.

This library is distributed in the hope that it will be useful, but
WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
License for more details.

You should have received a copy of the GNU Lesser General Public
License along with this library; if not, write to the Free Software
Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
USA.


__Dependancies__

Swig presence is mandatory. 
http://www.swig.org/

You also need to compile and install lpaggreg library:
https://github.com/dosimont/lpaggreg

__Configure SWIG parameters__

Open `configuration` file with your text editor and fill the fields with the
right values:

`LPAGGREG_SRC` is the location of lpaggreg library source files.

`TARGET_PACKAGE`is the package name of future java interface files.

`OUTPUT_DIRECTORY` is the location where will be generated java interface files.


__Compile__

		$ make
		
__Install__

		# make install

__Clean__

		$ make clean

