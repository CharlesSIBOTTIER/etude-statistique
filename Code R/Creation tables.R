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
accident<-sqldf('SELECT relier.REF_CLE, ind.IND_CLE, ind.STR_CLE, acc.*
                FROM ind
                LEFT JOIN relier ON relier.IND_CLE=ind.IND_CLE
                LEFT JOIN acc ON acc.ACC_CLE=relier.ACC_CLE')

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

tableAdulteACC$TypeAccident<-0

#Chute
for (i in 27:34){
  for (j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){
      tableAdulteACC[j,i]<-0
    }
    if(tableAdulteACC[j,i]==1){
      tableAdulteACC[j,1222]<-1
    }
  }
}

#Brulure
for (i in 10:19){
  for (j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){
      tableAdulteACC[j,i]<-0
    }
    if(tableAdulteACC[j,i]==1){
      tableAdulteACC[j,1222]<-7
    }
  }
}

#Electricit�
for (i in 54:62){
  for (j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){
      tableAdulteACC[j,i]<-0
    }
    if(tableAdulteACC[j,i]==1){
      tableAdulteACC[j,1222]<-8
    }
  }
}

#Intoxication
for (i in 66:77){
  for (j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){
      tableAdulteACC[j,i]<-0
    }
    if(tableAdulteACC[j,i]==1){
      tableAdulteACC[j,1222]<-6
    }
  }
}

#Choc
for (i in 21:25){
  for (j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){
      tableAdulteACC[j,i]<-0
    }
    if(tableAdulteACC[j,i]==1){
      tableAdulteACC[j,1222]<-2
    }
  }
}

#Ecrasement
for (i in 45:53){
  for (j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){
      tableAdulteACC[j,i]<-0
    }
    if(tableAdulteACC[j,i]==1){
      tableAdulteACC[j,1222]<-3
    }
  }
}

#Corps �tranger
for (i in 37:42){
  for (j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){
      tableAdulteACC[j,i]<-0
    }
    if(tableAdulteACC[j,i]==1){
      tableAdulteACC[j,1222]<-4
    }
  }
}

#Noyade
for (i in 81:88){
  for (j in 1:nrow(tableAdulteACC)){
    if(is.na(tableAdulteACC[j,i])){
      tableAdulteACC[j,i]<-0
    }
    if(tableAdulteACC[j,i]==1){
      tableAdulteACC[j,1222]<-5
    }
  }
}

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

tableEnfACC$TypeAccident<-0

#Chute
for (i in 27:34){
  for (j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){
      tableEnfACC[j,i]<-0
    }
    if(tableEnfACC[j,i]==1){
      tableEnfACC[j,1222]<-1
    }
  }
}

#Brulure
for (i in 10:19){
  for (j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){
      tableEnfACC[j,i]<-0
    }
    if(tableEnfACC[j,i]==1){
      tableEnfACC[j,1222]<-7
    }
  }
}

#Electricit�
for (i in 54:62){
  for (j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){
      tableEnfACC[j,i]<-0
    }
    if(tableEnfACC[j,i]==1){
      tableEnfACC[j,1222]<-8
    }
  }
}

#Intoxication
for (i in 66:77){
  for (j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){
      tableEnfACC[j,i]<-0
    }
    if(tableEnfACC[j,i]==1){
      tableEnfACC[j,1222]<-6
    }
  }
}

#Choc
for (i in 21:25){
  for (j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){
      tableEnfACC[j,i]<-0
    }
    if(tableEnfACC[j,i]==1){
      tableEnfACC[j,1222]<-2
    }
  }
}

#Ecrasement
for (i in 45:53){
  for (j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){
      tableEnfACC[j,i]<-0
    }
    if(tableEnfACC[j,i]==1){
      tableEnfACC[j,1222]<-3
    }
  }
}

#Corps �tranger
for (i in 37:42){
  for (j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){
      tableEnfACC[j,i]<-0
    }
    if(tableEnfACC[j,i]==1){
      tableEnfACC[j,1222]<-4
    }
  }
}

