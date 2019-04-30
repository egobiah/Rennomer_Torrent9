#!/bin/bash
# Lancer le script via ./cut.sh /nom_du_dossier_a_nettoyer
# Attention, le programme est récurssif, modifie le nom des fichiers. Pour modifier la récursivité, mettre en commentaire la ligne 59


rep=$(basename "${1}" /)

do_the_job(){
	echo "Dans le dossier ${1}"	
	for FILES in "${1}"/*
	do	
	base=$(basename "$FILES" .part)
	comp=$(basename "$FILES" )
	if [ "${base}.part" != "$comp" ] 
	then	   
	   NewName=`echo "${FILES}"  | sed 's/\] /]/'`
	   NewName=`echo "${NewName}"  | sed 's/--> Torrent9.uno <--//'`  
	   NewName=`echo "${NewName}"  | sed 's/\[ Torrent9.blue ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ www.Torrent9.EC ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ www.Torrent9.Red ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ www.Torrent9.red ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[DragonMax]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ Torrent9.info ]//'` 
	   NewName=`echo "${NewName}"  | sed 's/\[www.T9.pe]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.Torrent9.uno]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ www.Torrent9.uno ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ www.Torrent9.Tv ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.CpasBien.cm ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[Fansub-Resistance]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.CpasBien.io]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.CpasBien.pw]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.Cpasbien.pe]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.Cpasbien.me]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.CpasBien.cm]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.Cpasbien.pw]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.Cpasbien.com]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.Cpasbien.com]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ www.Torrent9.Tv ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[Torrent9.ws]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[www.Torrent9.Tv]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ www.T9.pe ]//'`
	   NewName=`echo "${NewName}"  | sed 's/\[ www.Torrent9.EC ]//'`
	   NewName=`echo "${NewName}"  | sed 's/.WwW.Torrent9.pe//'`


	
	   #NewName=`echo "${NewName}" | sed 's/ /./g'`
	   
		if [ "$FILES" != "$NewName" ]
		then	
		#echo $FILES
		
		mv "${OldName}" "${FILES}"
		fi
		#echo " "

		if [ -d "$FILES" ]
		 	then
			do_the_job "${FILES}"
		fi
	fi
	done
}



 
do_the_job $1
