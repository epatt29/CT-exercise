$templateFile = "Templates\azuredeploy.json"
$parameterFile="azuredeploy.parameters.json"
$today=Get-Date -Format "MM-dd-yyyy"
$deploymentName="VMDeployment-"+"$today"
New-AzResourceGroupDeployment `
  -Name $deploymentName `
  -TemplateFile $templateFile `
  -TemplateParameterFile $parameterFile