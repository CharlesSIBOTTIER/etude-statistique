# instalation package
library(e1071)
library(caTools)
library(class)


#Retraitement des données
for (i in 630:633){
  for (j in 1:nrow(tableEnfACC)){  
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-"4"}
    if(tableEnfACC[j,i]=="NA"){tableEnfACC[j,i]<-"4"}
  }
  tableEnfACC[,i]<-as.numeric(tableEnfACC[,i])
}

for (i in 635:635){
  for (j in 1:nrow(tableEnfACC)){  
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-"12"}
    if(tableEnfACC[j,i]=="NA"){tableEnfACC[j,i]<-"12"}
  }
  tableEnfACC[,i]<-as.numeric(tableEnfACC[,i])
}

for (i in 643:643){
  for (j in 1:nrow(tableEnfACC)){  
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-"6"}
    if(tableEnfACC[j,i]=="NA"){tableEnfACC[j,i]<-"6"}
    if(tableEnfACC[j,i]=="0"){tableEnfACC[j,i]<-"98"}
  }
  tableEnfACC[,i]<-as.numeric(tableEnfACC[,i])
}


for (i in 713:714){
  for (j in 1:nrow(tableEnfACC)){  
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-"6"}
    if(tableEnfACC[j,i]=="NA"){tableEnfACC[j,i]<-"6"}
  }
  tableEnfACC[,i]<-as.numeric(tableEnfACC[,i])
}

for (i in 716:716){
  for (j in 1:nrow(tableEnfACC)){  
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-"6"}
    if(tableEnfACC[j,i]=="NA"){tableEnfACC[j,i]<-"6"}
  }
  tableEnfACC[,i]<-as.numeric(tableEnfACC[,i])
}

for (i in 718:718){
  for (j in 1:nrow(tableEnfACC)){  
    if(is.na(tableEnfACC[j,i])){tableEnfACC[j,i]<-"6"}
    if(tableEnfACC[j,i]=="NA"){tableEnfACC[j,i]<-"6"}
  }
  tableEnfACC[,i]<-as.numeric(tableEnfACC[,i])
}


sqldf("SELECT distinct ressource1
      FROM tableEnfACC")

#Permet de changer une colonne en facteur (colonne de référence)
tableEnfACC[,5]<-as.factor(tableEnfACC[,5])



# Splitting data into train
# and test data
split <- sample.split(tableEnfACC, SplitRatio = 0.7)
train_cl <- subset(tableEnfACC, split == "TRUE")
test_cl <- subset(tableEnfACC, split == "FALSE")


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
tableEnfACC[,5]<-as.numeric(tableEnfACC[,5])

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

#On remplace les "NA" pour la ressource4
for(i in 633:633){
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

#On remplace les "NA" pour la ressource6
for(i in 635:635){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==12)
      {
        tableEnfACC[j,i]<-0
      }
    }
    else{
      if(tableEnfACC[j,i]==12)
      {
        tableEnfACC[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour le revenu annuel
for(i in 643:643){
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
for(i in 713:713){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==6)
      {
        tableEnfACC[j,i]<-3
      }
    }
    else{
      if(tableEnfACC[j,i]==6)
      {
        tableEnfACC[j,i]<-3
      }
    }
  }
}

#On remplace les "NA" pour le type d'habitat
for(i in 714:714){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==6)
      {
        tableEnfACC[j,i]<-2
      }
    }
    else{
      if(tableEnfACC[j,i]==6)
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
      if(tableEnfACC[j,i]==6)
      {
        tableEnfACC[j,i]<-1
      }
    }
    else{
      if(tableEnfACC[j,i]==6)
      {
        tableEnfACC[j,i]<-1
      }
    }
  }
}

#On remplace les "NA" pour le statut occupation du logement
for(i in 718:718){
  for (j in 1:nrow(tableEnfACC))
  {
    if(tableEnfACC[j,5]==2)
    {
      if(tableEnfACC[j,i]==6)
      {
        tableEnfACC[j,i]<-1
      }
    }
    else{
      if(tableEnfACC[j,i]==6)
      {
        tableEnfACC[j,i]<-1
      }
    }
  }
}


write.csv2(tableEnfACC,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table enfant accident.csv")
