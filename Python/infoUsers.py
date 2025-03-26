"""
Titulo: infoUsers
Fecha: 25/03/2025
Autor: José Luis Gómez Fernández
"""

import os
import cpuinfo as cpu

if os.getuid() == 1000:

    while True:
        print("Opción 1: Muestra información del SSOO e información de la CPU")
        print("Opción 2: Mostrar información del usuario")
        print("Opción 3: Dime un directorio")
        print("Opción 4: Salir")

        opcion = int(input("Introduce una opción: "))

        if opcion == 1:
            print(os.uname(), cpu.get_cpu_info()["brand_raw"])

        elif opcion == 2:
            usuario = input("Dime un usuario: ")
            fichero = open("/etc/passwd")
            contenido = fichero.readlines()
            encontrado = False
            for i in contenido:
                if usuario in i:
                    print(i)
                    encontrado = True
                    break
            if not encontrado:
                print(f"El usuario {usuario} no existe.")

        elif opcion == 3:
            directorio = input("Dime un directorio: ")
            if os.path.isdir(directorio):
                print("Es un directorio")
            else:
                os.mkdir(directorio)
                print("Directorio creado")

        elif opcion == 4:
            break

        else:
            print("Parámetro incorrecto")
else:
    print("No eres root")





