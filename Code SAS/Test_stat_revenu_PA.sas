/*Import des PA accident�es*/
proc import datafile="C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude statistique\Donn�es retravaill�es\table PA accident.csv" 
    out=PA_acc   /* Nom de la table en sortie */
    dbms=csv                /* Le type de donn�es � importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    delimiter=';';           /* Le s�parateur utilis� */
    getnames=yes;           /* Prendre la premi�re ligne comme nom de colonnes */
run; 

/*Import des PA non accident�es*/
proc import datafile="C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude statistique\Donn�es retravaill�es\table PA sans accident.csv" 
    out=PA_non_acc   /* Nom de la table en sortie */
    dbms=csv                /* Le type de donn�es � importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    delimiter=';';           /* Le s�parateur utilis� */
    getnames=yes;           /* Prendre la premi�re ligne comme nom de colonnes */
run; 

/*Import des Adultes accident�es*/
proc import datafile="C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude statistique\Donn�es retravaill�es\table adulte accident.csv" 
    out=adu_acc   /* Nom de la table en sortie */
    dbms=csv                /* Le type de donn�es � importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    delimiter=';';           /* Le s�parateur utilis� */
    getnames=yes;           /* Prendre la premi�re ligne comme nom de colonnes */
run; 

/*Import des PA non accident�es*/
proc import datafile="C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude statistique\Donn�es retravaill�es\table adulte sans accident.csv" 
    out=adu_non_acc   /* Nom de la table en sortie */
    dbms=csv                /* Le type de donn�es � importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    delimiter=';';           /* Le s�parateur utilis� */
    getnames=yes;           /* Prendre la premi�re ligne comme nom de colonnes */
run;

/*Import des PA non accident�es*/
proc import datafile="C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude statistique\Donn�es retravaill�es\Tous les PA.csv" 
    out=ts_PA   /* Nom de la table en sortie */
    dbms=csv                /* Le type de donn�es � importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    delimiter=';';           /* Le s�parateur utilis� */
    getnames=yes;           /* Prendre la premi�re ligne comme nom de colonnes */
run; 

/*Import des PA non accident�es*/
proc import datafile="C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude statistique\Donn�es retravaill�es\Tous les enfants.csv" 
    out=ts_enf   /* Nom de la table en sortie */
    dbms=csv                /* Le type de donn�es � importer */
    replace;               /* A utiliser pour remplacer la table de sortie*/
    delimiter=';';           /* Le s�parateur utilis� */
    getnames=yes;           /* Prendre la premi�re ligne comme nom de colonnes */
run; 

/*Cr�ation des tranches de revenu pour les PA accident�s*/
data pa_acc;
	length revenu_annuel $50;
	set pa_acc;
	if revenu_annuel_lst<2 then revenu_annuel="Inf�rieur � 10 000 �";
	else if revenu_annuel_lst<4 then revenu_annuel="Entre 10 000 et 20 000 �";
	else if revenu_annuel_lst<6 then revenu_annuel="Entre 20 000 et 40 000 �";
	else if revenu_annuel_lst<6 then revenu_annuel="Entre 40 000 et 60 000 �";
	else if revenu_annuel_lst<8 then revenu_annuel="Entre 60 000 et 80 000 �";
	else if revenu_annuel_lst<10 then revenu_annuel="Entre 80 000 et 100 000 �";
	else if revenu_annuel_lst=11 then revenu_annuel="Sup�rieur � 100 000 �";
	else if revenu_annuel_lst=98 then revenu_annuel="Ne souhaite pas r�pondre";
	else revenu_annuel="Ne sait pas";
run;

/*Cr�ation des tranches de revenu pour les PA non accident�s*/
data pa_non_acc;
	length revenu_annuel $50;
	set pa_non_acc;
	if revenu_annuel_lst<2 then revenu_annuel="Inf�rieur � 10 000 �";
	else if revenu_annuel_lst<4 then revenu_annuel="Entre 10 000 et 20 000 �";
	else if revenu_annuel_lst<6 then revenu_annuel="Entre 20 000 et 40 000 �";
	else if revenu_annuel_lst<6 then revenu_annuel="Entre 40 000 et 60 000 �";
	else if revenu_annuel_lst<8 then revenu_annuel="Entre 60 000 et 80 000 �";
	else if revenu_annuel_lst<10 then revenu_annuel="Entre 80 000 et 100 000 �";
	else if revenu_annuel_lst=11 then revenu_annuel="Sup�rieur � 100 000 �";
	else if revenu_annuel_lst=98 then revenu_annuel="Ne souhaite pas r�pondre";
	else revenu_annuel="Ne sait pas";
run;

/*Cr�ation des tranches de revenu pour les adultes accident�s*/
data adu_acc;
	length revenu_annuel $50;
	set pa_acc;
	if revenu_annuel_lst<2 then revenu_annuel="Inf�rieur � 10 000 �";
	else if revenu_annuel_lst<4 then revenu_annuel="Entre 10 000 et 20 000 �";
	else if revenu_annuel_lst<6 then revenu_annuel="Entre 20 000 et 40 000 �";
	else if revenu_annuel_lst<6 then revenu_annuel="Entre 40 000 et 60 000 �";
	else if revenu_annuel_lst<8 then revenu_annuel="Entre 60 000 et 80 000 �";
	else if revenu_annuel_lst<10 then revenu_annuel="Entre 80 000 et 100 000 �";
	else if revenu_annuel_lst=11 then revenu_annuel="Sup�rieur � 100 000 �";
	else if revenu_annuel_lst=98 then revenu_annuel="Ne souhaite pas r�pondre";
	else revenu_annuel="Ne sait pas";
run;

/*Cr�ation des tranches de revenu pour les adultes non accident�s*/
data adu_non_acc;
	length revenu_annuel $50;
	set pa_non_acc;
	if revenu_annuel_lst<2 then revenu_annuel="Inf�rieur � 10 000 �";
	else if revenu_annuel_lst<4 then revenu_annuel="Entre 10 000 et 20 000 �";
	else if revenu_annuel_lst<6 then revenu_annuel="Entre 20 000 et 40 000 �";
	else if revenu_annuel_lst<6 then revenu_annuel="Entre 40 000 et 60 000 �";
	else if revenu_annuel_lst<8 then revenu_annuel="Entre 60 000 et 80 000 �";
	else if revenu_annuel_lst<10 then revenu_annuel="Entre 80 000 et 100 000 �";
	else if revenu_annuel_lst=11 then revenu_annuel="Sup�rieur � 100 000 �";
	else if revenu_annuel_lst=98 then revenu_annuel="Ne souhaite pas r�pondre";
	else revenu_annuel="Ne sait pas";
run;

/*Comparaison des retraites pour les Adultes accident�s*/
proc ttest data=adu_acc h0=0.09;
var ressource3;
quit;
/*Comparaison des retraites pour les Adultes non accident�s*/
proc ttest data=adu_non_acc h0=0.13;
var ressource3;
quit;

/*Comparaison des moyennes sur le sexe*/
proc ttest data=ts_enf;
	var IND_SEXE;
quit;
