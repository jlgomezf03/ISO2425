#!/bin/bash
#
# Script de calculadora
# Autor: Jose Luis Gomez Fernandez
# Fecha: 4/02/2025

clear

echo "Autor: José Luis Gómez Fernández"

if [ $# -ne 2 ]; then

	echo "Debes de proporcionar los parámetros"
	exit

fi

archivosalida="$1"
maxoperaciones="$2"

if [ -e "$archivosalida" ]; then

	echo "El fichero ya existe"
	exit

fi

contador=0

while [ $contador -lt $maxoperaciones ]; do

	echo "Operación Op1 Op2"
	read -p "Operación num1 num2"

if [ "$operacion" == "X" ]; then

	echo "Fin de la calculadora"
	break

fi

case $operacion in

	"S")

		resultado=$((num1 + num2))
		echo "S $num1 $num2 = $resultado" >> "$archivosalida"
		echo "El resultado es: $resultado"

	;;


	"R")

		resultado=$((num1 - num2))
		echo "R $num1 $num2 = $resultado" >> "$archivosalida"
		echo "El resultado es: $resultado"

	;;


	"M")

		resultado=$((num1 * num2))
		echo "M  $num1 $num2 = $resultado" >> "$archivosalida"
		echo "El resultado es: $resultado"

	;;


	"D")

		resultado=$((num1 / num2))
		echo "D $num1 $num2 = $resultado" >> "$archivosalida"
		echo "El resultado es: $resultado"

	;;


	*)

		echo "Operación inválida, utilice S, R, M, D para las operaciones o X para salir"
		continue

	;;

esac

contador=$(( contador + 1))

done

echo "Ruta del archivo de salida: $(realpath "$archivosalida")"
echo "Contenido de este archivo"

cat "$archivosalida"
