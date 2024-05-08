#This is an Azure Montreal College Tutorial for Storage Account creation--->Storage Container name Creation--->Storage Blob Creation
locals{ 
  cluster_names=["Abidjan","Man",Bassam","Daloa","Sanpedro"]
}
resource "azurerm_resource_group" "Abidjan" {
  name     = "konan_MCIT_resource_group"
  location = "Canada Central"
}
