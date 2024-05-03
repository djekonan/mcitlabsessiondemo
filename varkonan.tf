variable "countries" {
  default = ["Belgigue", "Chine","Italie","France","Suisse",]
}
variable "countries_string" {
    value = ' + '.join(var.countries)
}
