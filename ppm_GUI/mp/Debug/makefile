################################################################################
# Automatically-generated file. Do not edit!
################################################################################

-include ../makefile.init

RM := rm -rf

# All of the sources participating in the build are defined here
-include sources.mk
-include src/subdir.mk
-include subdir.mk
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
mp.elf.size \

ELFCHECK += \
mp.elf.elfcheck \


# All Target
all: mp.elf secondary-outputs

# Tool invocations
mp.elf: $(OBJS) ../src/lscript.ld $(USER_OBJS)
	@echo 'Building target: $@'
	@echo 'Invoking: MicroBlaze gcc linker'
	mb-gcc -Wl,-T -Wl,../src/lscript.ld -L../../mp_bsp/mcs_machine_player/lib -mlittle-endian -mcpu=v8.40.a -mxl-soft-mul -Wl,--no-relax -Wl,--gc-sections -o "mp.elf" $(OBJS) $(USER_OBJS) $(LIBS)
	@echo 'Finished building target: $@'
	@echo ' '

mp.elf.size: mp.elf
	@echo 'Invoking: MicroBlaze Print Size'
	mb-size mp.elf  |tee "mp.elf.size"
	@echo 'Finished building: $@'
	@echo ' '

mp.elf.elfcheck: mp.elf
	@echo 'Invoking: Xilinx ELF Check'
	elfcheck mp.elf -hw ../../hw_platform_0/system.xml -pe mcs_machine_player  |tee "mp.elf.elfcheck"
	@echo 'Finished building: $@'
	@echo ' '

# Other Targets
clean:
	-$(RM) $(OBJS)$(C_DEPS)$(EXECUTABLES)$(ELFSIZE)$(ELFCHECK)$(S_UPPER_DEPS) mp.elf
	-@echo ' '

secondary-outputs: $(ELFSIZE) $(ELFCHECK)

.PHONY: all clean dependents
.SECONDARY:

-include ../makefile.targets
