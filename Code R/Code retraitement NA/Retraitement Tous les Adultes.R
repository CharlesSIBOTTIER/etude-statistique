for (i in 628:631){
  for (j in 1:nrow(adulteTotal)){  
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

for (j in 1:nrow(adulteTotal)){  
  if(is.na(adulteTotal[j,633])){adulteTotal[j,633]<-0}
}

for (j in 1:nrow(adulteTotal)){  
  if(is.na(adulteTotal[j,641])){adulteTotal[j,641]<-0}
}


for (i in 711:712){
  for (j in 1:nrow(adulteTotal)){  
    if(is.na(adulteTotal[j,i])){adulteTotal[j,i]<-0}
  }
}

for (j in 1:nrow(adulteTotal)){  
  if(is.na(adulteTotal[j,714])){adulteTotal[j,714]<-0}
}

for (j in 1:nrow(adulteTotal)){  
  if(is.na(adulteTotal[j,716])){adulteTotal[j,i]<-0}
}