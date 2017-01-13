Login-AzureRmAccount

$rgName = "GettingStarted-Backup"

$vault = Get-AzureRmRecoveryServicesVault -Name "GettingStarted-BackupVault" | Set-AzureRmRecoveryServicesVaultContext
$pol = Get-AzureRmRecoveryServicesBackupProtectionPolicy -Name "DefaultWeeklyPolicy"

Get-AzureRmVM -ResourceGroupName $rgName | ForEach-Object {Enable-AzureRmRecoveryServicesBackupProtection -Policy $pol -ResourceGroupName $rgName -Name $_.Name}
