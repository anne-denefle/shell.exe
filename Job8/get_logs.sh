#!/bin/bash

# Chemin du dossier Backup
backup_dir="/home/anne/Shell.exe/Job8/Backup"

# Création du dossier Backup s'il n'existe pas
mkdir -p "$backup_dir"

# Date formatée (jj-mm-aaaa-HH:MM)
date_formatted=$(date +"%d-%m-%Y-%H:%M")

# Nom du fichier avec le nombre de connexions et la date
file_name="number_connection-$date_formatted.txt"

# Commande pour extraire le nombre de connexions à la session
connection_count=$(who | wc -l)

# Enregistrement du nombre de connexions dans le fichier
echo "$connection_count" > "$file_name"

# Archivage du fichier dans le dossier Backup
tar -czvf "$backup_dir/$file_name.tar.gz" "$file_name"
# Suppression du fichier original
# rm "$file_name"
