schtasks /Change /TN \Microsoft\Office\OfficeTelemetryAgentFallBack /DISABLE
schtasks /Change /TN \Microsoft\Office\OfficeTelemetryAgentLogOn /DISABLE
schtasks /Change /TN \Microsoft\Windows\AppID\SmartScreenSpecific /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Application Experience\Microsoft Compatibility Appraiser" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Application Experience\ProgramDataUpdater" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\Consolidator" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\KernelCeipTask" /DISABLE
schtasks /Change /TN "\Microsoft\Windows\Customer Experience Improvement Program\UsbCeip" /DISABLE
schtasks /Change /TN \Microsoft\Windows\DiskDiagnostic\Microsoft-Windows-DiskDiagnosticDataCollector /DISABLE

sc stop DiagTrack
sc config DiagTrack start=disabled