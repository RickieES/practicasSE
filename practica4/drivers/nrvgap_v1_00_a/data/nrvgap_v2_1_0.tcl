##############################################################################
## Filename:          N:\ws\practica4/drivers/nrvgap_v1_00_a/data/nrvgap_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Wed Nov 02 23:01:11 2022 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "nrvgap" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
