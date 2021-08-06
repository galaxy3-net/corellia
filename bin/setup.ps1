clear
$scriptList = @(
    '.\CreateWindowsAccounts.ps1'
    '.\Dont-DisplayLastUsername.ps1'
    '.\Set-PrivateNetwork.ps1'
)

$jobs = foreach ($script in $scriptList) {
    Start-Job -FilePath $script
}

$jobs | Wait-Job | Receive-Job

Set-ItemProperty -Path Registry::HKEY_LOCAL_MACHINE\SYSTEM\CurrentControlSet\Services\sppsvc -Name Start -Value 4 -Type DWord

#  https://stackoverflow.com/questions/57932053/calling-other-powershell-scripts-within-a-powershell-script