// ******************** HOMEWORK ************************



1
variable "nested_map" {
  type = map(map(string))
  default = {
    group1 = {"name" = "Alice", "age" = "25"}
    group2 = {"name" = "Bob", "age" = "30"}
    group3 = {"name" = "Charlie", "age" = "35"}
  }
}

2
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
