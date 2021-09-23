#*********************Positionnement 3************************
#Permet de supprimer les listes créées
rm(a)
rm(sexe)
rm(lunettes)
#Déclaration de la liste afin de créer une fonction aléatoire pour créer les variables qualitatives
a<-c()
sexe<-c()
lunettes<-c()
#Boucle permettant de créé 556 éléments dans la liste de façon aléatoire
for(i in 0:555)
{
  #Permet de mettre dans le vecteur a, les éléments aléatoire
  a<-c(a,sample(0:100,1,replace=TRUE))
}
#Permet de créer les deux variables qualitatives en fonction de les valeurs aléatoire
for (i in a){
  #Création de la première variable qualitatives (création de la variable sexe)
  if (i<=49){
    sexe<-c(sexe,'Homme')
  }
  else{
    sexe<-c(sexe,'Femme')
  }
  #Création de la seconde variable qualitative (création de la variable lunettes)
  if(i<=50){
    lunettes<-c(lunettes,'OUI')
  }
  else{
    lunettes<-c(lunettes,'NON')
  }
}

#Permet de faire la fusion entre le vectuer "Sexe", "Lunettes" et la table "Extraction"
extraction<-data.frame(extraction,sexe,lunettes)

#Création du croisement entre les classes de pay et le sexe
barplot(table(extraction$sexe,extraction$effectif_pay),legend.text = c("Femme","Homme"),args.legend=list(x="topleft"))
title(main="Croisement entre les classes pay et le sexe")

#Croisement entre les classes pay et les années de sinitres
barplot(table(extraction$accYear,extraction$effectif_pay),legend.text = c("2016","2019"),args.legend=list(x="topleft"))
title(main="Croisement entre les classes pay et les années de sinistres")


#Croisement entre les classes eval et les années de sinitres
barplot(table(extraction$accYear,extraction$effectif_eval),legend.text = c("2016","2019"),args.legend=list(x="topleft"))
title(main="Croisement entre les classes eval et les années de sinistres")

