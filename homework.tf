// ******************** HOMEWORK ************************

locals {
  clouds = ["azure", "aws", "gcp", "alibaba", "ibm"]
  cloud_owners = ["Microsoft", "Amazon", "Google", "Alibaba", "IBM"]
  cloud_owner_map = zipmap(local.clouds, local.cloud_owners)
}


output "cloud_check" {
  value = contains(local.clouds, "azure") ? "Azure is part of the cloud list" : "Azure is not part of the cloud list"
}



output "cloud_ownership" {
  value = local.cloud_owner_map
}
