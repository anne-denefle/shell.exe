#!/bin/bash

chiffre1=$1
operation=$2
chiffre2=$3

case "$operation" in
    "+")
        result=$(($chiffre1 + $chiffre2))
        ;;
    "-")
        result=$(($chiffre1 - $chiffre2))
        ;;
    "÷")
        if [ $chiffre2 -eq 0 ]; then
            echo "Erreur : division par zéro"
            exit 1
        fi
        result=$(($chiffre1 / $chiffre2))
        ;;
    "x")
        result=$(($chiffre1 * $chiffre2))
        ;;
    *)
        echo "Opération non prise en charge. Utilisez l'un des symboles suivants : +, -, ÷, x"
        exit 1
        ;;
esac

echo $1 $2 $3 "=" $result

