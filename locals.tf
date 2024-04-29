locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  firstname="konan"
  lastname="hyacinthe"
  city="victoriaville"

  lengthsa=length(local.servicename)
  lengthforum=length(local.forum)
   lengthfirstname=length(local.firstname)
 lengthlastname=length(local.lastname)
 lengthcity=length(local.city)
 variable "company_name"{
type= string
defauft= "Montreal College Information Technology"
}
variable "yesar_of_establishment"{
type= number
defauft= "5"
}
variable "ifelsecheck"{
type= bool
defauft= "false"
}


}
output "company_name"{
    value = local.company_name
}
output "yesar_of_establishment"{
    value = local.yesar_of_establishment
}
output "ifelsecheck"{
    value = local.ifelsecheck
}
output "printcity"{
    value = local.city
}
output "secondprint"{
    value = local.forum
}
output "lengthfirstname"{
    value=local.lengthfirstname
}
output "lengthlastname"{
    value=local.lengthlastname
}
output "lengthcity"{
    value=local.lengthcity
}

