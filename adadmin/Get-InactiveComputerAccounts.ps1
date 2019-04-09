#Get-InactiveComputerAccounts.ps1 
#List Computer objects who have been inactive for $daysinactive days.

Import-Module ActiveDirectory

$daysinactive=240

$Time = (Get-Date).Adddays(-($daysinactive))
Search-ADAccount -AccountInactive -Computer -Date $Time | where {$_.LastLogonDate -ne $null} | Select-Object name, LastLogonDate 


