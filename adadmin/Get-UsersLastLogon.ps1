# List users last logon date. Least recent first order.
get-ADuser -Filter * -properties lastlogon | Sort-Object LastLogon | select name,@{n='LastLogon';e={[DateTime]::FromFileTime($_.lastlogon)}}
