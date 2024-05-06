// ******************** HOMEWORK ************************

locals {
  clouds = ["azure", "aws", "gcp"]
  cloud_owners = ["Microsoft", "Amazon", "Google"]
  cloud_owner_map = zipmap(local.clouds, local.cloud_owners)
}

Locals {
  konan = [[1,2,3],[1,2],[1,2,3,4],[1,2,3,4,5]]
  flatkonan = flatten(local.konan)
  sumkonfat = sum(local.flatkonan)
}


output "cloud_check" {
  value = contains(local.clouds, "azure") ? "Azure is part of the cloud list" : "Azure is not part of the cloud list"
}
output "flatkonan" {
  value = local.flatkonan
}

output "sumkonfat" {
  value = local.sumkonfat
}



output "cloud_ownership" {
  value = local.cloud_owner_map
}
