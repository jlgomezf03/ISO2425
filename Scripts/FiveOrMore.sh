#!/bin/bash
#
# Script de FiveOrMore
# Autor: Jose Luis Gomez Fernandez
# Fecha: 11/02/2025

clear

if [ $# -ne 2 ]; then

	echo "Introduce dos parametros"
	exit

fi

if [ -f $1 ]; then

	echo "El fichero no debe de existir hay que borrarlo"
	exit

fi

if [ ! -d $2 ]; then

	echo "El directorio debe de existir"

fi

arch=$(ls $2 | wc -l)

if [ $arch -eq 0 ]; then

	echo "Directorio $2 vacío"
	exit

fi

echo "Jose Luis Gomez Fernandez"

ficheros=$(ls $2/*.txt)

for i in $ficheros/*txt; do
	if[ -f $i ]; then
		lineas=$(cat $i | wc -l)
		if [ $lineas -ge 5 ]; then
			#Parte 3
			echo $i
			echo $i >> $1
			#Parte 4
			palabras=$(cat $i | wc -w)
			echo "El fichero tiene $palabras palabras" >$i.q
			cat $i >> $i.q

		fi

	 fi

done

numero=$(cat $1 | wc -l)

echo $numero >> $1
