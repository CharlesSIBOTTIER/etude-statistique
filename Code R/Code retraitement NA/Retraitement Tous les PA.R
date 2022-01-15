for (i in 628:631){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}

for (j in 1:nrow(PATotal)){  
  if(is.na(PATotal[j,633])){PATotal[j,633]<-0}
}

for (j in 1:nrow(PATotal)){  
  if(is.na(PATotal[j,641])){PATotal[j,641]<-0}
}


for (i in 711:712){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}

for (j in 1:nrow(PATotal)){  
  if(is.na(PATotal[j,714])){PATotal[j,714]<-0}
}

for (j in 1:nrow(PATotal)){  
  if(is.na(PATotal[j,716])){PATotal[j,i]<-0}
}

#Chauffage + chauffage d'appoint dans les chambres
for (i in 734:758){
  for(j in 1:nrow(PATotal)){
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}

#Accessibilité + détecteur
for (i in 783:825){
  for(j in 1:nrow(PATotal)){
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}

#Cuisine robinet
for (i in 861:864){
  for(j in 1:nrow(PATotal)){
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}
#Cuisine protection cuisson
for(j in 1:nrow(PATotal)){
  if(is.na(PATotal[j,860])){PATotal[j,860]<-0}
}
#Cusine sécurité enfant
for(j in 1:nrow(PATotal)){
  if(is.na(PATotal[j,865])){PATotal[j,865]<-0}
}

#Rangement sdb
for (i in 910:914){
  for(j in 1:nrow(PATotal)){
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}

#Lit enfant chambre
for (i in 850:853){
  for(j in 1:nrow(PATotal)){
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}

#Garage
for (i in 969:977){
  for(j in 1:nrow(PATotal)){
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}