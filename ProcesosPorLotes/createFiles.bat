@echo off
Rem Script createFiles
Rem Autor: José Luis Gómez Fernández 
Rem Fecha: 20-11-2024

echo Pulsa 1 para crear un archivo .txt
echo Pulsa 2 para crear un archivo .bat

set /P opciones=

if %opciones% EQU 1 goto txt
if %opciones% EQU 2 goto bat
if %opciones% EQU 1 goto error
if %opciones% EQU 2 goto error

:txt
set /P txt="Dame un nombre para el archivo txt: "
echo > %txt%.txt
pause
exit

:bat
set /P bat="Dame un nombre para el archivo bat: "
echo > %bat%.bat
pause
exit

:error
echo Introduce el valor 1 o 2
pause
exit



