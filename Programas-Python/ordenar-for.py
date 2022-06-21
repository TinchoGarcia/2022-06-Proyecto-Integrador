my_list = [10, 1, 8, 3, 5]
length = len(my_list)

for i in range(length // 2):
    my_list[i], my_list[length - i - 1] = my_list[length - i - 1], my_list[i]

print(my_list)

#Nota:

#Hemos asignado la variable length a la longitud de la lista actual (esto hace que nuestro código sea un poco más claro y más corto).
#Hemos preparado el bucle for para que se ejecute su cuerpo length // 2 veces (esto funciona bien para listas con longitudes pares e impares, porque cuando la lista contiene un número impar de elementos, el del medio permanece intacto).
#Hemos intercambiado el elemento i (desde el principio de la lista) por el que tiene un índice igual a (length-i-1) (desde el final de la lista); en nuestro ejemplo, for i igual a 0 a la (length-i-1) da 4; for i igual a 3, da 3: esto es exactamente lo que necesitábamos.