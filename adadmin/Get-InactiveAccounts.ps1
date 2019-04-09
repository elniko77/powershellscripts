#Get-InactiveAccounts.ps1 
#List users who have been inactive for $daysinactive days.

Import-Module ActiveDirectory
$Time = (Get-Date).Adddays(-(180))
Search-ADAccount -AccountInactive -UsersOnly -Date $Time | where {$_.LastLogonDate -ne $null} 
# if you want to disable:
#Search-ADAccount -AccountInactive -UsersOnly -Date $Time | where {$_.LastLogonDate -ne $null} | Disable-ADAccount


