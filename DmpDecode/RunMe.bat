@echo off
cls

echo Executing prerun checks...
mkdir C:\JustATest
if %ERRORLEVEL% == 1 (
echo ERROR: I need administrative privilege to run properly
echo Exitting...
pause
exit
) else rmdir /Q C:\JustATest
echo Permissions OK
echo.

set kd="C:\Program Files (x86)\Windows Kits\10\Debuggers\x64\kd.exe"

echo Searching for KD debugger
if not exist %kd% (
	echo ERROR: KD debugger for x64 not found
	echo Download the debugger here
	echo http://msdn.microsoft.com/en-us/windows/hardware/gg463009.aspx
	echo Follow the page to install WDK for Windows 10 not EWDK
	echo Select only "Debugging Tools for Windows"
	echo Then run this script again
	echo.
	echo Exitting...
	pause
	exit
)
echo Found it!
echo.

set /P minidump=Input folder containing minidumps (recursive)  

for /f "tokens=*" %%F in ('dir /B /S %minidump%\*.dmp') do (
	echo Processing %%F...
	%kd% -z %%F -logo %%F.xml -y "srv*c:\symbols*http://msdl.microsoft.com/download/symbols" -c ".reload;!analyze -v;r;kv;lmnt;q" 1>NUL
	echo.
)
