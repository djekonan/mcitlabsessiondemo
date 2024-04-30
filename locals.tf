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

output "printcity"{
    value = local.city
}
output "printlastname"{
    value = local.lastname
}

output "printcity"{
    value = local.city
}
output "printfirstname"{
    value = local.firstname
}


