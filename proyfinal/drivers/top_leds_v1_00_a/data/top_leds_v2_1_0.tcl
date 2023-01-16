##############################################################################
## Filename:          N:\ws\proyfinal/drivers/top_leds_v1_00_a/data/top_leds_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Jan 16 22:59:01 2023 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "top_leds" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
