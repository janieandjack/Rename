$Domain = 'janieandjack.com' ## put domain name here
$password = "V1scount9!" | ConvertTo-SecureString -asPlainText -Force
$username = "$janieandjack\doc" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -Domain $Domain -Credential $Credential
