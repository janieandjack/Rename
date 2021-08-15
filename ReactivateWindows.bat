MKDIR c:\temp

wmic path SoftwareLicensingService get OA3xOriginalProductKey > c:\temp\winkey.txt

cd c:\temp

for /r %%a in (*.txt) do @type "%%a" |find "OA3xOriginalProductKey" /i /v >> "c:\temp\newwinkey.txt"

FOR /F %%i IN (c:\temp\newwinkey.txt) DO Set WK=%%i

Set "WINKEY=%WK%"

slmgr /ipk %WINKEY%

del C:\temp\winkey.txt

del C:\temp\newwinkey.txt

