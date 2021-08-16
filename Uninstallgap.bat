@echo off

>c:\temp\uninstall.txt 2>&1 (

MKDIR C:\Temp

c:\windows\system32\ccmsetup\ccmsetup.exe /uninstall 

timeout /t 45

msiexec /uninstall GlobalProtect64.msi /quiet

timeout /t 45

"C:\Program Files (x86)\Juniper Networks\Junos Pulse\PulseUninstall.exe" /silent=1

timeout /t 45

"C:\Program Files (x86)\Pulse Secure\Pulse\PulseUninstall.exe" /silent=1
)
