for (i in 628:631){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}

for (j in 1:nrow(PATotal)){  
  if(is.na(PATotal[j,633])){PATotal[j,633]<-0}
}

for (j in 1:nrow(PATotal)){  
  if(is.na(PATotal[j,641])){PATotal[j,641]<-0}
}


for (i in 711:712){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-0}
  }
}

for (j in 1:nrow(PATotal)){  
  if(is.na(PATotal[j,714])){PATotal[j,714]<-0}
}

for (j in 1:nrow(PATotal)){  
  if(is.na(PATotal[j,716])){PATotal[j,i]<-0}
}