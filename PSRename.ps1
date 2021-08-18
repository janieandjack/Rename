Get-WmiObject win32_bios | select Serialnumber | Out-File -FilePath c:\temp\SK.txt

$serial = Get-Content c:\temp\SK.txt | Select -Index 3

Rename-Computer -NewName "JJ-ComputerName" -LocalCredential JJadmin -Restart

del c:\temp\SK.txt