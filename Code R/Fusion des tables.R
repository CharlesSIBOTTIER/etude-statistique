library(readxl)
library(xlsx)
library(sqldf)
library(dplyr)

#Importation des données

acc <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/ACC.xlsx")
adu <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/ADU.xlsx")
enf <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/ENF.xlsx")
foy <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/FOY.xlsx")
ind <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/IND.xlsx")
pa <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/PA.xlsx")
relier <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/RELINDACC.xlsx")

#Permet d'avoir toutes les infos pour les adultes
adulteTotal<-sqldf('SELECT *
                   FROM ind
                   LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                   WHERE ind.IND_TYPE=2
                   OR ind.IND_TYPE=5')

#Permet de supprimer la colonne "IND_CLE" qui fait doublon
adulteTotal<-adulteTotal[,-12]

#Permet d'avoir toutes les infos pour les enfants
enfantTotal<-sqldf('SELECT *
                   FROM ind
                   LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                   WHERE ind.IND_TYPE=1')
#Permet de supprimer la colonne "IND_CLE" qui fait doublon
enfantTotal<-enfantTotal[,-12]

#Permet d'avoir toutes les infos pour les PA
PATotal<-sqldf('SELECT *
                FROM ind
                LEFT JOIN adu ON adu.IND_CLE=ind.IND_CLE
                WHERE ind.IND_TYPE=3
                OR ind.IND_TYPE=6')
#Permet de supprimer la colonne "IND_CLE" qui fait doublon
PATotal<-PATotal[,-12]

#Permet d'avoir les personnes avec des accidents
accident<-sqldf('SELECT relier.REF_CLE, ind.IND_CLE, relier.ACC_CLE, ind.STR_CLE
                FROM ind
                LEFT JOIN relier ON relier.IND_CLE=ind.IND_CLE')

#Permet de supprimer les doublons
accident<- accident %>% distinct(IND_CLE,.keep_all=TRUE)

#Permet d'avoir les accidents sur les adultes
tableAdulteACC<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN adulteTotal as adulte ON acci.IND_CLE=adulte.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is not null
                   ')


#Permet d'avoir les accidents sur les enfants
tableEnfACC<-sqldf('SELECT *
                    FROM accident as acci
                    INNER JOIN enfantTotal as enfant ON acci.IND_CLE=enfant.IND_CLE
                    LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                    WHERE acci.ACC_CLE is not null
                   ')


#Permet d'avoir les accidents sur les personnes âgées
tablePaACC<-sqldf('SELECT *
                    FROM accident as acci
                    INNER JOIN PATotal as PA ON acci.IND_CLE=PA.IND_CLE
                    LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                    WHERE acci.ACC_CLE is not null
                   ')



#Permet d'avoir les Adultes non accidentés
tableAduNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN adulteTotal as adulte ON acci.IND_CLE=adulte.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')


#Permet d'avoir les enfants non accidentés
tableEnfNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN enfantTotal as enfant ON acci.IND_CLE=enfant.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')

#Permet d'avoir les PA non accidentés
tablePaNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN PATotal as PA ON acci.IND_CLE=PA.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')

#Export en CSV
write.csv2(tableAdulteACC,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table adulte accident.csv")
write.csv2(tableEnfACC,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table enfant accident.csv")
write.csv2(tablePaACC,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table PA accident.csv")

write.csv2(tableAduNonAcc,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table adulte sans accident.csv")
write.csv2(tableEnfNonAcc,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table enfant sans accident.csv")
write.csv2(tablePaNonAcc,"C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données retravaillées/table PA sans accident.csv")
