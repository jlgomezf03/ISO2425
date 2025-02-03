#!/bin/bash
#
# Script de Agenda
# Autor: Jose Luis Gomez Fernandez
# Fecha: 03/02/2025

clear

while true; do

	echo "Menu de opciones"
	echo "a)-Añadir una entrada"
	echo "b)-Buscar por dni"
	echo "c)-Ver toda la agenda"
	echo "d)-Eliminar todas las entradas de la agenda"
	echo "e)-Salir"

	a)

		read -p "Introduce una opcion " opcion
		if grep "^$dni:" Agenda.txt >/dev/null; then

			echo "Esta persona ha sido dada de alta"

		else

		read -p "Introduce un nombre: " nombre
		read -p "Introduce los apellidos: " apellidos
		read -p "Introduce la poblacion: " poblacion
		echo "$DNI:$name:$username:$localidad" >> Agenda.txt

		fi

	;;

	b)

		read -p "Introduzca el DNI: " dni
		if grep "^dni" Agenda.txt /dev/null; then

		nombre=$(grep "^$dni:" Agenda.txt | cut -d ":" -f 2)
		apellidos=$(grep "^$dni:" Agenda.txt | cut -d ":" -f 2)
		poblacion=$(grep "$^dni:" Agenda.txt | cut -d ":" -f 2)

	;;

	c)

		if [ -s "Agenda.txt" ]; then
		cat Agenda.txt

	else

		echo "Agenda vacia"

	;;

	d)

		>Agenda.txt

	;;


	e)
		echo "Salir"
		break

	;;


esac
