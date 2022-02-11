#Retraitement des ressources 1 à 4
for (i in 798:801){
  for (j in 1:nrow(tablePaACC)){  
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Retraitement de la ressource 6
for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,805])){tablePaACC[j,811]<-0}
}

#Retraitement du revenu annuel
for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,811])){tablePaACC[j,811]<-0}
}

#Retraitement sur le lieu de résidence et le type d'habitat
for (i in 893:894){
  for (j in 1:nrow(tablePaACC)){  
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Retraitement sur l'habitat
for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,896])){tablePaACC[j,896]<-0}
}

#Retraitement sur le statut d'occupation du logement
for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,898])){tablePaACC[j,898]<-0}
}

#Chauffage + chauffage d'appoint dans les chambres
for (i in 904:928){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Accessibilité + détecteur
for (i in 953:995){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Cuisine protection
for (i in 1031:1034){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Cuisine protection cuisson
for(j in 1:nrow(tablePaACC)){
  if(is.na(tablePaACC[j,1030])){tablePaACC[j,1030]<-0}
}

#Cuisine protection enfant
for(j in 1:nrow(tablePaACC)){
  if(is.na(tablePaACC[j,1035])){tablePaACC[j,1035]<-0}
}

#SDB rangement
for (i in 1078:1088){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Lit enfant chambre
for (i in 1020:1023){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

#Garage
for (i in 1139:1147){
  for(j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}