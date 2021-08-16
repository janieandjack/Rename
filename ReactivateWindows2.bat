MKDIR c:\temp

cd c:\temp

wmic path SoftwareLicensingService get OA3xOriginalProductKey > c:\temp\winkey.txt

FOR /F %%a IN (c:\temp\winkey.txt) DO Set WK=%%a

Set "WINKEY=%WK%"

cscript //B "%windir%\system32\slmgr.vbs" /ipk %WINKEY%
