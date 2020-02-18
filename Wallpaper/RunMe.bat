@echo off
%~dp0ImageMagick\convert.exe C:\Windows\Web\Wallpaper\Windows\img0.jpg -fill white -undercolor opaque -gravity SouthEast -pointsize 60 -font Calibri -annotate +50+50 %COMPUTERNAME%.%USERDNSDOMAIN% C:\Windows\Web\Wallpaper\Windows\img1.jpg
regedit /s %~dp0Wallpaper.reg
RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters
pause