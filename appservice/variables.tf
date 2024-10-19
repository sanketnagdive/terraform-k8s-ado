variable "service_plan_name" {}
variable "app_name" {}
variable "location" {}
variable "resource_group_name" {}
variable "tier" {
  default = "Standard"
}
variable "size" {
  default = "S1"
}

