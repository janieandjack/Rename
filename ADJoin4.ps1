set arg1=%1
set arg2=%2
set arg3=%3

$domain = %arg1$
$password = %arg2% | ConvertTo-SecureString -asPlainText -Force
$username =  %arg3% 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential
