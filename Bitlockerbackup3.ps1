BackupToAAD-BitLockerKeyProtector -MountPoint "C:" -KeyProtectorId ((Get-BitLockerVolume -MountPoint "C:" ).KeyProtector | where {$_.KeyProtectorType -eq "RecoveryPassword" }).KeyProtectorId
