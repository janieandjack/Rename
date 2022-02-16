set arg1=%arg1
set arg2=%arg2
net user %arg1% %arg2% /add /y
net localgroup "Administrators" %aeg1% /add /y
