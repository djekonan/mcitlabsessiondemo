locals{
  servicename="abracadabra"
  forum="abracadabramcit"
 first_name= "konan "
 last_name= "hyacinthe "
 city= "Victoriaville "

  lengthsa=length(local.servicename)
  lengthforum=length(local.forum)
}
output "print"{
    value = local.first_name
}
output "print"{
    value = local.last_name
}
output "print"{
    value = local.city_name
}
output "print"{
    value = local.servicename
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
