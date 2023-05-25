#!/bin/bash
nom_fichier_cible=$1
nom_fichier_source=$2

# Copie du fichier source vers le fichier cible
cp "$2" "$1"

echo "Le fichier" $1 "a été créé et rempli avec le contenu de" $2"."
