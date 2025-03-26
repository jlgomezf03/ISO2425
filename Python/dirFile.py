"""
Titulo: dirFile
Fecha: 26/03/2025
Autor: José Luis Gómez Fernández
"""

import os
import shutil

listaCarpetas = []
listaFicheros = []

fichero = open("/home/alumno/Escritorio/rutas.txt", "r")
for linea in fichero:
    ruta = linea[:-1]
    if os.path.isfile(ruta):
        listaFicheros.append(ruta)
    if os.path.isdir(ruta):
        listaCarpetas.append(ruta)
fichero.close()

print("Carpetas:", listaCarpetas)
print("Ficheros:", listaFicheros)

while True:
    print("\nMenú de opciones:")
    print("A. Pedir nombre de fichero y eliminarlo.")
    print("B. Pedir nombre de directorio y mostrar su información.")
    print("C. Pedir nombre de fichero, nombre de destino y copiarlo en dicho destino.")
    print("D. Mostrar lista elegida por el usuario.")
    print("E. Salir.")

    opcion = input("Introduce una opción: ")

    if opcion == "A":
        fich = input("Introduce el nombre del fichero a eliminar: ")
        if fich in listaFicheros:
            os.system("rm -f " + fich)
            print("Fichero eliminado:", fich)

    elif opcion == "B":
        dir_nombre = input("Introduce el nombre del directorio: ")
        if dir_nombre in listaCarpetas:
            print("Contenido del directorio:")
            print(os.listdir(dir_nombre))

    elif opcion == "C":
        fich = input("Introduce el nombre del fichero a copiar: ")
        destino = input("Introduce la ruta de destino: ")
        if fich in listaFicheros:
            shutil.copy(fich, destino)
            print("Fichero copiado en:", destino)

    elif opcion == "D":
        tipo_lista = input("¿Qué lista quieres ver? (F para ficheros, D para directorios): ")
        if tipo_lista == "F":
            print("Lista de ficheros:", listaFicheros)
        elif tipo_lista == "D":
            print("Lista de directorios:", listaCarpetas)

    elif opcion == "E":
        print("Saliendo del programa...")
        break


