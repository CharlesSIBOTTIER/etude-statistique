library(readxl)
FOY <- read_excel("Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données Calyxis/FOY.xlsx")
FOY<-as.matrix(FOY)

#Permet de parcourir la table pour changer les valeurs
for(i in 1:nrow(FOY)){
  #Permet de mettre 0 aux personnes ne bénéficiant pas de certains revenu (remplace NA par 0)
  for (j in 4:15)
  if(FOY[i,j]=="NA"){FOY[i,j]<-0}
  #Permet de parcourir les personnes n'ayant pas d'animaux (renseigné NA ou 2) et convertit les données en NA
  for(j in 19:29){
    if(FOY[i,18]=="NA"){FOY[i,18]<-2}
    if(FOY[i,18]=="2"){FOY[i,j]<-"NA"}
    if(FOY[i,18]=="1"){if(FOY[i,j]=="NA"){FOY[i,j]<-0}}
  }
  #Permet de vérifier le type de maison, si le type de la maison n'est pas renseigné, on effectue un trie en fonction de l'environement de la maison
  for (j in 102:102){
    if (FOY[i,j]=="NA"&FOY[i,j-2]!="NA"){
      if(FOY[i,j-2]=="2"){FOY[i,j]<-1}
      if(FOY[i,j-2]=="3"){FOY[i,j]<-2}
      if(FOY[i,j-2]=="4"){FOY[i,j]<-2}
      if(FOY[i,j-2]=="5"){FOY[i,j]<-98}
    }
  }
  #Permet de vérifier la présence d'un chauffage ou non
  for (j in 130:130){
    if (FOY[i,j]=="NA"){
      for (k in 117:119){
        if (FOY[i,k]==1){FOY[i,j]<-1}
        if (FOY[i,k]==0){FOY[i,k]<-"NA"}
      }
      for(k in 123:129){
        if (FOY[i,k]==1){FOY[i,j]<-1}
        if (FOY[i,k]==0){FOY[i,k]<-"NA"}
      }
    }
  }
  #Permet de vérifier le type de chauffage
  for (j in 135:135){
    if (FOY[i,102]==1){FOY[i,j]<-2}
    if (FOY[i,102]==2){FOY[i,j]<-1}
    if (FOY[i,102]==3){FOY[i,j]<-1}
    if (FOY[i,102]==98){FOY[i,j]<-99}
  }
  #Permet de transformer les cellules en "NA" lorsque le chauffage d'appoint n'est pas renseigné
  for (j in 116:116){
    for (k in 143:149){
      #Vérifie si les cellules avec "NA" et transforme les cellules du chauffage d'appoint en NA
      if (FOY[i,j]=="NA"){
        if (FOY[i,k]==0){FOY[i,k]<-"NA"}
      }
      #Vérifie si les personnes ont renseigné qu'ils n'ont pas de chauffage d'appoint et transforme les données en NA
      if(FOY[i,j]==3){FOY[i,k]<-"NA"}
    }
  }
  #Permet de parcourir les cellules pour l'accessibilité au logement et vérifier quand cela vaut 1
  for (j in 389:389){
    if (FOY[i,j]==1){
      if(FOY[i,150]=="NA"){FOY[i,150]=0}
      if(FOY[i,161]=="NA"){FOY[i,161]=0}
      if(FOY[i,184]=="NA"){FOY[i,184]=0}
      if(FOY[i,163]=="NA"){FOY[i,163]=0}
      if(FOY[i,182]=="NA"){FOY[i,182]=0}
      if(FOY[i,175]=="NA"){FOY[i,175]=0}
      if(FOY[i,177]=="NA"){FOY[i,177]=0}
      if(FOY[i,167]=="NA"){FOY[i,167]=0}
      if(FOY[i,165]=="NA"){FOY[i,165]=0}
      if(FOY[i,169]=="NA"){FOY[i,169]=0}
      if(FOY[i,171]=="NA"){FOY[i,171]=0}
      if(FOY[i,172]=="NA"){FOY[i,172]=0}
      if(FOY[i,159]=="NA"){FOY[i,159]=0}
      if(FOY[i,180]=="NA"){FOY[i,180]=1}
      if(FOY[i,179]=="NA"){FOY[i,179]=0}
    }
  }
  #Permet de vérifier les éléments de la cuisine
  for (j in 235:235){
    #Vérifie si il y a des éléments de la cuisine d'inscrit, et qu'ils indiquent qu'ils ne possèdent pas de cuisine
    if (FOY[i,j]==1){
      for (k in 236:241){
        if (FOY[i,k]==1 | FOY[i,k]==2){
          FOY[i,j]<-0
        }
      }
    }
    #Permet de vérifier si des éléments sont inscrits dans l'espace cuisine, et vérifie si l'espace cuisine n'est pas renseigné
    if (FOY[i,j]=="NA"){
      for (k in 236:241){
        if (FOY[i,k]==1 | FOY[i,k]==2 | FOY[i,k]==3){
          FOY[i,j]<-0
        }
      }
    }
  }
  #Permet de vérifier la cohérance au niveau du salon
  for (j in 268:268){
    #Vérifie les personnes ayant renseigné qu'ils n'avaient pas de salon
    if (FOY[i,j]==1){
      for (k in 258:262){
        if (FOY[i,k]==1){FOY[i,j]<-0}
      }
    }
    #Vérifie les personnes n'ayant pas renseigné qu'ils avaient un salon
    if (FOY[i,j]=="NA"){
      for (k in 258:262){
        if (FOY[i,k]==1){FOY[i,j]<-0}
      }
    }
  }
  #Permet de parcourir la plage pour les objets dans le salon
  for (j in 258:262){
    #Permet de mettre "NA" pour les personnes qui n'ont pas de salon
    if (FOY[i,268]==1){
      FOY[i,j]<-"NA"
    }
    #Permet d'indiqué que les personnes ne possèdent pas cette objet dans le salon quand il est indiqué "NA" (remplace "NA" par 0)
    if (FOY[i,268]==0){
      if(FOY[i,j]=="NA"){FOY[i,j]<-0}
    }
  }
  #Permet de parcourir la plage pour les objets dans la salle de bain
  if (FOY[i,271]==1){
    #Permet de mettre "NA" pour les personnes ayant 0 alors qu'ils n'ont pas de salle de bain
    for (j in 263:267){
      if (FOY[i,j]==0){FOY[i,j]<-"NA"}
    }
  }
  #Permet de vérifier si les gens n'ayant pas renseigné la posséssion d'une salle de bain, on renseigné les autres champs (dans ce cas on indique qu'ils possèdent une salle de bain)
  if (FOY[i,271]=="NA"){
    for (j in 263:267){
      if (FOY[i,j]==1){
        FOY[i,271]<-0
      }
    }
  }
}

#Permet d'exporter la table
write.csv2(FOY,"Z:/Master SARADS/Étude bilatéral/Étude Statistique/FOY.csv",row.names = FALSE)
