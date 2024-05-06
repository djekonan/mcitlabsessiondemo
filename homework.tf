// ******************** HOMEWORK ************************

locals {
  clouds = ["azure", "aws", "gcp"]
  cloud_owners = ["Microsoft", "Amazon", "Google"]
  cloud_owner_map = zipmap(local.clouds, local.cloud_owners)
}
locals {
  nested_list = [[1,2,3],[1,2],[1,2,3,4],[1,2,3,4,5]]
  flattened_list = flatten(local.nested_list)
  sum_of_elements = sum(local.flattened_list)
}


output "cloud_check" {
  value = contains(local.clouds, "azure") ? "Azure is part of the cloud list" : "Azure is not part of the cloud list"
}
output "flattened_list" {
  value = local.flattened_list
}

output "sum_of_elements" {
  value = local.sum_of_elements
}



output "cloud_ownership" {
  value = local.cloud_owner_map
}
