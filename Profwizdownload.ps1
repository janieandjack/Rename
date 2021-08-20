$path = "C:\temp\"
    
If (!(test-path $path))
{
    md $path
}

Invoke-WebRequest https://github.com/ellesaidh/Rename/blob/main/Profwiz.msi?raw=true -Outfile c:\Temp\Profwiz.msi