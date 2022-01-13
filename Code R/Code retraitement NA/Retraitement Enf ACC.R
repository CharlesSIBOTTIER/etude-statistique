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