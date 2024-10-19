variable "resource_group_name" {}
variable "location" {}
variable "acr_name" {}
variable "cluster_name" {}
variable "dns_prefix" {}
variable "node_count" {}
variable "vm_size" {}
variable "vault_name" {}
variable "tenant_id" {}
variable "service_plan_name" {}
variable "app_name" {}
variable "tier" {}
variable "size" {}
variable "tags" {
  type = map(string)
}

