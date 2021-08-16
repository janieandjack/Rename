>c:\temp\uninstall.txt 2>&1 (

MKDIR C:\Temp

c:\windows\ccmsetup\ccmsetup.exe /uninstall 

timeout /t 30

"C:\Program Files (x86)\Pulse Secure\Pulse\PulseUninstall.exe" /silent=1

timeout /t 30

"%ProgramFiles%\Aruba Networks\ClearPassOnGuard\uninst.exe" -exit

)
