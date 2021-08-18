@echo off
SETLOCAL EnableDelayedExpansion

:: Input here the additional suffix
set suffix=corp.gymboree.com

:: Get existing DNS suffixes
FOR /F "usebackq tokens=1,2* delims= " %%A in (`reg QUERY HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters /V SearchList ^| findstr REG_SZ`) do ( 
    set OLD_DNS=%%C
)

:: Check if it starts with our suffix
set OK=NO
FOR /F "tokens=1,2* delims=," %%A in ("%OLD_DNS%") do (
    if "%%A" == "%suffix%" set OK=YES
)

:: Add our suffix first if it's not there
if "%OK%" == "NO" (
    echo Conf KO: %OLD_DNS%
    reg add HKLM\SYSTEM\CurrentControlSet\services\Tcpip\Parameters /V SearchList /D "%suffix%,%OLD_DNS%" /F
) else (
    echo Conf OK: %OLD_DNS%
)

ipconfig /flushdns