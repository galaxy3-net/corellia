
Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "dontdisplaylastusername"
Set-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "dontdisplaylastusername" -Value 1
Get-ItemProperty -Path "HKLM:\Software\Microsoft\Windows\CurrentVersion\Policies\System" -Name "dontdisplaylastusername"

#   https://docs.microsoft.com/en-us/powershell/module/microsoft.powershell.management/set-itemproperty?view=powershell-7
#  https://answers.microsoft.com/en-us/windows/forum/windows_10-security-winpc/windows-10-no-user-accounts-showing-on-login/4e7fbd45-99be-466e-87f9-47a808248eb4