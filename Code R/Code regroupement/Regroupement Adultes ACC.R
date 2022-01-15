#Création des variables
tableAdulteACC$chauffage<-0
tableAdulteACC$chambre_appoint<-0
tableAdulteACC$accessibilite<-0
tableAdulteACC$detecteur<-0
tableAdulteACC$cuisine_robinet<-0
tableAdulteACC$cuisine_securite<-0
tableAdulteACC$sdb_rangement<-0
tableAdulteACC$chambre_lit<-0
tableAdulteACC$garage_danger<-0

#Permet de créer la présence de chauffage
for (j in 740:760){
  for (i in 1:nrow(tableAdulteACC)){
    if(tableAdulteACC[i,j]==1){tableAdulteACC[i,1051]<-1}
    else{tableAdulteACC[i,1051]<-0}
  }
}

#Chambre avec chauffage d'appoint
for (j in 736:739){
  for (i in 1:nrow(tableAdulteACC)){
    if(tableAdulteACC[i,j]==1){tableAdulteACC[i,1052]<-1}
    else{tableAdulteACC[i,1052]<-0}
  }
}

#Accessibilité dans la maison
for (j in 863:866){
  for (i in 1:nrow(tableAdulteACC)){
    if(tableAdulteACC[i,j]==1){tableAdulteACC[i,1053]<-1}
    else{tableAdulteACC[i,1053]<-0}
  }
}

#Détecteur de fumé
for (j in 785:827){
  for (i in 1:nrow(tableAdulteACC)){
    if(tableAdulteACC[i,j]==1){tableAdulteACC[i,1054]<-1}
    else{tableAdulteACC[i,1054]<-0}
  }
}

#Cusine robinet degré
for (j in 863:866){
  for (i in 1:nrow(tableAdulteACC)){
    if(tableAdulteACC[i,j]==1){tableAdulteACC[i,1055]<-1}
    else{tableAdulteACC[i,1055]<-0}
  }
}

#Sécurité dans la cuisine
for (i in 1:nrow(tableAdulteACC)){
  if(tableAdulteACC[i,862]==1){tableAdulteACC[i,1056]<-1}
  else if(tableAdulteACC[i,867]==1){tableAdulteACC[i,1056]<-1}
  else{tableAdulteACC[i,1056]<-0}
}

#Rangement dans la Salle de bain
for (j in 912:916){
  for (i in 1:nrow(tableAdulteACC)){
    if(tableAdulteACC[i,j]==1){tableAdulteACC[i,1057]<-1}
    else{tableAdulteACC[i,1057]<-0}
  }
}

#Chambre avec un lit enfant
for (j in 853:855){
  for (i in 1:nrow(tableAdulteACC)){
    if(tableAdulteACC[i,j]==1){tableAdulteACC[i,1058]<-1}
    else{tableAdulteACC[i,1058]<-0}
  }
}

#Danger dans le garrage
for (j in 971:979){
  for (i in 1:nrow(tableAdulteACC)){
    if(tableAdulteACC[i,j]==1){tableAdulteACC[i,1059]<-1}
    else{tableAdulteACC[i,1059]<-0}
  }
}
