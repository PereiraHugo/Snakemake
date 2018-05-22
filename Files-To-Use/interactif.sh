#!/bin/bash
#Until a number is put, it waits
until [[ ${nombre} =~ ^[0-9]+$ ]]; do
echo "How many people to enter ?"
read number
done
 
#Du nombre saisi jusqu'a 1 inclus, je vais executer
for (( i=${number}; i>=1; i-- ))
do
 
#Tant que la variable est vide, j'attends la saisie
while [ -z ${family_name[$i]} ]; do
echo "Please enter a family name"
read family_name[$i]
done
 
echo "Bienvenue ${nom[$i]}"
 
#Jusqu'a ce que la variable ne soit pas vide, j'attends la saisie
until [ ! -z ${first_name[$i]} ]; do
echo "Please enter a first_name"
read first_name[$i]
done
 
echo "${first_name[$i]} ${family_name[$i]} was add! Come on, $(($i - 1)) remaining!"
 
done
 
echo "Listing of all names:"
 
#Affiche tout le contenu du tableau (array) contenu dans la variable nom
echo ${family_name[*]}
 
echo "Listing de la totalite du tableau associatif :"
for (( i=1; i<=${number}; i++ ))
do
 
echo ${first_name[$i]} ${family_name[$i]}

done
