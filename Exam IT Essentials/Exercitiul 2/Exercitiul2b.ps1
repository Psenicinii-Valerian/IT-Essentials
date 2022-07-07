New-LocalUSer -name "Test" -Description "Test exam" -FullName "Tester" -nopassword
Add-LocalGroupMember -Group "Administrators" -Member "Test"
Set-LocalUser -name "Test" -AccountExpires "01/26/2022 20:55"