"""Crear una lista denominada 'dueno2' y recorrerla con un bucle mostrando sus elementos por pantalla con excepción
del DNI y el apellido.
Elementos de la lista: DNI: 23546987, nombre: 'Maria', apellido: 'Perez', telefono: 4789689, dirección: 'Pueyrredon  811' """


dueno2 = [23546987, 'Maria', 'Perez', 4789689, 'Pueyrredon  811']

for i in dueno2:
    if i== dueno2[0] or i== dueno2[2]:
        continue
    print(i)
