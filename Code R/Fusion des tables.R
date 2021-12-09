#Importation des librairies
library(readxl)
library(xlsx)
library(sqldf)
library(dplyr)

#Importation des données

acc <- read_excel("Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées/ACC.xlsx")
adu <- read_excel("Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données Calyxis/ADU.xlsx")
enf <- read_excel("Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données Calyxis/ENF.xlsx")
foy <- read_excel("Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées/FOY.xlsx")
ind <- read_excel("Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées/IND.xlsx")
pa <- read_excel("Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données Calyxis/PA.xlsx")
relier <- read_excel("Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées/RELINDACC.xlsx")

#Permet d'avoir toutes les infos pour les adultes
adulteTotal<-sqldf('SELECT *
                   FROM ind
                   LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                   WHERE ind.IND_TYPE=2
                   OR ind.IND_TYPE=5')

#Permet de supprimer les colonnes en doublons sur les Adultes total
idx = which(duplicated(names(adulteTotal)))
adulteTotal = adulteTotal[,-idx]

#Permet d'avoir toutes les infos pour les enfants
enfantTotal<-sqldf('SELECT *
                   FROM ind
                   LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                   WHERE ind.IND_TYPE=1')

#Permet de supprimer les colonnes en doublons sur les Enfants total
idx = which(duplicated(names(enfantTotal)))
enfantTotal = enfantTotal[,-idx]

#Permet d'avoir toutes les infos pour les PA
PATotal<-sqldf('SELECT *
                FROM ind
                LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                WHERE ind.IND_TYPE=3
                OR ind.IND_TYPE=6')

#Permet de supprimer les colonnes en doublons sur les PA total
idx = which(duplicated(names(PATotal)))
PATotal = PATotal[,-idx]

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
tableAdulteACC = tableAdulteACC[,-idx]


#Permet d'avoir les accidents sur les enfants
tableEnfACC<-sqldf('SELECT *
                    FROM accident as acci
                    INNER JOIN enfantTotal as enfant ON acci.IND_CLE=enfant.IND_CLE
                    LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                    WHERE acci.ACC_CLE is not null
                   ')

#Permet de supprimer les colonnes en doublons sur la table Accident sur les Enfants
idx = which(duplicated(names(tableEnfACC)))
tableEnfACC = tableEnfACC[,-idx]


#Permet d'avoir les accidents sur les personnes âgées
tablePaACC<-sqldf('SELECT *
                    FROM accident as acci
                    INNER JOIN PATotal as PA ON acci.IND_CLE=PA.IND_CLE
                    LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                    WHERE acci.ACC_CLE is not null
                   ')

#Permet de supprimer les colonnes en doublons sur la table Accident sur les PA
idx = which(duplicated(names(tablePaACC)))
tablePaACC = tablePaACC[,-idx]


#Permet d'avoir les Adultes non accidentés
tableAduNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN adulteTotal as adulte ON acci.IND_CLE=adulte.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')

#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les Adultes
idx = which(duplicated(names(tableAduNonAcc)))
tableAduNonAcc = tableAduNonAcc[,-idx]


#Permet d'avoir les enfants non accidentés
tableEnfNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN enfantTotal as enfant ON acci.IND_CLE=enfant.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')

#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les Enfants
idx = which(duplicated(names(tableEnfNonAcc)))
tableEnfNonAcc = tableEnfNonAcc[,-idx]


#Permet d'avoir les PA non accidentés
tablePaNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN PATotal as PA ON acci.IND_CLE=PA.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')


#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les PA
idx = which(duplicated(names(tablePaNonAcc)))
tablePaNonAcc = tablePaNonAcc[,-idx]


#Export en CSV
write.csv2(tableAdulteACC,"Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées//table adulte accident.csv")
write.csv2(tableEnfACC,"Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées//table enfant accident.csv")
write.csv2(tablePaACC,"Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées//table PA accident.csv")

write.csv2(tableAduNonAcc,"Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées//table adulte sans accident.csv")
write.csv2(tableEnfNonAcc,"Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées//table enfant sans accident.csv")
write.csv2(tablePaNonAcc,"Z:/Master SARADS/Étude bilatéral/Étude Statistique/Données retravaillées//table PA sans accident.csv")

