@(
    "*3DBuilder*",
    "*Advertising*",
    "*Amazon",
    "*AutodeskSketchBook",
    "*Bing*",
    "*Booking*",
    "*BubbleWitch3Saga",
    "*Candy*",
    "*Dropbox*",
    "*Duolingo*",
    "*eBay",
    "*EclipseManager",
    "*Facebook*",
    "*FarmHeroes*",
    "Flipboard.Flipboard",
    "*Getstarted",
    "*HPJumpStarts*",
    "*Keeper",
    "*LinkedIn*",
    "*MarchofEmpires",
    "*McAfee*",
    "Microsoft.FreshPaint",
    "Microsoft.NetworkSpeedTest",
    "Microsoft.SkypeApp",
    "Microsoft.WindowsMaps",
    "*Microsoft.Xbox*",
    "MicrosoftTeams",
    "*Minecraft*",
    "*myHP",
    "*Netflix",
    "*Office*",
    "*People",
    "*Phone",
    "*PicsArt-PhotoStudio",
    "*PlayReadyClient*",
    "*Plex",
    "*Snapfish",
    "*Solitaire*",
    "*Spotify*",
    "*Twitter",
    "WildTangentGames*",
    "*Wunderlist",
    "*XboxIdentityProvider"
) | ForEach-Object {
    Get-AppxPackage $_ | Remove-AppxPackage
    Get-AppxPackage $_ -AllUsers | Remove-AppxPackage
}
