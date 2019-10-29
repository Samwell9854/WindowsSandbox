@echo off
:keepgoing
set /P W=Input your link 
wget -c %W%
if %ERRORLEVEL% neq 0 (
   goto :keepgoing
)
