// ******************** HOMEWORK ************************



variable "nested_map" {
  type = map(map(string))
  default = {
    group1 = {"name" = "Alice", "age" = "25"}
    group2 = {"name" = "Bob", "age" = "30"}
    group3 = {"name" = "Charlie", "age" = "35"}
  }
}


variable "total_output" {
  type    = list(string)
  default = ["150", "150", "150"]
}

variable "winterlistOfSports" {
  type    = list(string)
  default = ["icehockey", "snowboarding", "iceskating"]
}

locals {
  extensive = length(var.winterlistOfSports) > 3
}
locals {
  clouds = ["azure", "aws", "gcp"]
}

output "updated_nested_map" {
  value = var.nested_map
}
output "incremented_output" {
  value = local.incremented_output
}

locals {
  incremented_output = [for num in var.total_output : tostring(tonumber(num) + 10)]
}
output "Winter_sports_list_status" {
  value = local.extensive ? "Winter sports list is extensive" : "Winter sports list is limited"
}

output "cloud_check" {
  value = contains(local.clouds, "azure") ? "Azure is part of the cloud list" : "Azure is not part of the cloud list"
}
