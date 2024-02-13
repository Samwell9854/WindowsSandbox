$VHDXPath = "D:\share\UPD"

Get-ChildItem $VHDXPath -Filter *.vhdx | ForEach-Object {
	If ((Test-VHD -Path $_.FullName -ErrorAction SilentlyContinue) -and ("$_" -ne "UVHD-template.vhdx")) {
	Mount-VHD -Path $_.FullName
	rd -Recurse -Force F:\`$Recycle.bin
	Dismount-VHD -Path $_.FullName
	}
}
