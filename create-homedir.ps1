## save the password in an encrypted file 

$credential = Get-Credential

$newuser = Read-Host -Prompt "Enter new username to create:"

#$credential.Password | ConvertFrom-SecureString | Out-File C:\myaccount.txt

## Connect to Unity 

$unity300 = 'ip.address.of.storage'
$username = 'admin'
$password = Get-Content C:\myaccount.txt | ConvertTo-SecureString

Connect-Unity -Server $unity300 -Username $username -Password $password

## Create home directory with quote of 10gb.

#Get-Unityitem -URI '/api/types/dnsServer/instances?fields=id,addresses' -JSON

New-UnityCIFSShare -Filesystem homedir -Name $newuser 

$Date = Get-Date

Write-Host " '$newuser' was created on '$Date'" 
