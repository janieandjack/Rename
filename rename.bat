setlocal
for /f "tokens=2 delims==" %%J in ('wmic bios get serialnumber /value') do Set SN=%%J
set "newname=JJ-%SN%"
wmic computersystem where name="%computername%" call rename name="%newname%"
endlocal