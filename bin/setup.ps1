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

#  https://stackoverflow.com/questions/57932053/calling-other-powershell-scripts-within-a-powershell-script