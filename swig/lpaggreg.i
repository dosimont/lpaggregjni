/*******************************************************************************
 *
 * This library provides a java interface with lpaggreg C++ library. 
 * It can be used as a native library in a java program.
 *
 * (C) Copyright (February 28th 2013) Damien Dosimont. All rights reserved.
 *
 * Damien Dosimont <damien.dosimont@imag.fr>
 *
 * This library is free software; you can redistribute it and/or modify it
 * under the terms of the GNU Lesser General Public License as published by
 * the Free Software Foundation; either version 3.0 of the License, or
 * (at your option) any later version.
 *
 * This library is distributed in the hope that it will be useful, but
 * WITHOUT ANY WARRANTY; without even the implied warranty of MERCHANTABILITY
 * or FITNESS FOR A PARTICULAR PURPOSE. See the GNU Lesser General Public
 * License for more details.
 *
 * You should have received a copy of the GNU Lesser General Public
 * License along with this library; if not, write to the Free Software
 * Foundation, Inc., 51 Franklin Street, Fifth Floor, Boston, MA  02110-1301,
 * USA.
 *
 *******************************************************************************/

/*Author : Damien Dosimont <damien.dosimont@imag.fr>*/

%module lpaggreg
%{
#include <LPAggregWrapper.h>
#include <VLPAggregWrapper.h>
#include <MLPAggregWrapper.h>
%}

class LPAggregWrapper {
	public:

		/*Constructor*/
		LPAggregWrapper();

		/*Destructor*/
		virtual ~LPAggregWrapper();

		/*Algo step 1 : compute qualities*/
		virtual void computeQualities(bool normalization)=0;

		/*Algo step 2 : compute parts for a parameter*/
		virtual void computeParts(float parameter)=0;

		/*Algo step 2 : compute relevant parameter list by using dichotomy*/
		virtual void computeDichotomy(float threshold)=0;

		/*Get the part with in index "index"*/
		int getPart(int index);

		/*Get the part number*/
		int getPartNumber();

		/*Get the parameter with index "index"*/
		float getParameter(int index);

		/*Get the parameter number*/
		int getParameterNumber();

		/*Get the gain by index*/
		double getGainByIndex(int index);

		/*Get the gain by parameter*/
		double getGainByParameter(float parameter);

		/*Get the loss by index*/
		double getLossByIndex(int index);

		/*Get the loss by parameter*/
		double getLossByParameter(float parameter);
};

class VLPAggregWrapper : public LPAggregWrapper{

	public:

		VLPAggregWrapper();
		virtual ~VLPAggregWrapper();

		/*Create a new empty vector in the input matrix, at the end of the matrix*/
		void newVector();

		/*Add a new element to the last positioned vector*/
		void addToVector(double element);

		/*Add a new element to the vector with index "index"*/
		void addToVector(double element, int index);

		/*Algo step 1 : compute qualities*/
		void computeQualities(bool normalization);

		/*Algo step 2 : compute parts for a parameter*/
		void computeParts(float parameter);

		/*Algo step 2 : compute relevant parameter list by using dichotomy*/
		void computeDichotomy(float threshold);

		/*Get the vector number*/
		int getVectorNumber();

		/*Get the vector size*/
		int getVectorSize();
};

class MLPAggregWrapper : public LPAggregWrapper{

	public:

		MLPAggregWrapper();
		virtual ~MLPAggregWrapper();

		void newMatrix();

		/*Add a new element to the last positioned in the matrix i*/
		void addToMatrix(double element, int i);

		/*Add a new element to the vector with index j in the matrix i*/
		void addToMatrix(double element, int i, int j);

		/*Create a new empty vector in the input cubic matrix, at the end of the last positioned matrix*/
		void newVector();

		/*Add a new element to the last positioned vector in the current matrix*/
		void addToVector(double element);

		/*Add a new element to the vector with index "index" in the last positioned matrix*/
		void addToVector(double element, int index);

		/*Algo step 1 : compute qualities*/
		void computeQualities(bool normalization);

		/*Algo step 2 : compute parts for a parameter*/
		void computeParts(float parameter);

		/*Algo step 2 : compute relevant parameter list by using dichotomy*/
		void computeDichotomy(float threshold);

		/*Get the matrix number*/
		int getMatrixNumber();

		/*Get the matrix size*/
		int getMatrixSize();

		/*Get the vector size*/
		int getVectorSize();
};
