$Password = Read-Host -AsSecureString
New-LocalUser "User000" -Password &Pass -FullName "Third User"