#Noyade
for (i in 81:88){
  for (j in 1:nrow(tableEnfACC)){
    if(is.na(tableEnfACC[j,i])){
      tableEnfACC[j,i]<-0
    }
    if(tableEnfACC[j,i]==1){
      tableEnfACC[j,1222]<-5
    }
  }
}

#Permet d'avoir les accidents sur les personnes �g�es
tablePaACC<-sqldf('SELECT *
                    FROM accident as acci
                    INNER JOIN PATotal as PA ON acci.IND_CLE=PA.IND_CLE
                    LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                    WHERE acci.ACC_CLE is not null
                   ')

#Permet de supprimer les colonnes en doublons sur la table Accident sur les PA
idx = which(duplicated(names(tablePaACC)))
tablePaACC <- tablePaACC[,-c(idx,1480,1481)]

tablePaACC$TypeAccident<-0
#Chute
for (i in 27:34){
  for (j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){
      tablePaACC[j,i]<-0
    }
    if(tablePaACC[j,i]==1){
      tablePaACC[j,1222]<-1
    }
  }
}

#Brulure
for (i in 10:19){
  for (j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){
      tablePaACC[j,i]<-0
    }
    if(tablePaACC[j,i]==1){
      tablePaACC[j,1222]<-7
    }
  }
}

#Electricit�
for (i in 54:62){
  for (j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){
      tablePaACC[j,i]<-0
    }
    if(tablePaACC[j,i]==1){
      tablePaACC[j,1222]<-8
    }
  }
}

#Intoxication
for (i in 66:77){
  for (j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){
      tablePaACC[j,i]<-0
    }
    if(tablePaACC[j,i]==1){
      tablePaACC[j,1222]<-6
    }
  }
}

#Choc
for (i in 21:25){
  for (j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){
      tablePaACC[j,i]<-0
    }
    if(tablePaACC[j,i]==1){
      tablePaACC[j,1222]<-2
    }
  }
}

#Ecrasement
for (i in 45:53){
  for (j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){
      tablePaACC[j,i]<-0
    }
    if(tablePaACC[j,i]==1){
      tablePaACC[j,1222]<-3
    }
  }
}

#Corps �tranger
for (i in 37:42){
  for (j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){
      tablePaACC[j,i]<-0
    }
    if(tablePaACC[j,i]==1){
      tablePaACC[j,1222]<-4
    }
  }
}

#Noyade
for (i in 81:88){
  for (j in 1:nrow(tablePaACC)){
    if(is.na(tablePaACC[j,i])){
      tablePaACC[j,i]<-0
    }
    if(tablePaACC[j,i]==1){
      tablePaACC[j,1222]<-5
    }
  }
}

sqldf("SELECT DISTINCT TypeAccident FROM tablePaACC")


#Permet d'avoir les Adultes non accident�s
tableAduNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN adulteTotal as adulte ON acci.IND_CLE=adulte.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')

#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les Adultes
idx = which(duplicated(names(tableAduNonAcc)))
tableAduNonAcc <- tableAduNonAcc[,-c(idx,1477,1478)]


#Permet d'avoir les enfants non accident�s
tableEnfNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN enfantTotal as enfant ON acci.IND_CLE=enfant.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')

#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les Enfants
idx = which(duplicated(names(tableEnfNonAcc)))
tableEnfNonAcc <- tableEnfNonAcc[,-c(idx,1480,1481)]


#Permet d'avoir les PA non accident�s
tablePaNonAcc<-sqldf('SELECT *
                      FROM accident as acci
                      INNER JOIN PATotal as PA ON acci.IND_CLE=PA.IND_CLE
                      LEFT JOIN foy ON foy.STR_CLE=acci.STR_CLE
                      WHERE acci.ACC_CLE is null
                     ')


#Permet de supprimer les colonnes en doublons sur la table des non Accident sur les PA
idx = which(duplicated(names(tablePaNonAcc)))
tablePaNonAcc <- tablePaNonAcc[,-c(idx,1480,1481)]