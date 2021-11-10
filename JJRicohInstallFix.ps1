## Check to see if the temp folder exists and if not create it
$path = "C:\temp\"   
If (!(test-path $path))
{
    md $path
}

##Check to see if missnamed printers and copies are installed and remove them
DO
{ If (Get-Printer -Name " JJ Ricoh*")
{
    Get-Printer -Name " JJ Ricoh*" > "C:\temp\printers.txt"
    $Printer = (Get-Content C:\temp\printers.txt)[3].trim("                              Local        Pro C5200Sseries E-44B... IP_172.22.2.... False    False      Print ")
    Remove-Printer -Name " $Printer"
}
}
While (Get-Printer -Name " JJ Ricoh*")

##Check to see if copies are installed and remove them
DO
{ If (Get-Printer -Name "JJ Ricoh 225 Bush (Copy*)")
{
    Get-Printer -Name "JJ Ricoh 225 Bush (Copy*)" > "C:\temp\printers2.txt"
    $Printer = (Get-Content C:\temp\printers2.txt)[3].trim("                              Local        Pro C5200Sseries E-44B... IP_172.22.2.... False    False      Print ")
    Remove-Printer -Name "$Printer"
}
}
While (Get-Printer -Name "JJ Ricoh 225 Bush (Copy*)")

## if printer is already installed exit out of the script
If (Get-Printer -Name "JJ Ricoh 225 Bush")
{
    exit 5
}

## Download the driver, expand the zip
Invoke-WebRequest https://d1m2uyedaojrqy.cloudfront.net/FSO/ricoh/Pro1619/Wind116/cs-cz/v1.0/Ricoh_E-44B_v1_0RX_FD63_WinRel1.zip -Outfile c:\Temp\prntdrv.zip
Expand-Archive -LiteralPath c:\Temp\prntdrv.zip -DestinationPath C:\Temp -Force

## Installs Printer
Start-Process -Wait -FilePath "c:\Temp\prntdrv.exe" -ArgumentList '/install -i 172.22.2.90 -l en -m "Pro C5200Sseries E-44B PS 1.0" -p "JJ Ricoh 225 Bush"' -PassThru
