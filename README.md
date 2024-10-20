# terraform-k8s-ado
#terrraform modules
folder with name aks acr keyvault and appservice are terraform modules
main.tf is file from where we are calling terraform modules ,outputs.tf and variables.tf are variables and outputs which are reqired for modules
you can pass varaibles from terraform.tfvars file accordingly

# terraform ado
azure-pipeline.yml is pipeline form where we are executing IAC

# kubernetes
kubernetes folder consists of kuberentes manifest for deploymenyt, service , ingress and hpa

# ado for node based application deployment on app service
nodjs folder consists of simple nodejs application and created file azure-pipeline.yml inside same folder is pipeline to deploy application in app service, have using same appservice which is deployed by terraform

Note: further configuration required for smooth deployment of pipelines accordingly


