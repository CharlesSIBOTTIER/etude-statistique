for (i in 630:633){
  for (j in 1:nrow(tableEnfACC)){  
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-0}
  }
}

for (j in 1:nrow(tableEnfACC)){  
  if(is.na(tableEnfACC[j,635])){tableEnfACC[j,635]<-0}
}


for (j in 1:nrow(tableEnfACC)){  
  if(is.na(tableEnfACC[j,643])){tableEnfACC[j,643]<-0}
}

for (i in 713:714){
  for (j in 1:nrow(tableEnfACC)){  
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-0}
  }
}

for (j in 1:nrow(tableEnfACC)){  
  if(is.na(tableEnfACC[j,716])){tableEnfACC[j,716]<-0}
}

for (j in 1:nrow(tableEnfACC)){  
  if(is.na(tableEnfACC[j,718])){tableEnfACC[j,718]<-0}
}

#Chauffage + chauffage d'appoint dans les chambres
for (i in 736:760){
  for(j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-0}
  }
}

#Accessibilité + détecteur
for (i in 785:827){
  for(j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-0}
  }
}

#Cuisine protection
for (i in 863:866){
  for(j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-0}
  }
}

#Cuisine protection cuisson
for(j in 1:nrow(tableEnfACC)){
  if(is.na(tableEnfACC[j,862])){tableEnfACC[j,862]<-0}
}
#Cuisine protection enfant
for(j in 1:nrow(tableEnfACC)){
  if(is.na(tableEnfACC[j,867])){tableEnfACC[j,867]<-0}
}

#SDB rangement
for (i in 912:916){
  for(j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-0}
  }
}

#Lit enfant chambre
for (i in 853:855){
  for(j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-0}
  }
}

#Garage
for (i in 971:979){
  for(j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-0}
  }
}