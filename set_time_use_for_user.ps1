Import-Module ActiveDirectory
$ou = "ou=test,dc=LearnSystem,dc=co,dc=il"
[byte[]]$hours = @(192,255,0,192,255,0,192,255,0,192,255,0,192,255,0,0,0,0,0,0,0)
$name = "tal"
Get-ADUser -Identity $name | Set-ADUser -Replace @{logonhours = $hours}
