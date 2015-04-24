################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
CXX_SRCS += \
../src/lpaggreg_wrap.cxx 

OBJS += \
./src/lpaggreg_wrap.o 

CXX_DEPS += \
./src/lpaggreg_wrap.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.cxx
	@echo 'Building file: $<'
	@echo 'Invoking: GCC C++ Compiler'
	x86_64-w64-mingw32-g++ -I. -I/usr/local/include -I/usr/java/latest/include -I/usr/java/latest/include/linux -O0 -c ../src/lpaggreg_wrap.cxx -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)"
	@echo 'Finished building: $<'
	@echo ' '


