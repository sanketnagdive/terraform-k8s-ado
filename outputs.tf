output "acr_login_server" {
  value = module.acr.acr_login_server
}

output "aks_kube_admin_config" {
  value = module.aks.kube_admin_config
}

output "keyvault_uri" {
  value = module.keyvault.vault_uri
}

output "app_service_hostname" {
  value = module.appservice.app_service_default_site_hostname
}

