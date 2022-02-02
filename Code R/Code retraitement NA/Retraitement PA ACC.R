#Retraitement des ressources 1 à 4
for (i in 630:633){
  for (j in 1:nrow(tablePaACC)){  
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Retraitement de la ressource 6
for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,635])){tablePaACC[j,635]<-0}
}

#Retraitement du revenu annuel
for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,643])){tablePaACC[j,643]<-0}
}

#Retraitement sur le lieu de résidence et le type d'habitat
for (i in 725:726){
  for (j in 1:nrow(tablePaACC)){  
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Retraitement sur l'habitat
for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,728])){tablePaACC[j,728]<-0}
}

#Retraitement sur le statut d'occupation du logement
for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,730])){tablePaACC[j,730]<-0}
}


#Chauffage + chauffage d'appoint dans les chambres
for (i in 736:760){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Accessibilité + détecteur
for (i in 785:827){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Cuisine protection
for (i in 863:866){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Cuisine protection cuisson
for(j in 1:nrow(tablePaACC)){
  if(is.na(tablePaACC[j,862])){tablePaACC[j,862]<-0}
}
#Cuisine protection enfant
for(j in 1:nrow(tablePaACC)){
  if(is.na(tablePaACC[j,867])){tablePaACC[j,867]<-0}
}

#SDB rangement
for (i in 912:916){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Lit enfant chambre
for (i in 853:855){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Garage
for (i in 971:979){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}