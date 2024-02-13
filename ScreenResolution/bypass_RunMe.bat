@echo off
cls
powershell.exe -executionpolicy bypass -file %~dp0resolit.ps1 >> %~dp0resolution.txt
