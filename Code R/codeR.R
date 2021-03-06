library(sqldf)
library(dplyr)


#Importation des donn�es
acc <- read.csv2("./../../Donn�es Calyxis/CSV/ACC.csv",sep=";",stringsAsFactors = FALSE)
adu <- read.csv2("./../../Donn�es Calyxis/CSV/ADU.csv",sep=";",stringsAsFactors = FALSE)
enf <- read.csv2("./../../Donn�es Calyxis/CSV/ENF.csv",sep=";",stringsAsFactors = FALSE)
foy <- read.csv2("./../../Donn�es Calyxis/CSV/FOY.csv",sep=";",stringsAsFactors = FALSE)
ind <- read.csv2("./../../Donn�es Calyxis/CSV/IND.csv",sep=";",stringsAsFactors = FALSE)
pa <- read.csv2("./../../Donn�es Calyxis/CSV/PA.csv",sep=";",stringsAsFactors = FALSE)
relier <- read.csv2("./../../Donn�es Calyxis/CSV/RELINDACC.csv",sep=";",stringsAsFactors = FALSE)

#Cr�ation des tables
source("./Creation tables.R")

#Retraitement des NA
source("./Code retraitement NA/Retraitement general.R")

#Permet de faire les regroupements de variables
#source("./Code regroupement/Regroupement general.R")

#Export en CSV
source("./Exportation des tables.R")