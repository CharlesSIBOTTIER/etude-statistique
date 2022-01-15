for (i in 630:633){
  for (j in 1:nrow(tableEnfNonAcc)){  
    if(is.na(tableEnfNonAcc[j,i])){tableEnfNonAcc[j,i]<-0}
  }
}

for (j in 1:nrow(tableEnfNonAcc)){  
  if(is.na(tableEnfNonAcc[j,635])){tableEnfNonAcc[j,635]<-0}
}


for (j in 1:nrow(tableEnfNonAcc)){  
  if(is.na(tableEnfNonAcc[j,643])){tableEnfNonAcc[j,643]<-0}
}

for (i in 713:714){
  for (j in 1:nrow(tableEnfNonAcc)){  
    if(is.na(tableEnfNonAcc[j,i])){tableEnfNonAcc[j,i]<-0}
  }
}

for (j in 1:nrow(tableEnfNonAcc)){  
  if(is.na(tableEnfNonAcc[j,716])){tableEnfNonAcc[j,716]<-0}
}

for (j in 1:nrow(tableEnfNonAcc)){  
  if(is.na(tableEnfNonAcc[j,718])){tableEnfNonAcc[j,718]<-0}
}

#Chauffage + chauffage d'appoint dans les chambres
for (i in 736:760){
  for(j in 1:nrow(tableEnfNonAcc)){
    if(is.na(tableEnfNonAcc[j,i])){tableEnfNonAcc[j,i]<-0}
  }
}

#Accessibilité + détecteur
for (i in 785:827){
  for(j in 1:nrow(tableEnfNonAcc)){
    if(is.na(tableEnfNonAcc[j,i])){tableEnfNonAcc[j,i]<-0}
  }
}

#Cuisine protection
for (i in 863:866){
  for(j in 1:nrow(tableEnfNonAcc)){
    if(is.na(tableEnfNonAcc[j,i])){tableEnfNonAcc[j,i]<-0}
  }
}

#Cuisine protection cuisson
for(j in 1:nrow(tableEnfNonAcc)){
  if(is.na(tableEnfNonAcc[j,862])){tableEnfNonAcc[j,862]<-0}
}
#Cuisine protection enfant
for(j in 1:nrow(tableEnfNonAcc)){
  if(is.na(tableEnfNonAcc[j,867])){tableEnfNonAcc[j,867]<-0}
}

#SDB rangement
for (i in 912:916){
  for(j in 1:nrow(tableEnfNonAcc)){
    if(is.na(tableEnfNonAcc[j,i])){tableEnfNonAcc[j,i]<-0}
  }
}

#Lit enfant chambre
for (i in 853:855){
  for(j in 1:nrow(tableEnfNonAcc)){
    if(is.na(tableEnfNonAcc[j,i])){tableEnfNonAcc[j,i]<-0}
  }
}

#Garage
for (i in 971:979){
  for(j in 1:nrow(tableEnfNonAcc)){
    if(is.na(tableEnfNonAcc[j,i])){tableEnfNonAcc[j,i]<-0}
  }
}