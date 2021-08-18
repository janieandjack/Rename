Get-WmiObject win32_bios | select Serialnumber | Out-File -FilePath c:\temp\SK.txt

$serial = Get-Content c:\temp\SK.txt | Select -Index 3 | Format-Wide | Out-String).trim()

#Rename-Computer -NewName "JJ-$serial" -Restart

#del c:\temp\SK.txt
