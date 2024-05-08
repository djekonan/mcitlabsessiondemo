#This is an Azure Montreal College Tutorial for Storage Account creation--->Storage Container name Creation--->Storage Blob Creation
locals{ 
  cluster_names=["k8batcha06","k9batcha06","k10batcha06","k11batcha06","k12batcha06"]
}
resource "azurerm_resource_group" "azurekongroup" {
  name     = "MCIT_konan_group"
  location = "Canada Central"
}
