@echo Off
TITLE Download PS Script
Pause
MD C:\TempDL
CD C:\TempDL
curl https://raw.githubusercontent.com/ellesaidh/Rename/main/bitlocker.ps1 > bitlocker.ps1

PowerShell -NoProfile -ExecutionPolicy Bypass -Command "& {Start-Process PowerShell -ArgumentList '-NoProfile -ExecutionPolicy Bypass -File ""C:\TempDL\bitlocker.ps1""' -Verb RunAs}"