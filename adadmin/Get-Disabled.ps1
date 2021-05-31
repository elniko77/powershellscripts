#
# Obtener una lista de los usuarios deshabilitados del dominio.
# Pasar como parametro el usuario con el cual autenticarse.
# Ej: .\Get-Disabled.ps1 labdomain\administrator

$asuser=$args[0]

Get-ADUser -Filter {Enabled -eq $false} -Credential $asuser | FT samAccountName, GivenName,  Surname