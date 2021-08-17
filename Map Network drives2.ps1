psexec -i $us = Read-Host 'Enter Your User Name:' -AsSecureString
psexec -i $pw = Read-Host 'Enter Your Password:' -AsSecureString


cmdkey.exe /add:corpfs24 /user:gymboree\$us /pass:$pw
cmdkey.exe /add:Corpfs20 /user:gymboree\$us /pass:$pw
cmdkey.exe /add:Corp-fs-02 /user:gymboree\$us /pass:$pw
cmdkey.exe /add:Corpmom1 /user:gymboree\$us /pass:$pw
cmdkey.exe /add:Corpmfs0 /user:gymboree\$us /pass:$pw
cmdkey.exe /add:Corppdm20 /user:gymboree\$us /pass:$pw
cmdkey.exe /add:Corpvc21 /user:gymboree\$us /pass:%$pw
cmdkey.exe /add:Corpqt21 /user:gymboree\$us /pass:$pw
cmdkey.exe /add:Corpqt40-test /user:gymboree\$us /pass:$pw
