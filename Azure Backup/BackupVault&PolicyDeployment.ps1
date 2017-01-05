Login-AzureRmAccount

$location = "South Central US"
$rgName = "GettingStarted-Backup"

New-AzureRmResourceGroup -Location $location -Name $rgName -Verbose

New-AzureRmResourceGroupDeployment -ResourceGroupName $rgName -TemplateFile "azuredeploy.json" -TemplateParameterFile "azuredeploy.parameters.json" -Name "BackupDeployment" -Mode Incremental -Verbose
