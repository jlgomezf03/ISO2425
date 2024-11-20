@echo off
Rem Script Directories
Rem Autor: José Luis Gómez Fernández
Rem Fecha: 20-11-2024

set /P opciones= "Introduce un numero del 1 al 5: "

if %opciones% EQU 1 goto Fichero
if %opciones% EQU 2 goto Temario
if %opciones% EQU 3 goto txt
if %opciones% EQU 4 goto Cdirectorios
if %opciones% EQU 5 goto Copia
if %opciones% GTR 1 goto error
if %opciones% GTR 2 goto error
if %opciones% GTR 3 goto error
if %opciones% GTR 4 goto error
if %opciones% GTR 5 goto error
pause
exit

:Fichero 
set /P fichero="Introduce un nombre para el fichero: "
echo > %fichero%.txt
pause
exit

:Temario
tree %userprofile%
pause
exit

:txt
dir * .txt
pause
exit 

:Cdirectorios
mkdir alredoff marinapg ramonam 
pause 
exit 

:error
echo Introduce un numero del 1 al 5
pause
goto opciones 
exit 





