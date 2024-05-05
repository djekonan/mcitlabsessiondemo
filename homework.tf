// ******************** HOMEWORK ************************
variable "total_output" {
  type    = list(string)
  default = ["150", "150", "150"]
}

locals {
  incremented_output = [for num in var.total_output : tostring(tonumber(num) + 10)]
}

output "incremented_output" {
  value = local.incremented_output
}
