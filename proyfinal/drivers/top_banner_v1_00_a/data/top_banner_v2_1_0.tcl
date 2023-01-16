##############################################################################
## Filename:          N:\ws\proyfinal/drivers/top_banner_v1_00_a/data/top_banner_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Jan 16 22:46:25 2023 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "top_banner" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
