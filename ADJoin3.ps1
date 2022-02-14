$domain = "jandj.com"
$password = "Sw1ngwa55" | ConvertTo-SecureString -asPlainText -Force
$username = "jandj\doc" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -DomainName $domain -Credential $credential
