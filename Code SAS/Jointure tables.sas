proc import datafile="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude statistique\Données Calyxis\ACC.xlsx"
    out=ACC   /* Nom de la table en sortie */
    dbms=xlsx                /* Le type de données à importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    getnames=yes;           /* Prendre la première ligne comme nom de colonnes */
run;
proc import datafile="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude statistique\Données Calyxis\FOY.xlsx"
    out=FOY   /* Nom de la table en sortie */
    dbms=xlsx                /* Le type de données à importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    getnames=yes;           /* Prendre la première ligne comme nom de colonnes */
run;
proc import datafile="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude statistique\Données Calyxis\ADU.xlsx"
    out=ADU   /* Nom de la table en sortie */
    dbms=xlsx                /* Le type de données à importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    getnames=yes;           /* Prendre la première ligne comme nom de colonnes */
run;
proc import datafile="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude statistique\Données Calyxis\ENF.xlsx"
    out=ENF   /* Nom de la table en sortie */
    dbms=xlsx                /* Le type de données à importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    getnames=yes;           /* Prendre la première ligne comme nom de colonnes */
run;
proc import datafile="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude statistique\Données Calyxis\IND.xlsx"
    out=IND   /* Nom de la table en sortie */
    dbms=xlsx                /* Le type de données à importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    getnames=yes;           /* Prendre la première ligne comme nom de colonnes */
run;
proc import datafile="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude statistique\Données Calyxis\RELINDACC.xlsx"
    out=RELINDACC   /* Nom de la table en sortie */
    dbms=xlsx                /* Le type de données à importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    getnames=yes;           /* Prendre la première ligne comme nom de colonnes */
run;
proc sql;
	create table tablebis as
	SELECT *
	FROM ACC, ADU, FOY,IND, RELINDACC
	WHERE ACC.ACC_CLE=RELINDACC.ACC_CLE
	AND ADU.IND_CLE=RELINDACC.IND_CLE
	AND IND.IND_CLE=RELINDACC.IND_CLE
	AND FOY.STR_CLE=RELINDACC.STR_CLE;
run;quit;
proc sql;
	create table tabletrois as
	SELECT *
	FROM ACC, ENF, FOY,IND, RELINDACC
	WHERE ACC.ACC_CLE=RELINDACC.ACC_CLE
	AND ENF.IND_CLE=RELINDACC.IND_CLE
	AND IND.IND_CLE=RELINDACC.IND_CLE
	AND FOY.STR_CLE=RELINDACC.STR_CLE;
run;quit;
proc contents data=tabletrois;run;quit;
PROC EXPORT DATA=work.tabletrois
		    DBMS=csv 
		    OUTFILE="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude statistique\Données Calyxis\Tableenfant.csv"  
		    REPLACE;
 		    DELIMITER=";";
run;
PROC EXPORT DATA=work.tablebis
		    DBMS=csv 
		    OUTFILE="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude statistique\Données Calyxis\Tableadulte.csv"  
		    REPLACE;
 		    DELIMITER=";";
run;
