@echo OFF

IF %1.==. GOTO help

set FILE=%1
set pInstallDir=NULL

set KEY_NAME=HKEY_LOCAL_MACHINE\SOFTWARE\Analog Devices\PlutoSDR-M2k-USB-Win-Drivers\Settings
FOR /F "tokens=2*" %%A IN ('REG.exe query "%KEY_NAME%" /v "InstallPath"') DO (set pInstallDir=%%B)



REM "%pInstallDir%\dfu-util.exe" -l || exit /b 1

for /F %%i in ("%FILE%") do @set NAME=%%~nxi

if %NAME%==pluto.dfu goto firmware
if %NAME%==m2k.dfu goto firmware_m2k
if %NAME%==uboot-env.dfu goto ubootenv
goto help

:firmware
"F:\A_TEST\PLUTO_SDR_Mini_V1\firmware_load\firmware\dfu-util.exe" -d 0456:b673,0456:b674 -D %FILE% -a firmware.dfu
exit /b 0

:firmware_m2k
"F:\A_TEST\PLUTO_SDR_Mini_V1\firmware_load\firmware\dfu-util.exe" -d 0456:b672,0456:b675 -D %FILE% -a firmware.dfu
exit /b 0

:ubootenv
"F:\A_TEST\PLUTO_SDR_Mini_V1\firmware_load\firmware\dfu-util.exe" -d 0456:b673,0456:b674 -D %FILE% -a uboot-env.dfu || "%pInstallDir%\dfu-util.exe" -d 0456:b672,0456:b675 -D %FILE% -a uboot-env.dfu
exit /b 0

:help
echo PlutoSDR/M2k DFU update utility
echo Usage: %0 PATH-TO\[pluto^|m2k].dfu
exit /b 0