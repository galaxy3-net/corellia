# corellia

Set-ExecutionPolicy -ExecutionPolicy Bypass -Scope Process -force ;  .\winrm.ps1

[Turn off Windows licensing](https://superuser.com/questions/933754/why-does-windows-10-shut-down-hourly-with-initiated-power-off-on-behalf-of-nt-a)

1. regedit
2. HKLM/SYSTEM/CurrentControlSet/Services/sppsvc
3. Set dword Start = 4
4. Reboot


[Turn Off Automatic Activation pop-up](https://thegeekpage.com/how-to-turn-off-automatic-activation-pop-up-in-windows-10/#:~:text=How%20to%20turn%20off%20Automatic%20Activation%20pop-up%20in,1%20%E2%80%9D%20and%20click%20on%20%E2%80%9C%20OK%20%E2%80%9C.)


Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sppsvc -Name Start -Value 4 -Type DWord

Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\Software\MyApp -Name MyKey -Value 1 -Type DWord


