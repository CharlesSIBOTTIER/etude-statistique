library(readxl)
library(xlsx)

#Importation des données

acc <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/ACC.xlsx")
adu <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/ADU.xlsx")
enf <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/ENF.xlsx")
foy <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/FOY.xlsx")
ind <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/IND.xlsx")
relier <- read_excel("C:/Users/Charles/OneDrive - Université de Poitiers/IRIAF/Études bilatéral/Étude statistique/Données Calyxis/RELINDACC.xlsx")

tableadulte<-merge(merge(merge(merge(foy,relier,by="STR_CLE"),adu,by="IND_CLE"),ind,by="IND_CLE"),acc,by="ACC_CLE")
tableenf<-merge(merge(merge(merge(foy,relier,by="STR_CLE"),enf,by="IND_CLE"),ind,by="IND_CLE"),acc,by="ACC_CLE")

#Export en CSV
write.csv2(tableadulte,"tableadulte.csv")
write.csv2(tableenf,"tableenfant.csv")

