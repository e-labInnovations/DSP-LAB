################################################################################
# Automatically-generated file. Do not edit!
################################################################################

SHELL = cmd.exe

# Each subdirectory must supply rules for building sources it contributes
%.obj: ../%.c $(GEN_OPTS) | $(GEN_FILES) $(GEN_MISC_FILES)
	@echo 'Building file: "$<"'
	@echo 'Invoking: C6000 Compiler'
	"C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c6000_8.3.12/bin/cl6x" -mv6740 --include_path="C:/Users/acer/Desktop/ANAS/linear conv" --include_path="C:/ti/ccs1210/ccs/tools/compiler/ti-cgt-c6000_8.3.12/include" --define=c6748 -g --diag_warning=225 --diag_wrap=off --display_error_number --preproc_with_compile --preproc_dependency="$(basename $(<F)).d_raw" $(GEN_OPTS__FLAG) "$<"
	@echo 'Finished building: "$<"'
	@echo ' '


