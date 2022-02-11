#Création des variables
tableEnfACC$chauffage<-0
tableEnfACC$chambre_appoint<-0
tableEnfACC$accessibilite<-0
tableEnfACC$detecteur<-0
tableEnfACC$cuisine_robinet<-0
tableEnfACC$cuisine_securite<-0
tableEnfACC$sdb_rangement<-0
tableEnfACC$chambre_lit<-0
tableEnfACC$garage_danger<-0

#Permet de créer la présence de chauffage
for (j in 740:760){
  for (i in 1:nrow(tableEnfACC)){
    if(tableEnfACC[i,j]==1){tableEnfACC[i,1052]<-1}
    else{tableEnfACC[i,1052]<-0}
  }
}

#Chambre avec chauffage d'appoint
for (j in 736:739){
  for (i in 1:nrow(tableEnfACC)){
    if(tableEnfACC[i,j]==1){tableEnfACC[i,1053]<-1}
    else{tableEnfACC[i,1053]<-0}
  }
}

#Accessibilité dans la maison
for (j in 863:866){
  for (i in 1:nrow(tableEnfACC)){
    if(tableEnfACC[i,j]==1){tableEnfACC[i,1054]<-1}
    else{tableEnfACC[i,1054]<-0}
  }
}

#Détecteur de fumé
for (j in 785:827){
  for (i in 1:nrow(tableEnfACC)){
    if(tableEnfACC[i,j]==1){tableEnfACC[i,1055]<-1}
    else{tableEnfACC[i,1055]<-0}
  }
}

#Cusine robinet degré
for (j in 863:866){
  for (i in 1:nrow(tableEnfACC)){
    if(tableEnfACC[i,j]==1){tableEnfACC[i,1056]<-1}
    else{tableEnfACC[i,1056]<-0}
  }
}

#Sécurité dans la cuisine
for (i in 1:nrow(tableEnfACC)){
  if(tableEnfACC[i,862]==1){tableEnfACC[i,1057]<-1}
  else if(tableEnfACC[i,867]==1){tableEnfACC[i,1057]<-1}
  else{tableEnfACC[i,1057]<-0}
}

#Rangement dans la Salle de bain
for (j in 912:916){
  for (i in 1:nrow(tableEnfACC)){
    if(tableEnfACC[i,j]==1){tableEnfACC[i,1058]<-1}
    else{tableEnfACC[i,1058]<-0}
  }
}

#Chambre avec un lit enfant
for (j in 853:855){
  for (i in 1:nrow(tableEnfACC)){
    if(tableEnfACC[i,j]==1){tableEnfACC[i,1059]<-1}
    else{tableEnfACC[i,1059]<-0}
  }
}

#Danger dans le garrage
for (j in 971:979){
  for (i in 1:nrow(tableEnfACC)){
    if(tableEnfACC[i,j]==1){tableEnfACC[i,1060]<-1}
    else{tableEnfACC[i,1060]<-0}
  }
}