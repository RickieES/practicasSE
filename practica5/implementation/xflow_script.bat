@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc3s1000ft256-5 -nt timestamp -bm practica5.bmm "N:/ws/practica5/implementation/practica5.ngc" -uc practica5.ucf practica5.ngd 

@REM #
@REM # Command line for map
@REM #
map -o practica5_map.ncd -pr b -ol high -timing -detail practica5.ngd practica5.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high practica5_map.ncd practica5.ncd practica5.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml practica5.twx practica5.ncd practica5.pcf 

