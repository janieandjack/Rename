MKDIR c:\temp

cd c:\temp

wmic path SoftwareLicensingService get OA3xOriginalProductKey > c:\temp\winkey.txt

for /r %%v in (*.txt) do @type "%%v" |find "OA3xOriginalProductKey" /i /v >> "c:\temp\newwinkey.txt"

FOR /F %%h IN (c:\temp\newwinkey.txt) DO Set WK=%%h

Set "WINKEY=%WK%"

cscript //B "%windir%\system32\slmgr.vbs" /ipk %WINKEY%
