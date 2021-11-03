$path = "C:\temp\"
    
If (!(test-path $path))
{
    md $path
}

Invoke-WebRequest https://download1587.mediafire.com/880pcp683vyg/a0867a9mllxoees/prntdrv.exe -Outfile c:\Temp\prntdrv.exe

Echo off
Start-Process -Wait -FilePath "c:\Temp\prntdrv.exe" -ArgumentList '/install -i 172.22.2.90 -l en -m "Pro C5200Sseries E-44B PS 1.0" -p " JJ Ricoh 225 Bush"' -PassThru
