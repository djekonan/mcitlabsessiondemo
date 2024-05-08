#This is an Azure Montreal College Tutorial for Storage Account creation--->Storage Container name Creation--->Storage Blob Creation
locals{ 
  cluster_names=["k8batcha06","k9batcha06","k10batcha06","k11batcha06","k12batcha06"]
}
resource "azurerm_resource_group" "azureresourcegroup" {
  name     = "MCIT_konan_group"
  location = "Canada Central"
}
resource "azurerm_kubernetes_cluster" "batchabcd" {
  for_each            = {for cluster in local.cluster_names: cluster=>cluster}
  name                = "${var.prefix}cluster"
  location            = azurerm_resource_group.azureresourcegroup.location
  resource_group_name = azurerm_resource_group.azureresourcegroup.name
  dns_prefix          = "exampleaks1"
              }
  default_node_pool {
    name       = "default"
    node_count = 1
    vm_size    = "Standard_D2_v2"
  }
