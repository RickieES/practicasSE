@ECHO OFF
@REM ###########################################
@REM # Script file to run the flow 
@REM # 
@REM ###########################################
@REM #
@REM # Command line for ngdbuild
@REM #
ngdbuild -p xc3s1000ft256-5 -nt timestamp -bm proyfinal.bmm "N:/ws/proyfinal/implementation/proyfinal.ngc" -uc proyfinal.ucf proyfinal.ngd 

@REM #
@REM # Command line for map
@REM #
map -o proyfinal_map.ncd -pr b -ol high -timing -detail proyfinal.ngd proyfinal.pcf 

@REM #
@REM # Command line for par
@REM #
par -w -ol high proyfinal_map.ncd proyfinal.ncd proyfinal.pcf 

@REM #
@REM # Command line for post_par_trce
@REM #
trce -e 3 -xml proyfinal.twx proyfinal.ncd proyfinal.pcf 

