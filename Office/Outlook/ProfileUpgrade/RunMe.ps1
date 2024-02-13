Write-Host IMPORTANT: Please name the registry file Mail.reg

$location = Split-Path $MyInvocation.MyCommand.Path -Parent
Write-Host @"
Version number	- Office Version
15 ............	- MS Office 2013
16 ............	- MS Office 2016
"@

$Version = Read-Host -Prompt 'Input two digits of destination version number '

(Get-Content $location\Mail.reg) | ForEach-Object { $_ -replace "Windows NT","Office" -replace "CurrentVersion","$Version.0" -replace "Windows Messaging Subsystem","Outlook" } | Set-Content $location\NewMail.reg
