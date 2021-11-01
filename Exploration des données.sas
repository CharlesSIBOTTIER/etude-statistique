/*Importation des données*/
proc import datafile="C:\Users\Charles\OneDrive - Université de Poitiers\IRIAF\Études bilatéral\Étude actuarielle\DTA_Claims.csv"
    out=ETUDE.DTS_SINISTRES   /* Nom de la table en sortie */
    dbms=csv                /* Le type de données à importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    delimiter=';';           /* Le séparateur utilisé */
    getnames=yes;           /* Prendre la première ligne comme nom de colonnes */
run;
/*Conversion de l'année en texte*/
data ETUDE.DTS_SINISTRES;
set ETUDE.DTS_SINISTRES;
accYearBis=put(accYear,4.1);
run;
/*Suppression de la variable année en numérique et renommage de la nouvelle variable*/
data ETUDE.DTS_SINISTRES;
set ETUDE.DTS_SINISTRES (drop=accYear rename=(accYearBis=accYear));
run;

/*Stats descs sur la variable eval et pay*/
proc univariate data=ETUDE.DTS_SINISTRES;
var eval pay;
run;
