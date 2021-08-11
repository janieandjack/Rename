$keyID = Get-BitLockerVolume -MountPoint c: | select -ExpandProperty keyprotector | 
            where {$_.KeyProtectorType -eq 'RecoveryPassword'}
BackuptoAAD-BitLockerKeyProtector -MountPoint c: -KeyProtectorId $keyID.KeyProtectorId