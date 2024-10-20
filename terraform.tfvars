# Resource Group Configuration
resource_group_name = "test-resource-group"
location            = "East US"

# Azure Container Registry Configuration
acr_name           = "myacr1234"  # Must be unique
sku                 = "Basic"

# AKS Configuration
cluster_name       = "myakscluster"
dns_prefix         = "myaks"
node_count         = 3
vm_size            = "Standard_DS2_v2"

# Key Vault Configuration
vault_name         = "mykeyvault234"  # Must be unique
tenant_id          = "<your-tenant-id>"  # Your Azure tenant ID

# App Service Configuration
service_plan_name   = "myappserviceplan"
app_name            = "myappservice1234"  # Must be unique
tier                = "Standard"
size                = "S1"

# Tags (optional)
tags = {
  Environment = "Dev"
  Project     = "MyProject"
}

