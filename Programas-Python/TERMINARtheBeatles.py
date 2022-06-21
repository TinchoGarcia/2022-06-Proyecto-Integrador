#Escribe un programa que refleje estos cambios y le permita practicar con el concepto de listas. Tu tarea es:

#Paso 1: Crea una lista vacía llamada beatles.LISTO
#Paso 2: Emplea el método append() para agregar los siguientes miembros de la banda a la lista: John Lennon, Paul McCartney y George Harrison. LISTO
#Paso 3: Emplea el buclefor y el append() para pedirle al usuario que agregue los siguientes miembros de la banda a la lista: Stu Sutcliffe, y Pete Best.
#Paso 4: Usa la instrucción del para eliminar a Stu Sutcliffe y Pete Best de la lista.
#Paso 5: Usa el método insert() para agregar a Ringo Starr al principio de la lista.
#Por cierto, ¿eres fan de los Beatles? (Los Beatles son una de las bandas favoritas de Greg. Pero espera...¿Quién es Greg?)

# paso 1
beatles = []

print("Paso 1, Crear lista vacia :", beatles)

# paso 2
beatles.append("John Lennon")
beatles.append("Paul McCartney")
beatles.append("George Harrison")
print("Paso 2 Agregar a 3 integrantes de la banda:", beatles)

# paso 3
print("Paso 3 Por favor, agregue a Stu Sutcliffe y a Pete Best a la lista:")

for i in range(2):
    input("Ingresar nombre\n")
    beatles.append(i + 1)

print(beatles)

# paso 4
print("Paso 4:", beatles)

# paso 5
print("Paso 5:", beatles)


# probando la longitud de la lista
print("Los Fav", len(beatles))
