@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc3s1000ft256-5 -nt timestamp -bm practica4.bmm "N:/ws/practica4/implementation/practica4.ngc" -uc practica4.ucf practica4.ngd 

