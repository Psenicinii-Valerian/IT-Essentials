write host "Introduceti numele procesului dorit"
&name = Read-host
write host "Introduceti locatia fisierului: "
&loc = Read-host
get-process | sort-object -Descending -Property &name | select-object - First 10 | Export-csv &loc