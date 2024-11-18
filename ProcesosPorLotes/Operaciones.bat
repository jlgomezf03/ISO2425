@echo off
Rem Script: variables
Rem Autor: José Luis Gómez Fernández
Rem Fecha: 18-11-2024

set /P num1="Introduzca un numero "
set /P num2="Introduzca un segundo numero "

set /a suma=num1 + num2
set /a resta=num1 - num2
set /a multiplicacion=num1 * num2
set /a division=num1 / num2

echo La suma de %num1% y %num2% es %suma%
echo La resta de %num1% y %num2% es %resta%
echo La multiplicacion de %num1% y %num2% es %multiplicacion%
echo La division de %num1% y %num2% es %division% 

