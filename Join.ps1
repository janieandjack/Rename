for /f "tokens=2 delims==" %%J in ('wmic bios get serialnumber /value') do Set SN=%%J
set newname=JJ-%SN%
wmic computersystem where name="%computername%" call rename name="%newname%"

$Domain = 'janieandjack.com' ## put domain name here
$password = "V1scount9!" | ConvertTo-SecureString -asPlainText -Force
$username = "$janieandjack\doc" 
$credential = New-Object System.Management.Automation.PSCredential($username,$password)
Add-Computer -Domain $Domain -Credential $Credential