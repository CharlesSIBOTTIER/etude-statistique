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