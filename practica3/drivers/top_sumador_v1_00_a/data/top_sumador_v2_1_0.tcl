##############################################################################
## Filename:          N:\ws\practica3/drivers/top_sumador_v1_00_a/data/top_sumador_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Mon Oct 10 18:18:14 2022 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "top_sumador" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
