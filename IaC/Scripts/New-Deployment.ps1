$templateFile = "Templates\azuredeploy.json"
$parameterFile="azuredeploy.parameters.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="VMDeployment-"+"$today"
New-AzResourceGroupDeployment `
  -ResourceGroupName "VMs_RSG"
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile