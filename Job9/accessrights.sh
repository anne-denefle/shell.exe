#!/bin/bash
#
# 

#stocker le parametre dans une variable
fichier="/home/anne/Shell.exe/Job9/Shell_Userlist.csv" 
sed -i 's/ //g' Shell_Userlist.csv

while IFS=',' read Id Prenom Nom Pwd Role
	do
	 create_user() { 
		local username=$1 local password=$2 local id=$3 local role=$4 
		sudo useradd -m $username -p $password -u $id -G $role
        echo "ROLE:" $role
	 if [ "$role" == "Admin" ]; then
           sudo usermod -aG sudo $username
         fi
	echo "l'utilisateur a été créé avec success : $username $id"
       


}

create_user  "$Prenom.$Nom" $Pwd $Id $Role
done  <$fichier


