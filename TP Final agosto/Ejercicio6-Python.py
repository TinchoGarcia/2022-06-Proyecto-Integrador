#6) Crear una tupla en Python con el nombre de “Historial2” la cual contenga los siguientes valores:
#23500, 5960, 2300, 10200, 8900

#Que representa montos de atención en pesos por diferentes servicios/consultas de la mascota “Frida”. Calcular el monto total gastado a lo largo del tiempo por atención de “Frida”.

#Crear una función que cuente cuantos gastos fueron superiores a 5000 mostrando el número calculado en pantalla.

Historial2 = (23500, 5960, 2300, 10200, 8900)

montoTotal = sum(Historial2)
#montoTotal = Historial2[0] + Historial2[1] + Historial2[2] + Historial2[3] + Historial2[4]

print ("Montos de atencion por servicios prestados/consultas de la mascota 'Frida' " + str(Historial2))
print ("Suma de los montos gastados por la atencion de 'Frida' : " + str(montoTotal))


def calculargastos():

    contador = 0

    for i in Historial2:

        if i > 5000 : 

            contador = contador + 1      
        
    print("Los gastos superiores a $5000 fueron: " + str(contador))

calculargastos()

