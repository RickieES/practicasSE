##############################################################################
## Filename:          C:\hlocal\XilinxProyectos\Practica5/drivers/ledrgb_v1_00_a/data/ledrgb_v2_1_0.tcl
## Description:       Microprocess Driver Command (tcl)
## Date:              Tue Feb 16 20:35:10 2021 (by Create and Import Peripheral Wizard)
##############################################################################

#uses "xillib.tcl"

proc generate {drv_handle} {
  xdefine_include_file $drv_handle "xparameters.h" "ledrgb" "NUM_INSTANCES" "DEVICE_ID" "C_BASEADDR" "C_HIGHADDR" 
}
