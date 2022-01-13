for (i in 630:633){
  for (j in 1:nrow(tablePaACC)){  
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,635])){tablePaACC[j,635]<-0}
}


for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,643])){tablePaACC[j,643]<-0}
}

for (i in 713:714){
  for (j in 1:nrow(tablePaACC)){  
    if(is.na(tablePaACC[j,i])){tablePaACC[j,i]<-0}
  }
}

for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,716])){tablePaACC[j,716]<-0}
}

for (j in 1:nrow(tablePaACC)){  
  if(is.na(tablePaACC[j,718])){tablePaACC[j,718]<-0}
}
