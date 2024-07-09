@echo off
title GHF Analyzer
set /p %target%=Enter the target IPv4 address.
:a
ping %target
goto :a