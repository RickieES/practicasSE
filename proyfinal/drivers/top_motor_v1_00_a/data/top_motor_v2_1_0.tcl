##############################################################################
## Filename:          N:\ws\proyfinal/drivers/top_motor_v1_00_a/data/top_motor_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Jan 16 23:01:58 2023 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "top_motor" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
