#Escenario
#Millas y kilómetros son unidades de longitud o distancia.
#Teniendo en mente que 1 milla equivale aproximadamente a 1.61 kilómetros, complementa el programa en el editor para que convierta de:
#Millas a kilómetros.
#Kilómetros a millas.
#No se debe cambiar el código existente. Escribe tu código en los lugares indicados con ###. Prueba tu programa con los datos que han sido provistos en el código fuente.
#Pon mucha atención a lo que esta ocurriendo dentro de la función print(). Analiza como es que se proveen múltiples argumentos para la función, y como es que se muestra el resultado.
#Nota que algunos de los argumentos dentro de la función print() son cadenas (por ejemplo "millas son", y otros son variables (por ejemplo miles).

km_recorridos = 12.25
millas_recorridas = 7.38

kilometros_a_millas = km_recorridos * 0.62;
millas_a_kilometros = millas_recorridas * 1.61;


print(str(km_recorridos) + " kilometros , en millas son " + str(kilometros_a_millas));
print(str(millas_recorridas) + " millas, en kilometros son " + str(millas_a_kilometros));

