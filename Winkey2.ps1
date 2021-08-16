powershell "(Get-WmiObject -query 'select * from SoftwareLicensingService').OA3xOriginalProductKey" | Out-File -FilePath C:\temp\winkey.txt

$WK = Get-Content C:\temp\winkey.txt

slmgr /ipk $WK | Out-File -FilePath C:\temp\log.txt