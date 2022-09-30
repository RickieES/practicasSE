@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc3s1000ft256-5 -nt timestamp -bm skeleton.bmm "N:/ws/skeleton_edk_14.1/implementation/skeleton.ngc" -uc skeleton.ucf skeleton.ngd 

