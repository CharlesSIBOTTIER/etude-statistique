/*Importation des donn�es*/
proc import datafile="C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude actuarielle\DTA_Claims.csv"
    out=ETUDE.DTS_SINISTRES   /* Nom de la table en sortie */
    dbms=csv                /* Le type de donn�es � importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    delimiter=';';           /* Le s�parateur utilis� */
    getnames=yes;           /* Prendre la premi�re ligne comme nom de colonnes */
run;
/*Conversion de l'ann�e en texte*/
data ETUDE.DTS_SINISTRES;
set ETUDE.DTS_SINISTRES;
accYearBis=put(accYear,4.1);
run;
/*Suppression de la variable ann�e en num�rique et renommage de la nouvelle variable*/
data ETUDE.DTS_SINISTRES;
set ETUDE.DTS_SINISTRES (drop=accYear rename=(accYearBis=accYear));
run;

/*Stats descs sur la variable eval et pay*/
proc univariate data=ETUDE.DTS_SINISTRES;
var eval pay;
run;
