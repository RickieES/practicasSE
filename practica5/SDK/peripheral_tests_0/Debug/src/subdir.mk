################################################################################
# Automatically-generated file. Do not edit!
################################################################################

# Add inputs and outputs from these tool invocations to the build variables 
C_SRCS += \
../src/keypad.c \
../src/lcd.c \
../src/ledrgb.c \
../src/motor_hw.c \
../src/testperiph.c \
../src/xbram_example.c \
../src/xgpio_tapp_example.c 

LD_SRCS += \
../src/lscript.ld 

OBJS += \
./src/keypad.o \
./src/lcd.o \
./src/ledrgb.o \
./src/motor_hw.o \
./src/testperiph.o \
./src/xbram_example.o \
./src/xgpio_tapp_example.o 

C_DEPS += \
./src/keypad.d \
./src/lcd.d \
./src/ledrgb.d \
./src/motor_hw.d \
./src/testperiph.d \
./src/xbram_example.d \
./src/xgpio_tapp_example.d 


# Each subdirectory must supply rules for building sources it contributes
src/%.o: ../src/%.c
	@echo Building file: $<
	@echo Invoking: MicroBlaze gcc compiler
	mb-gcc -Wall -O0 -g3 -c -fmessage-length=0 -Wl,--no-relax -I../../peripheral_tests_bsp_0/microblaze_0/include -mxl-pattern-compare -mcpu=v8.30.a -mno-xl-soft-mul -MMD -MP -MF"$(@:%.o=%.d)" -MT"$(@:%.o=%.d)" -o"$@" "$<"
	@echo Finished building: $<
	@echo ' '


