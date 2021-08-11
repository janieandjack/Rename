$drive = Get-BitLockerVolume | ?{$_.KeyProtector | ?{$_.KeyProtectorType -eq 'RecoveryPassword'}} | select -f 1

If (!$drive) {$drive = Add-BitLockerKeyProtector -MountPoint C: -RecoveryPasswordProtector}

$key = $drive | select -exp KeyProtector | ?{$_.KeyProtectorType -eq 'RecoveryPassword'} | select -f 1

BackupToAAD-BitLockerKeyProtector $drive.MountPoint $key.KeyProtectorId