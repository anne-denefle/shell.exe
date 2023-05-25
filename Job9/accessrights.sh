#!/bin/bash
#
# 

#stocker le parametre dans une variable
	fichier="/home/anne/Shell.exe/Job9/Shell_Userlist.csv" 

while IFS=',' read Id Prenom Nom Pwd Role
 
do
echo "USER : $Id : $Pwd  $Role  $Prenom  $Nom"

done  <$fichier

