#Escenario
#Había una vez un sombrero. El sombrero no contenía conejo, sino una lista de cinco números: 1, 2, 3, 4 y 5.

#Tu tarea es:

#Escribir una línea de código que solicite al usuario que reemplace el número central en la lista con un número entero ingresado por el usuario (Paso 1).
#Escribir una línea de código que elimine el último elemento de la lista (Paso 2).
#Escribir una línea de código que imprima la longitud de la lista existente (Paso 3).
#¿Listo para este desafío?

hat_list = [1, 2, 3, 4, 5]  # Esta es una lista existente de números ocultos en el sombrero.

# Paso 1: escribe una línea de código que solicite al usuario
# reemplazar el número de en medio con un número entero ingresado por el usuario.
hat_list [2] = int(input("Ingrese valor para reemplazar el numero central de la lista\n"))
print (hat_list) 

# Paso 2: escribe aquí una línea de código que elimine el último elemento de la lista.
del hat_list [4]
print ("Ultimo numero eliminado\n")
print (hat_list)

# Paso 3: escribe aquí una línea de código que imprima la longitud de la lista existente.
print("Longitud de la lista:", len(hat_list))
print("FIN DEL PROGRAMA")