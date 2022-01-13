# instalation package
library(e1071)
library(caTools)
library(class)


#Retraitement des données
for (i in 628:631){
  for (j in 1:nrow(enfantTotal)){  
    if(is.na(enfantTotal[j,i])){enfantTotal[j,i]<-"4"}
    if(enfantTotal[j,i]=="NA"){enfantTotal[j,i]<-"4"}
  }
  enfantTotal[,i]<-as.numeric(enfantTotal[,i])
}

for (i in 633:633){
  for (j in 1:nrow(enfantTotal)){  
    if(is.na(enfantTotal[j,i])){enfantTotal[j,i]<-"12"}
    if(enfantTotal[j,i]=="NA"){enfantTotal[j,i]<-"12"}
  }
  enfantTotal[,i]<-as.numeric(enfantTotal[,i])
}

for (i in 641:641){
  for (j in 1:nrow(enfantTotal)){  
    if(is.na(enfantTotal[j,i])){enfantTotal[j,i]<-"6"}
    if(enfantTotal[j,i]=="NA"){enfantTotal[j,i]<-"6"}
    if(enfantTotal[j,i]=="0"){enfantTotal[j,i]<-"98"}
  }
  enfantTotal[,i]<-as.numeric(enfantTotal[,i])
}


for (i in 711:712){
  for (j in 1:nrow(enfantTotal)){  
    if(is.na(enfantTotal[j,i])){enfantTotal[j,i]<-"6"}
    if(enfantTotal[j,i]=="NA"){enfantTotal[j,i]<-"6"}
  }
  enfantTotal[,i]<-as.numeric(enfantTotal[,i])
}

for (i in 714:714){
  for (j in 1:nrow(enfantTotal)){  
    if(is.na(enfantTotal[j,i])){enfantTotal[j,i]<-"6"}
    if(enfantTotal[j,i]=="NA"){enfantTotal[j,i]<-"6"}
  }
  enfantTotal[,i]<-as.numeric(enfantTotal[,i])
}

for (i in 716:716){
  for (j in 1:nrow(enfantTotal)){  
    if(is.na(enfantTotal[j,i])){enfantTotal[j,i]<-"6"}
    if(enfantTotal[j,i]=="NA"){enfantTotal[j,i]<-"6"}
  }
  enfantTotal[,i]<-as.numeric(enfantTotal[,i])
}


sqldf("SELECT distinct ressource6
      FROM enfantTotal")

#Permet de changer une colonne en facteur (colonne de référence)
enfantTotal[,5]<-as.factor(enfantTotal[,5])



# Splitting data into train
# and test data
split <- sample.split(enfantTotal, SplitRatio = 0.7)
train_cl <- subset(enfantTotal, split == "TRUE")
test_cl <- subset(enfantTotal, split == "FALSE")


# Feature Scaling
train_scale <- scale(train_cl[,630])
test_scale <- scale(test_cl[,630])

for (i in 1:168){
  train_scale<-as.data.frame(train_scale[,1])
}


# Fitting KNN Model 
# to training dataset
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl[,5],
                      k = 1)

# Confusiin Matrix
cm <- table(test_cl[,5], classifier_knn)
cm

# Model Evaluation - Choosing K
# Calculate out of Sample error
misClassError <- mean(classifier_knn != test_cl[,5])
print(paste('Accuracy =', 1-misClassError))

# K = 2
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl[,5],
                      k = 15)
misClassError <- mean(classifier_knn != test_cl[,5])
print(paste('Accuracy =', 1-misClassError))

#Permet de retransformer l'ind_type en numérique pour faire le traitement des "NA"
enfantTotal[,5]<-as.numeric(enfantTotal[,5])

#Transformation des ressources 1 à 4. On remplace les "NA" pour la ressource1
for(i in 628:628){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-1
      }
    }
    else{
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource2
for(i in 629:629){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-0
      }
    }
    else{
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource3
for(i in 630:630){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-0
      }
    }
    else{
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource4
for(i in 631:631){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-0
      }
    }
    else{
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource6
for(i in 633:633){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==12)
      {
        enfantTotal[j,i]<-0
      }
    }
    else{
      if(enfantTotal[j,i]==12)
      {
        enfantTotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour le revenu annuel
for(i in 641:641){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-7
      }
    }
    else{
      if(enfantTotal[j,i]==4)
      {
        enfantTotal[j,i]<-7
      }
    }
  }
}

#On remplace les "NA" pour le lieu de résidence
for(i in 711:711){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==6)
      {
        enfantTotal[j,i]<-3
      }
    }
    else{
      if(enfantTotal[j,i]==6)
      {
        enfantTotal[j,i]<-3
      }
    }
  }
}

#On remplace les "NA" pour le type d'habitat
for(i in 712:712){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==6)
      {
        enfantTotal[j,i]<-2
      }
    }
    else{
      if(enfantTotal[j,i]==6)
      {
        enfantTotal[j,i]<-2
      }
    }
  }
}


#On remplace les "NA" pour l'habitat
for(i in 714:714){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==6)
      {
        enfantTotal[j,i]<-1
      }
    }
    else{
      if(enfantTotal[j,i]==6)
      {
        enfantTotal[j,i]<-1
      }
    }
  }
}

#On remplace les "NA" pour le statut occupation du logement
for(i in 716:716){
  for (j in 1:nrow(enfantTotal))
  {
    if(enfantTotal[j,5]==2)
    {
      if(enfantTotal[j,i]==6)
      {
        enfantTotal[j,i]<-1
      }
    }
    else{
      if(enfantTotal[j,i]==6)
      {
        enfantTotal[j,i]<-1
      }
    }
  }
}


write.csv2(enfantTotal,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/tous les enfants.csv")
