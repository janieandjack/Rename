$domain = $faronics1
$password = $faronics2 | ConvertTo-SecureString -asPlainText -Force
$username =  $faronics3 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential
