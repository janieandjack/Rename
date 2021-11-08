## Sets temp path to download driver
$path = "C:\temp\"

## Checks to see if temp path exists and creates it if it doesn't    
If (!(test-path $path))
{
    md $path
}

## Checks to see if old printers are installed and removes them if they are
If (!(Get-Printer -Name " JJ Ricoh 225 Bush*"))
{

    $Printer = Get-Printer -Name " JJ Ricoh 225 Bush*"

    Remove-Printer -InputObject $Printer
}

If (!(Get-Printer -Name "JJ Ricoh 225 Bush*"))
{

    $Printer = Get-Printer -Name "JJ Ricoh 225 Bush*"

    Remove-Printer -InputObject $Printer
}

## Downloads zip to temp folder and expands
Invoke-WebRequest https://d1m2uyedaojrqy.cloudfront.net/FSO/ricoh/Pro1619/Wind116/cs-cz/v1.0/Ricoh_E-44B_v1_0RX_FD63_WinRel1.zip -Outfile c:\Temp\prntdrv.zip
Expand-Archive -LiteralPath c:\Temp\prntdrv.zip -DestinationPath C:\Temp -Force

## Installs Printer
Start-Process -Wait -FilePath "c:\Temp\prntdrv.exe" -ArgumentList '/install -i 172.22.2.90 -l en -m "Pro C5200Sseries E-44B PS 1.0" -p "JJ Ricoh 225 Bush"' -PassThru
