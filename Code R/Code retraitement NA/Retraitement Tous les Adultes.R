#Retraitement des ressources 1 à 4
for (i in 628:631){
  for (j in 1:nrow(adulteTotal)){  
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

#Retraitement de la ressource 6
for (j in 1:nrow(adulteTotal)){  
  if(is.na(adulteTotal[j,633])){adulteTotal[j,633]<-0}
}

#Retraitement du revenu annuel
for (j in 1:nrow(adulteTotal)){  
  if(is.na(adulteTotal[j,641])){adulteTotal[j,641]<-0}
}

#Retraitement sur le lieu de résidence et le type d'habitat
for (i in 723:724){
  for (j in 1:nrow(adulteTotal)){  
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

#Retraitement sur l'habitat
for (j in 1:nrow(adulteTotal)){  
  if(is.na(adulteTotal[j,726])){adulteTotal[j,726]<-0}
}

#Retraitement sur le statut d'occupation du logement
for (j in 1:nrow(adulteTotal)){  
  if(is.na(adulteTotal[j,728])){adulteTotal[j,728]<-0}
}

#Chauffage + chauffage d'appoint dans les chambres
for (i in 734:758){
  for(j in 1:nrow(adulteTotal)){
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

#Accessibilité + détecteur
for (i in 783:825){
  for(j in 1:nrow(adulteTotal)){
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

#Cuisine robinet
for (i in 861:864){
  for(j in 1:nrow(adulteTotal)){
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

#Cuisine protection cuisson
for(j in 1:nrow(adulteTotal)){
  if(is.na(adulteTotal[j,860])){adulteTotal[j,860]<-0}
}

#Cusine sécurité enfant
for(j in 1:nrow(adulteTotal)){
  if(is.na(adulteTotal[j,865])){adulteTotal[j,865]<-0}
}

#Rangement sdb
for (i in 910:914){
  for(j in 1:nrow(adulteTotal)){
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

#Lit enfant chambre
for (i in 850:853){
  for(j in 1:nrow(adulteTotal)){
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

#Garage
for (i in 969:977){
  for(j in 1:nrow(adulteTotal)){
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}