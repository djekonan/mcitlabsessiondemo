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
}
output "print"{
    value = local.servicename
}
output "printfirstname"{
    value = local.firstname
}
output "printlastname"{
    value = local.lastname
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

