# installation package
library(e1071)
library(caTools)
library(class)
  

#Retraitement des données
for (i in 7:10){
  for (j in 1:nrow(tableAdulteACC)){  
    if(tableAdulteACC[j,i]=="NA"){tableAdulteACC[j,i]<-4}
  }
  tableAdulteACC[,i]<-as.numeric(tableAdulteACC[,i])
}

for (j in 1:nrow(tableAdulteACC)){
  if(tableAdulteACC[j,12]=="NA"){tableAdulteACC[j,12]<-4}
}
tableAdulteACC[,12]<-as.numeric(tableAdulteACC[,12])

sqldf('SELECT distinct ressource6
       FROM tableAdulteACC
       ')
# Splitting data into train
# and test data
split <- sample.split(tableAdulteACC, SplitRatio = 0.7)
train_cl <- subset(tableAdulteACC, split == "TRUE")
test_cl <- subset(tableAdulteACC, split == "FALSE")

#Permet de changer l'indice permettant de faire le facteur
train_cl[,3]<-as.factor(train_cl[,3])


# Feature Scaling
train_scale <- scale(train_cl[, 7:10,12])
test_scale <- scale(test_cl[, 7:10,12])


# Fitting KNN Model 
# to training dataset
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$IND_CLE,
                      k = 1)
classifier_knn
  
# Confusiin Matrix
cm <- table(test_cl$IND_CLE, classifier_knn)
cm
  
# Model Evaluation - Choosing K
# Calculate out of Sample error
misClassError <- mean(classifier_knn != test_cl$IND_CLE)
print(paste('Accuracy =', 1-misClassError))
  
# K = 3
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$IND_CLE,
                      k = 3)
misClassError <- mean(classifier_knn != test_cl$IND_CLE)
print(paste('Accuracy =', 1-misClassError))
  
# K = 5
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$IND_CLE,
                      k = 5)
misClassError <- mean(classifier_knn != test_cl$IND_CLE)
print(paste('Accuracy =', 1-misClassError))
  
# K = 7
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$IND_CLE,
                      k = 7)
misClassError <- mean(classifier_knn != test_cl$IND_CLE)
print(paste('Accuracy =', 1-misClassError))
  
# K = 15
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$IND_CLE,
                      k = 15)
misClassError <- mean(classifier_knn != test_cl$IND_CLE)
print(paste('Accuracy =', 1-misClassError))
  
# K = 19
classifier_knn <- knn(train = train_scale,
                      test = test_scale,
                      cl = train_cl$IND_CLE,
                      k = 19)
misClassError <- mean(classifier_knn != test_cl$IND_CLE)
print(paste('Accuracy =', 1-misClassError))

