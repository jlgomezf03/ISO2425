#!/bin/bash
#
# Script de calculadora
# Autor: Jose Luis Gomez Fernandez
# Fecha: 4/02/2025

clear

echo "Autor: José Luis Gómez Fernández"

if [ $# -ne 2 ]; then
    echo "Debes proporcionar los parámetros."
    exit 1

fi

archivosalida="$1"
maxoperaciones="$2"

if [ -e "$archivosalida" ]; then
    read -p "El fichero ya existe. ¿Deseas sobrescribirlo? (S/N): " respuesta
    if [ "$respuesta" != "S" ]; then
        echo "Saliendo..."
        exit 1

    fi
fi

contador=0

while [ $contador -lt $maxoperaciones ]; do
    echo "Ingrese una operación y dos números (Ej: S 4 5) o X para salir"
    read operacion num1 num2

    if [ "$operacion" = "X" ]; then
        echo "Fin de la calculadora"
        break
    fi

    case $operacion in

        "S")

            resultado=$((num1 + num2))

         ;;


        "R")

            resultado=$((num1 - num2))

         ;;


        "M")

            resultado=$((num1 * num2))

         ;;


        "D")

            if [ "$num2" -eq 0 ]; then
                echo "Error: No se puede dividir por cero."
                continue
            fi
            resultado=$((num1 / num2))

         ;;


        *)

            echo "Operación inválida, use S, R, M, D o X para salir."
            continue

        ;;

    esac

    echo "$operacion $num1 $num2 = $resultado" >> "$archivosalida"
    echo "El resultado es: $resultado"

    contador=$((contador + 1))

done

echo "Ruta del archivo de salida: $archivosalida"
echo "Contenido del archivo:"
cat "$archivosalida”

