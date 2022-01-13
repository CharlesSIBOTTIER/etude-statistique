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
