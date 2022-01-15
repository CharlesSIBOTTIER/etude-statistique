for (i in 630:633){
  for (j in 1:nrow(tableAdulteACC)){  
    if(is.na(tableAdulteACC[j,i])){tableAdulteACC[j,i]<-0}
  }
}

for (j in 1:nrow(tableAdulteACC)){  
  if(is.na(tableAdulteACC[j,635])){tableAdulteACC[j,635]<-0}
}


for (j in 1:nrow(tableAdulteACC)){  
  if(is.na(tableAdulteACC[j,643])){tableAdulteACC[j,643]<-0}
}

for (i in 713:714){
  for (j in 1:nrow(tableAdulteACC)){  
    if(is.na(tableAdulteACC[j,i])){tableAdulteACC[j,i]<-0}
  }
}

for (j in 1:nrow(tableAdulteACC)){  
  if(is.na(tableAdulteACC[j,716])){tableAdulteACC[j,716]<-0}
}

for (j in 1:nrow(tableAdulteACC)){  
  if(is.na(tableAdulteACC[j,718])){tableAdulteACC[j,718]<-0}
}

#Chauffage + chauffage d'appoint dans les chambres
for (i in 736:760){
  for(j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){tableAdulteACC[j,i]<-0}
  }
}

#Accessibilité + détecteur
for (i in 785:827){
  for(j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){tableAdulteACC[j,i]<-0}
  }
}

#Cuisine protection
for (i in 863:866){
  for(j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){tableAdulteACC[j,i]<-0}
  }
}

#Cuisine protection cuisson
for(j in 1:nrow(tableAdulteACC)){
  if(is.na(tableAdulteACC[j,862])){tableAdulteACC[j,862]<-0}
}
#Cuisine protection enfant
for(j in 1:nrow(tableAdulteACC)){
  if(is.na(tableAdulteACC[j,867])){tableAdulteACC[j,867]<-0}
}

#SDB rangement
for (i in 912:916){
  for(j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){tableAdulteACC[j,i]<-0}
  }
}

#Lit enfant chambre
for (i in 853:855){
  for(j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){tableAdulteACC[j,i]<-0}
  }
}

#Garage
for (i in 971:979){
  for(j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){tableAdulteACC[j,i]<-0}
  }
}