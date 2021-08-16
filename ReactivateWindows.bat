MKDIR c:\temp

cd c:\temp

wmic path SoftwareLicensingService get OA3xOriginalProductKey > c:\temp\winkey.txt

for /r %%a in (*.txt) do @type "%%a" |find "OA3xOriginalProductKey" /i /v >> "c:\temp\newwinkey.txt"

FOR /F "delims=" %%a IN (c:\temp\newwinkey.txt) DO Set WK=%%a

Set "WINKEY=%WK%"

cscript //B "%windir%\system32\slmgr.vbs" /ipk %WINKEY%
