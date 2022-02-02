# instalation package
library(e1071)
library(caTools)
library(class)


#Retraitement des données
for (i in 628:631){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-"4"}
    if(PATotal[j,i]=="NA"){PATotal[j,i]<-"4"}
  }
  PATotal[,i]<-as.numeric(PATotal[,i])
}

for (i in 633:633){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-"12"}
    if(PATotal[j,i]=="NA"){PATotal[j,i]<-"12"}
  }
  PATotal[,i]<-as.numeric(PATotal[,i])
}

for (i in 641:641){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-"6"}
    if(PATotal[j,i]=="NA"){PATotal[j,i]<-"6"}
    if(PATotal[j,i]=="0"){PATotal[j,i]<-"98"}
  }
  PATotal[,i]<-as.numeric(PATotal[,i])
}


for (i in 711:712){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-"6"}
    if(PATotal[j,i]=="NA"){PATotal[j,i]<-"6"}
  }
  PATotal[,i]<-as.numeric(PATotal[,i])
}

for (i in 714:714){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-"6"}
    if(PATotal[j,i]=="NA"){PATotal[j,i]<-"6"}
  }
  PATotal[,i]<-as.numeric(PATotal[,i])
}

for (i in 716:716){
  for (j in 1:nrow(PATotal)){  
    if(is.na(PATotal[j,i])){PATotal[j,i]<-"6"}
    if(PATotal[j,i]=="NA"){PATotal[j,i]<-"6"}
  }
  PATotal[,i]<-as.numeric(PATotal[,i])
}


sqldf("SELECT distinct ressource6
      FROM PATotal")

#Permet de changer une colonne en facteur (colonne de référence)
PATotal[,5]<-as.factor(PATotal[,5])



# Splitting data into train
# and test data
split <- sample.split(PATotal, SplitRatio = 0.7)
train_cl <- subset(PATotal, split == "TRUE")
test_cl <- subset(PATotal, split == "FALSE")


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
PATotal[,5]<-as.numeric(PATotal[,5])

#Transformation des ressources 1 à 4. On remplace les "NA" pour la ressource1
for(i in 628:628){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-1
      }
    }
    else{
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource2
for(i in 629:629){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-0
      }
    }
    else{
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource3
for(i in 630:630){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-0
      }
    }
    else{
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource4
for(i in 631:631){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-0
      }
    }
    else{
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour la ressource6
for(i in 633:633){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==12)
      {
        PATotal[j,i]<-0
      }
    }
    else{
      if(PATotal[j,i]==12)
      {
        PATotal[j,i]<-0
      }
    }
  }
}

#On remplace les "NA" pour le revenu annuel
for(i in 641:641){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-7
      }
    }
    else{
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-7
      }
    }
  }
}

#On remplace les "NA" pour le lieu de résidence
for(i in 711:711){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-3
      }
    }
    else{
      if(PATotal[j,i]==4)
      {
        PATotal[j,i]<-3
      }
    }
  }
}

#On remplace les "NA" pour le type d'habitat
for(i in 712:712){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==6)
      {
        PATotal[j,i]<-2
      }
    }
    else{
      if(PATotal[j,i]==6)
      {
        PATotal[j,i]<-2
      }
    }
  }
}


#On remplace les "NA" pour l'habitat
for(i in 714:714){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==6)
      {
        PATotal[j,i]<-1
      }
    }
    else{
      if(PATotal[j,i]==6)
      {
        PATotal[j,i]<-1
      }
    }
  }
}

#On remplace les "NA" pour le statut occupation du logement
for(i in 716:716){
  for (j in 1:nrow(PATotal))
  {
    if(PATotal[j,5]==2)
    {
      if(PATotal[j,i]==6)
      {
        PATotal[j,i]<-1
      }
    }
    else{
      if(PATotal[j,i]==6)
      {
        PATotal[j,i]<-1
      }
    }
  }
}


write.csv2(PATotal,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/tous les PA.csv")
