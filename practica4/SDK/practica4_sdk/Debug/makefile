################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include subdir.mk
-include src/subdir.mk
-include objects.mk

ifneq ($(MAKECMDGOALS),clean)
ifneq ($(strip $(C_DEPS)),)
-include $(C_DEPS)
endif
ifneq ($(strip $(S_UPPER_DEPS)),)
-include $(S_UPPER_DEPS)
endif
endif

-include ../makefile.defs

# Add inputs and outputs from these tool invocations to the build variables 
ELFSIZE += \
practica4_sdk.elf.size \

ELFCHECK += \
practica4_sdk.elf.elfcheck \


# All Target
all: practica4_sdk.elf secondary-outputs

# Tool invocations
practica4_sdk.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo Building target: $@
	@echo Invoking: MicroBlaze gcc linker
	mb-gcc -Wl,--no-relax -Wl,-T -Wl,../src/lscript.ld -L../../peripheral_tests_bsp_0/microblaze_0/lib -mxl-pattern-compare -mcpu=v8.30.a -mno-xl-soft-mul -o"practica4_sdk.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo Finished building target: $@
	@echo ' '

practica4_sdk.elf.size: practica4_sdk.elf
	@echo Invoking: MicroBlaze Print Size
	mb-size practica4_sdk.elf  |tee "practica4_sdk.elf.size"
	@echo Finished building: $@
	@echo ' '

practica4_sdk.elf.elfcheck: practica4_sdk.elf
	@echo Invoking: Xilinx ELF Check
	elfcheck practica4_sdk.elf -hw ../../practica4_hw_platform/system.xml -pe microblaze_0  |tee "practica4_sdk.elf.elfcheck"
	@echo Finished building: $@
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) practica4_sdk.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
