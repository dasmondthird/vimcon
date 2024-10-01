Disable Windows Defender
Open PowerShell as Administrator:

Right-click the Start button, select "Windows PowerShell (Admin)."
Disable Windows Defender:

Set-MpPreference -DisableRealtimeMonitoring $true
Disable Automatic Windows Updates
Stop Windows Update Service:

Stop-Service -Name wuauserv
Disable Windows Update Service:

Set-Service -Name wuauserv -StartupType Disabled
