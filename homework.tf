// ******************** HOMEWORK ************************

locals {
  clouds = ["azure", "aws", "gcp"]
  cloud_owners = ["Microsoft", "Amazon", "Google"]
  cloud_owner_map = zipmap(local.clouds, local.cloud_owners)
}

output "cloud_ownership" {
  value = local.cloud_owner_map
}

output "cloud_check" {
  value = contains(local.clouds, "azure") ? "Azure is part of the cloud list" : "Azure is not part of the cloud list"
}



output "cloud_ownership" {
  value = local.cloud_owner_map
}
