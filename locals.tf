locals{
  servicename="abracadabra"
  forum="abracadabramcit"
  firsname="konan"
  lastname="hyacinthe"
  city="victoriaville"
  lengthsa=length(local.servicename)
  lengthforum=length(local.forum)
}
output "print"{
    value = local.servicename
}

}
output "printfirsname"{
    value = local.firsname
}
output "printlastname{
    value = local.lastname
}
output "printcity{
    value = local.city
}
output "secondprint"{
    value = local.forum
}
output "lengthsa"{
    value=local.lengthsa
}
output "lengthforum"{
    value=local.lengthforum
}
