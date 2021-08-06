# corellia

Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -force ;  .\winrm.ps1

[Turn off Windows licensing](https://superuser.com/questions/933754/why-does-windows-10-shut-down-hourly-with-initiated-power-off-on-behalf-of-nt-a)

1. regedit
2. HKLM/SYSTEM/CurrentControlSet/Services/sppsvc
3. Set dword Start = 4
4. Reboot

Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sppsvc -Name Start -Value 4 -Type DWord

Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\Software\MyApp -Name MyKey -Value 1 -Type DWord


