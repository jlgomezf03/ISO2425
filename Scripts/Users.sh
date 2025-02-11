#!/bin/bash
#
# Script de user
# Autor: Jose Luis Gomez Fernandez
# Fecha: 11/02/2025

clear

IFS=:

while read us x uid gid d h shell; do

	echo "$us - $uid"

done < /etc/passwd

if [ $# -lt 2 ]; then

	echo "Debes introducir dos parametros"
	exit

fi

if [ $USER != 'root' ]; then

	echo "Para ejecutar este script hay que ser root"
	exit

fi

if  ! grep "^1:" /etc/passwd > /dev/null ; then

	useradd $1
	echo "Se ha creado el usuario"

fi

usuario="$1"
shift

for grupo in $# ; do

	if ! grep $grupo /etc/group >/dev/null ; then

		groupadd $grupo
		echo "Se ha creado el grupo"
		if ! grep $usuario 
