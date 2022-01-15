library(sqldf)
library(dplyr)

#Importation des données
acc <- read.csv2("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/CSV/ACC.csv",sep=";",stringsAsFactors = FALSE)
adu <- read.csv2("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/CSV/ADU.csv",sep=";",stringsAsFactors = FALSE)
enf <- read.csv2("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/CSV/ENF.csv",sep=";",stringsAsFactors = FALSE)
foy <- read.csv2("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/CSV/FOY.csv",sep=";",stringsAsFactors = FALSE)
ind <- read.csv2("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/CSV/IND.csv",sep=";",stringsAsFactors = FALSE)
pa <- read.csv2("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/CSV/PA.csv",sep=";",stringsAsFactors = FALSE)
relier <- read.csv2("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/CSV/RELINDACC.csv",sep=";",stringsAsFactors = FALSE)

#Permet d'avoir toutes les infos pour les adultes
adulteTotal<-sqldf('SELECT *
                   FROM ind
                   LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                   LEFT JOIN foy ON ind.STR_CLE=foy.STR_CLE
                   WHERE ind.IND_TYPE=2
                   OR ind.IND_TYPE=5')

#Permet de supprimer les colonnes en doublons sur les Adultes total
idx = which(duplicated(names(adulteTotal)))
adulteTotal <-adulteTotal[,-c(idx,1050,1051)]

#Permet d'avoir toutes les infos pour les enfants
enfantTotal<-sqldf('SELECT *
                   FROM ind
                   LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                   LEFT JOIN foy ON ind.STR_CLE=foy.STR_CLE
                   WHERE ind.IND_TYPE=1')

#Permet de supprimer les colonnes en doublons sur les Enfants total
idx = which(duplicated(names(enfantTotal)))
enfantTotal <- enfantTotal[,-c(idx,1050,1051)]

#Permet d'avoir toutes les infos pour les PA
PATotal<-sqldf('SELECT *
                FROM ind
                LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                LEFT JOIN foy ON ind.STR_CLE=foy.STR_CLE
                WHERE ind.IND_TYPE=3
                OR ind.IND_TYPE=6')

#Permet de supprimer les colonnes en doublons sur les PA total
idx = which(duplicated(names(PATotal)))
PATotal <- PATotal[,-c(idx,1053,1054)]

#Permet d'avoir les personnes avec des accidents
accident<-sqldf('SELECT relier.REF_CLE, ind.IND_CLE, relier.ACC_CLE, ind.STR_CLE
                FROM ind
                LEFT JOIN relier ON relier.IND_CLE=ind.IND_CLE')

#Permet de supprimer les lignes qui font doublons
accident<- accident %>% distinct(IND_CLE,.keep_all=TRUE)

#Permet d'avoir les accidents sur les adultes
tableAdulteACC<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN adulteTotal as adulte ON acci.IND_CLE=adulte.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is not null
                   ')

#Permet de supprimer les colonnes en doublons sur la table Accident sur les Adultes
idx = which(duplicated(names(tableAdulteACC)))
tableAdulteACC <- tableAdulteACC[,-c(idx,1477,1478)]


#Permet d'avoir les accidents sur les enfants
tableEnfACC<-sqldf('SELECT *
                    FROM accident as acci
                    INNER JOIN enfantTotal as enfant ON acci.IND_CLE=enfant.IND_CLE
                    LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                    WHERE acci.ACC_CLE is not null
                   ')

#Permet de supprimer les colonnes en doublons sur la table Accident sur les Enfants
idx = which(duplicated(names(tableEnfACC)))
tableEnfACC <- tableEnfACC[,-c(idx,1480,1481)]


#Permet d'avoir les accidents sur les personnes âgées
tablePaACC<-sqldf('SELECT *
                    FROM accident as acci
                    INNER JOIN PATotal as PA ON acci.IND_CLE=PA.IND_CLE
                    LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                    WHERE acci.ACC_CLE is not null
                   ')

#Permet de supprimer les colonnes en doublons sur la table Accident sur les PA
idx = which(duplicated(names(tablePaACC)))
tablePaACC <- tablePaACC[,-c(idx,1480,1481)]


#Permet d'avoir les Adultes non accidentés
tableAduNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN adulteTotal as adulte ON acci.IND_CLE=adulte.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')

#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les Adultes
idx = which(duplicated(names(tableAduNonAcc)))
tableAduNonAcc <- tableAduNonAcc[,-c(idx,1477,1478)]


#Permet d'avoir les enfants non accidentés
tableEnfNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN enfantTotal as enfant ON acci.IND_CLE=enfant.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')

#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les Enfants
idx = which(duplicated(names(tableEnfNonAcc)))
tableEnfNonAcc <- tableEnfNonAcc[,-c(idx,1480,1481)]


#Permet d'avoir les PA non accidentés
tablePaNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN PATotal as PA ON acci.IND_CLE=PA.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')


#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les PA
idx = which(duplicated(names(tablePaNonAcc)))
tablePaNonAcc <- tablePaNonAcc[,-c(idx,1480,1481)]

#Permet de faire le retraitement des "NA"
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement Tous les Adultes.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement Adulte ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement Adulte Non ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement Tous les enfants.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement Enf ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement Enf Non ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement PA ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement PA Non ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code retraitement NA/Retraitement Tous les PA.R")

#Permet de faire les regroupements de variables
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement Enfant Total.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement Enfant ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement Enfant Non ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement PA Total.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement PA ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement PA Non ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement Adultes Total.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement Adultes ACC.R")
source("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Codes/Code R/Code regroupement/Regroupement Adultes Non ACC.R")

#Export en CSV
write.csv2(adulteTotal,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/Tous les adultes.csv")
write.csv2(enfantTotal,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/Tous les enfants.csv")
write.csv2(PATotal,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/Tous les PA.csv")

write.csv2(tableAdulteACC,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table adulte accident.csv")
write.csv2(tableEnfACC,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table enfant accident.csv")
write.csv2(tablePaACC,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table PA accident.csv")

write.csv2(tableAduNonAcc,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table adulte sans accident.csv")
write.csv2(tableEnfNonAcc,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table enfant sans accident.csv")
write.csv2(tablePaNonAcc,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table PA sans accident.csv")