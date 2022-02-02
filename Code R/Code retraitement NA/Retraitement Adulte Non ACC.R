#Retraitement des ressources 1 à 4
for (i in 630:633){
  for (j in 1:nrow(tableAduNonAcc)){  
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

#Retraitement de la ressource 6
for (j in 1:nrow(tableAduNonAcc)){  
  if(is.na(tableAduNonAcc[j,635])){tableAduNonAcc[j,635]<-0}
}

#Retraitement du revenu annuel
for (j in 1:nrow(tableAduNonAcc)){  
  if(is.na(tableAduNonAcc[j,643])){tableAduNonAcc[j,643]<-0}
}

sqldf("SELECT DISTINCT revenu_annuel_lst
      FROM tableAduNonAcc")

#Retraitement sur le lieu de résidence et le type d'habitat
for (i in 725:726){
  for (j in 1:nrow(tableAduNonAcc)){  
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

#Retraitement sur l'habitat
for (j in 1:nrow(tableAduNonAcc)){  
  if(is.na(tableAduNonAcc[j,728])){tableAduNonAcc[j,728]<-0}
}

#Retraitement sur le statut d'occupation du logement
for (j in 1:nrow(tableAduNonAcc)){  
  if(is.na(tableAduNonAcc[j,730])){tableAduNonAcc[j,730]<-0}
}


#Chauffage + chauffage d'appoint dans les chambres
for (i in 736:760){
  for(j in 1:nrow(tableAduNonAcc)){
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

#Accessibilité + détecteur
for (i in 785:827){
  for(j in 1:nrow(tableAduNonAcc)){
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

#Cuisine protection
for (i in 863:866){
  for(j in 1:nrow(tableAduNonAcc)){
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

#Cuisine protection cuisson
for(j in 1:nrow(tableAduNonAcc)){
  if(is.na(tableAduNonAcc[j,862])){tableAduNonAcc[j,862]<-0}
}
#Cuisine protection enfant
for(j in 1:nrow(tableAduNonAcc)){
  if(is.na(tableAduNonAcc[j,867])){tableAduNonAcc[j,867]<-0}
}

#SDB rangement
for (i in 912:916){
  for(j in 1:nrow(tableAduNonAcc)){
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

#Lit enfant chambre
for (i in 853:855){
  for(j in 1:nrow(tableAduNonAcc)){
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

#Garage
for (i in 971:979){
  for(j in 1:nrow(tableAduNonAcc)){
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}