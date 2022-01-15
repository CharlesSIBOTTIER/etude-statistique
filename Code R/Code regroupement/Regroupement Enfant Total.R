#Création des variables
enfantTotal$chauffage<-0
enfantTotal$chambre_appoint<-0
enfantTotal$accessibilite<-0
enfantTotal$detecteur<-0
enfantTotal$cuisine_robinet<-0
enfantTotal$cuisine_securite<-0
enfantTotal$sdb_rangement<-0
enfantTotal$chambre_lit<-0
enfantTotal$garage_danger<-0

for (j in 738:758){
  for (i in 1:nrow(enfantTotal)){
    if(enfantTotal[i,j]==1){enfantTotal[i,1050]<-1}
    else{enfantTotal[i,1050]<-0}
  }
}

#Chambre avec chauffage d'appoint
for (j in 734:737){
  for (i in 1:nrow(enfantTotal)){
    if(enfantTotal[i,j]==1){enfantTotal[i,1051]<-1}
    else{enfantTotal[i,1051]<-0}
  }
}

#Accessibilité dans la maison
for (j in 783:812){
  for (i in 1:nrow(enfantTotal)){
    if(enfantTotal[i,j]==1){enfantTotal[i,1052]<-1}
    else{enfantTotal[i,1052]<-0}
  }
}

#Détecteur de fumé
for (j in 813:825){
  for (i in 1:nrow(enfantTotal)){
    if(enfantTotal[i,j]==1){enfantTotal[i,1053]<-1}
    else{enfantTotal[i,1053]<-0}
  }
}

#Cusine robinet degré
for (j in 861:864){
  for (i in 1:nrow(enfantTotal)){
    if(enfantTotal[i,j]==1){enfantTotal[i,1054]<-1}
    else{enfantTotal[i,1054]<-0}
  }
}

#Sécurité dans la cuisine
for (i in 1:nrow(enfantTotal)){
  if(enfantTotal[i,860]==1){enfantTotal[i,1055]<-1}
  else if(enfantTotal[i,865]==1){enfantTotal[i,1055]<-1}
  else{enfantTotal[i,1055]<-0}
}

#Rangement dans la Salle de bain
for (j in 910:914){
  for (i in 1:nrow(enfantTotal)){
    if(enfantTotal[i,j]==1){enfantTotal[i,1056]<-1}
    else{enfantTotal[i,1056]<-0}
  }
}

#Chambre avec un lit enfant
for (j in 850:853){
  for (i in 1:nrow(enfantTotal)){
    if(enfantTotal[i,j]==1){enfantTotal[i,1057]<-1}
    else{enfantTotal[i,1057]<-0}
  }
}

#Danger dans le garrage
for (j in 969:977){
  for (i in 1:nrow(enfantTotal)){
    if(enfantTotal[i,j]==1){enfantTotal[i,1058]<-1}
    else{enfantTotal[i,1058]<-0}
  }
}