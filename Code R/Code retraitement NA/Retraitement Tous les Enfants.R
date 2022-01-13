for (i in 628:631){
  for (j in 1:nrow(enfantTotal)){  
    if(is.na(enfantTotal[j,i])){enfantTotal[j,i]<-0}
  }
}

for (j in 1:nrow(enfantTotal)){  
  if(is.na(enfantTotal[j,633])){enfantTotal[j,633]<-0}
}

for (j in 1:nrow(enfantTotal)){  
  if(is.na(enfantTotal[j,641])){enfantTotal[j,641]<-0}
}


for (i in 711:712){
  for (j in 1:nrow(enfantTotal)){  
    if(is.na(enfantTotal[j,i])){enfantTotal[j,i]<-0}
  }
}

for (j in 1:nrow(enfantTotal)){  
  if(is.na(enfantTotal[j,714])){enfantTotal[j,714]<-0}
}

for (j in 1:nrow(enfantTotal)){  
  if(is.na(enfantTotal[j,716])){enfantTotal[j,i]<-0}
}