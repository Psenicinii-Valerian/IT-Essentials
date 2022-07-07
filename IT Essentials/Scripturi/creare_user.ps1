write-host "Introduceti numele utilizatoului"
$Name = Read-host
write-host "Introduceti parola pentru &Name user: "
$pass = Read-host -AsSecureString
write-host "Introduceti descrierea"
$Desc = Read-host
New-LocalUser $Name -Password $Pass -description $Desc

