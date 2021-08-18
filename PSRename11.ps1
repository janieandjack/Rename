$serial = Get-WmiObject Win32_BIOS | Select-Object -ExpandProperty serialnumber

Rename-Computer -NewName "JJ-$serial" -DomainCredential doc #-Restart
