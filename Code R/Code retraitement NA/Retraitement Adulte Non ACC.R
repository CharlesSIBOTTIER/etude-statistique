for (i in 630:633){
  for (j in 1:nrow(tableAduNonAcc)){  
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

for (j in 1:nrow(tableAduNonAcc)){  
  if(is.na(tableAduNonAcc[j,635])){tableAduNonAcc[j,635]<-0}
}


for (j in 1:nrow(tableAduNonAcc)){  
  if(is.na(tableAduNonAcc[j,643])){tableAduNonAcc[j,643]<-0}
}

for (i in 713:714){
  for (j in 1:nrow(tableAduNonAcc)){  
    if(is.na(tableAduNonAcc[j,i])){tableAduNonAcc[j,i]<-0}
  }
}

for (j in 1:nrow(tableAduNonAcc)){  
  if(is.na(tableAduNonAcc[j,716])){tableAduNonAcc[j,716]<-0}
}

for (j in 1:nrow(tableAduNonAcc)){  
  if(is.na(tableAduNonAcc[j,718])){tableAduNonAcc[j,718]<-0}
}