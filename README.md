# logonhours
set log on hours for user in active directory

This Script on Powershell was to set time work for user to connect to the network .
This file is for system administrator that controll on AD.

Description:

##Connect to ActiveDirectory on DC
Import-Module ActiveDirectory

##Choice where the OU users
$ou = "ou=ou,dc=domain,dc=co,dc=il"

##Set the time to 8AM to 5PM in Israel Time
[byte[]]$hours = @(192,255,0,192,255,0,192,255,0,192,255,0,192,255,0,0,0,0,0,0,0)

##choice which user was set the time connect
$name = "name of the user"

##Set the user and change the time of the connect
Get-ADUser -Identity $name | Set-ADUser -Replace @{logonhours = $hours}
