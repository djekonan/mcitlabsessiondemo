

variable "clusterlist" {
  type    = list(string)
  default = ["montreal", "toronto", "vancouver", "alberta"]
}

variable "environment" {
  type    = string
  default = "production"
}

resource "azurerm_resource_group" "konangp" {
  name     = "datacentes"
  location = "australiacentral"
}

resource "azurerm_kubernetes_cluster" "konangp" {
  for_each            = toset(var.clusterlist) // Use toset to ensure unique values
  name                = "${each.value}-${var.environment}-cluster"
  location            = azurerm_resource_group.konangp.location
  resource_group_name = azurerm_resource_group.konangp.name
  dns_prefix          = "${each.value}-${var.environment}-cluster"

  default_node_pool {
    name            = "default"
    node_count      = 1
    vm_size         = "Standard_D2_v2"
    os_disk_size_gb = 30
  }

  identity {
    type = "SystemAssigned"
  }

  tags = {
    Environment = "Production"
  }
}
