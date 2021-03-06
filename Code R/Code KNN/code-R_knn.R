# instalation package
library(e1071)
library(caTools)
library(class)


#Retraitement des donn�es
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

#Permet de changer une colonne en facteur (colonne de r�f�rence)
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

#Permet de retransformer l'ind_type en num�rique pour faire le traitement des "NA"
tableEnfACC[,5]<-as.numeric(tableEnfACC[,5])



