/*D�finit le chemin des fichiers*/
%let path= C:\Users\Charles\OneDrive - Universit� de Poitiers\IRIAF\�tudes bilat�ral\�tude actuarielle\Codes Charles\Code SAS\;

/*Cr�ation de la librairie*/
libname ETUDE "&path.";

/*Permet d'effectuer l'importation et les stats descs*/
%include "&path.\Exploration des donn�es.sas";

/*Permet de faire le chain Ladder*/
%include "&path.\Chain Ladder.sas";
