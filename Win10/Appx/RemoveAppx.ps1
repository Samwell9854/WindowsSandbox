@(
    "*Bing*",
    "*Getstarted",
    "Microsoft.MicrosoftOfficeHub",
    "Microsoft.WindowsMaps",
    "*Microsoft.Xbox*",
    "Microsoft.People",
    "Microsoft.YourPhone",
    "*MicrosoftSolitaire*"
) | ForEach-Object {
    Get-AppxPackage $_ | Remove-AppxPackage
    Get-AppxPackage $_ -AllUsers | Remove-AppxPackage
}
