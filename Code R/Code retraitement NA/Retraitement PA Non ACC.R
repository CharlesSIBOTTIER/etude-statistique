for (i in 630:633){
  for (j in 1:nrow(tablePaNonAcc)){  
    if(is.na(tablePaNonAcc[j,i])){tablePaNonAcc[j,i]<-0}
  }
}

for (j in 1:nrow(tablePaNonAcc)){  
  if(is.na(tablePaNonAcc[j,635])){tablePaNonAcc[j,635]<-0}
}


for (j in 1:nrow(tablePaNonAcc)){  
  if(is.na(tablePaNonAcc[j,643])){tablePaNonAcc[j,643]<-0}
}

for (i in 713:714){
  for (j in 1:nrow(tablePaNonAcc)){  
    if(is.na(tablePaNonAcc[j,i])){tablePaNonAcc[j,i]<-0}
  }
}

for (j in 1:nrow(tablePaNonAcc)){  
  if(is.na(tablePaNonAcc[j,716])){tablePaNonAcc[j,716]<-0}
}

for (j in 1:nrow(tablePaNonAcc)){  
  if(is.na(tablePaNonAcc[j,718])){tablePaNonAcc[j,718]<-0}
}
