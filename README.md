# CT-exercise
DevOps IaC assignment

# Deployment Procedure
Go to Actions > Deployment and Configuration of Azure VM > (Run workflow) Run workflow

# Notes
Pretty much 95% of the stuff in this exercise is not original content coming from my brain onto the screen. I've used pre-existing quick-start templates and built my scripts from there, because I feel this to be the efficient use of time. Not only does automation save hours; it saves time to recognize that there are other extremely smart people out in the world (probably smarter than me!) who have done this before and (as such) deserve recognition. Here are the initial sources for a lot of my work that I've adapted for the purpose of this technical exercise:
* "How to use GitHub Actions to deploy an Azure Virtual Machine" by Sarah Lean - https://techcommunity.microsoft.com/t5/itops-talk-blog/how-to-use-github-actions-to-deploy-an-azure-virtual-machine/ba-p/1092015
* "Azure Quickstart Template - Very simple deployment of a Linux Ubuntu VM" - https://github.com/Azure/azure-quickstart-templates/tree/master/quickstarts/microsoft.compute/vm-simple-linux
* "Azure Quickstart Template - Deploy a LAMP app on Ubuntu" - https://github.com/Azure/azure-quickstart-templates/tree/master/demos/lamp-app

# Assumptions:
* Cloud service provider - Microsoft Azure
* Underlying infrastructure has already been provisioned - "Networking_RSG" resource group, "VNET01" virtual network, "VMs" subnet, "VNET01-VMs_NSG" network security group, "VMs_RSG" resource group
* Operating System - Ubuntu
* Only file requiring edits between deployments - IaC\azuredeploy.parameters.json

# High-level process executed by GitHub Action:
* Checkout exercise repo
* Authenticate to Azure
* Provision associated resources
* Invoke custom script extension to complete a silent install of Apache, MySQL, and PHP, then create basic PHP page.

# Goals to improve automation
* Push updates to VMs based on a successful GitHub pull