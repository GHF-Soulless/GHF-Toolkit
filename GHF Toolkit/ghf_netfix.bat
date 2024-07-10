@echo off
title GHF NetFix- Created by GHF Soulless
echo Welcome to GHF NetFix.
echo This program is designed to perform a string of commands
echo in an attempt to resolve WiFi connectivity issues.
pause
netsh winsock reset
netsh int ip reset
ipconfig /release
ipconfig /renew
echo.
echo Repairs complete, we will now ping your network to test your connection speed.
echo If you would like to cancel this test, close this program and
echo check your connection manually to ensure proper performance.
echo To continue with the procedure, please follow the prompt(s) below.
echo.
set /p ip=Please enter your network’s IPv4 address: 
:loop
ping %ip%
goto :loop
