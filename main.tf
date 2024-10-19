provider "azurerm" {
  features {}
}

resource "azurerm_resource_group" "rg" {
  name     = var.resource_group_name
  location = var.location
}

module "acr" {
  source              = "./acr"
  acr_name           = var.acr_name
  location           = var.location
  resource_group_name = azurerm_resource_group.rg.name
}

module "aks" {
  source              = "./aks"
  cluster_name       = var.cluster_name
  location           = var.location
  resource_group_name = azurerm_resource_group.rg.name
  dns_prefix         = var.dns_prefix
  node_count         = var.node_count
  vm_size            = var.vm_size
  tags               = var.tags
}

module "keyvault" {
  source              = "./keyvault"
  vault_name         = var.vault_name
  location           = var.location
  resource_group_name = azurerm_resource_group.rg.name
  tenant_id          = var.tenant_id
}

module "appservice" {
  source              = "./appservice"
  service_plan_name   = var.service_plan_name
  app_name            = var.app_name
  location           = var.location
  resource_group_name = azurerm_resource_group.rg.name
  tier               = var.tier
  size               = var.size
}

