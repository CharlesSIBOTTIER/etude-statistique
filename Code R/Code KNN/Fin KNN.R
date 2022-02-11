#-----------------------Transforme les valeurs pour les adultes accidentés------------------------------------------

#Transformation des ressources 1 à 4. On remplace les "NA" pour la ressource1
for(i in 630:630){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-1
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource2
for(i in 631:631){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-0
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource3
for(i in 632:632){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-0
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource4 à 6
for(i in 630:633){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-0
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour le revenu annuel
for(i in 635:635){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-7
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-7
      }
    }
  }
}

#On remplace les "NA" pour le lieu de résidence
for(i in 643:643){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-3
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-3
      }
    }
  }
}

#On remplace les "NA" pour le type d'habitat
for(i in 713:714){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-2
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-2
      }
    }
  }
}


#On remplace les "NA" pour l'habitat
for(i in 716:716){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-1
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-1
      }
    }
  }
}

#On remplace les "NA" pour le statut occupation du logement
for(i in 716:716){
  for (j in 1:nrow(tableAdulteACC))
  {
    if(tableAdulteACC[j,5]==2)
    {
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-1
      }
    }
    else{
      if(tableAdulteACC[j,i]==4)
      {
        tableAdulteACC[j,i]<-1
      }
    }
  }
}

#--------------------------------Transforme les données pour les adultes non accidentés--------------------------
#Transformation des ressources 1 à 4. On remplace les "NA" pour la ressource1
for(i in 630:630){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-1
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource2
for(i in 631:631){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-0
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource3
for(i in 632:632){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-0
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource4 à 6
for(i in 630:633){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-0
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour le revenu annuel
for(i in 635:635){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-7
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-7
      }
    }
  }
}

#On remplace les "NA" pour le lieu de résidence
for(i in 643:643){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-3
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-3
      }
    }
  }
}

#On remplace les "NA" pour le type d'habitat
for(i in 713:714){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-2
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-2
      }
    }
  }
}


#On remplace les "NA" pour l'habitat
for(i in 716:716){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-1
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-1
      }
    }
  }
}

#On remplace les "NA" pour le statut occupation du logement
for(i in 716:716){
  for (j in 1:nrow(tableAduNonAcc))
  {
    if(tableAduNonAcc[j,5]==2)
    {
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-1
      }
    }
    else{
      if(tableAduNonAcc[j,i]==4)
      {
        tableAduNonAcc[j,i]<-1
      }
    }
  }
}

#--------------------------------Transforme les données pour les adultes non accidentés--------------------------
#Transformation des ressources 1 à 4. On remplace les "NA" pour la ressource1
for(i in 630:630){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-1
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource2
for(i in 631:631){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-0
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource3
for(i in 632:632){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-0
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource4 à 6
for(i in 630:633){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-0
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour le revenu annuel
for(i in 635:635){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-7
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-7
      }
    }
  }
}

#On remplace les "NA" pour le lieu de résidence
for(i in 643:643){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-3
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-3
      }
    }
  }
}

#On remplace les "NA" pour le type d'habitat
for(i in 713:714){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-2
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-2
      }
    }
  }
}


#On remplace les "NA" pour l'habitat
for(i in 716:716){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-1
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-1
      }
    }
  }
}

#On remplace les "NA" pour le statut occupation du logement
for(i in 716:716){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-1
      }
    }
    else{
      if(tableEnfACC[j,i]==4)
      {
        tableEnfACC[j,i]<-1
      }
    }
  }
}

#--------------------------------Transforme les données pour les adultes non accidentés--------------------------
#Transformation des ressources 1 à 4. On remplace les "NA" pour la ressource1
for(i in 630:630){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-1
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource2
for(i in 631:631){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-0
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource3
for(i in 632:632){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-0
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource4 à 6
for(i in 630:633){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-0
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour le revenu annuel
for(i in 635:635){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-7
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-7
      }
    }
  }
}

#On remplace les "NA" pour le lieu de résidence
for(i in 643:643){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-3
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-3
      }
    }
  }
}

#On remplace les "NA" pour le type d'habitat
for(i in 713:714){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-2
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-2
      }
    }
  }
}


#On remplace les "NA" pour l'habitat
for(i in 716:716){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-1
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-1
      }
    }
  }
}

#On remplace les "NA" pour le statut occupation du logement
for(i in 716:716){
  for (j in 1:nrow(tableNonEnfACC))
  {
    if(tableNonEnfACC[j,5]==2)
    {
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-1
      }
    }
    else{
      if(tableNonEnfACC[j,i]==4)
      {
        tableNonEnfACC[j,i]<-1
      }
    }
  }
}