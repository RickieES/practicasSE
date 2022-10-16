@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc3s1000ft256-5 -nt timestamp -bm practica3.bmm "N:/ws/practica3/implementation/practica3.ngc" -uc practica3.ucf practica3.ngd 

@REM #
@REM # Command line for map
@REM #
map -o practica3_map.ncd -pr b -ol high -timing -detail practica3.ngd practica3.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high practica3_map.ncd practica3.ncd practica3.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml practica3.twx practica3.ncd practica3.pcf 

