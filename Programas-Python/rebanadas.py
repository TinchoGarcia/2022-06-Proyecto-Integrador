# Copiando la lista entera.
list_1 = [1]
list_2 = list_1[:]
list_1[0] = 2
print(list_1)
print(list_2)

# Copiando parte de la lista.
my_list = [10, 8, 6, 4, 2]
new_list = my_list[1:3] #Una rebanada de este tipo crea una nueva lista (de destino), tomando elementos de la lista de origen: los elementos de los índices desde el principio hasta el fin - 1.
# La lista new_list contendrá fin - inicio (3 - 1 = 2) elementos â los que tienen índices iguales a 1 y 2 (pero no 3).
print(new_list)

# SI start es un numero mayor que end, entonces tendremos como resultado una lista vacia
my_list = [10, 8, 6, 4, 2]
new_list = my_list[-1:1]
print(new_list)

# SI omites el indice start, es 0 automaticamente
# my_list[:end] == my_list[0:end]

# Del mismo modo, si omites el end en tu rebanada, se supone que deseas que el segmento termine en el elemento con el índice len(my_list).

my_list = [10, 8, 6, 4, 2]
new_list = my_list[3:]
print(new_list)

# Resultado : Por lo tanto, la salida es: [4, 2].

# Como hemos dicho anteriormente, el omitir el inicio y fin crea una copia de toda la lista:

my_list = [10, 8, 6, 4, 2]
new_list = my_list[:]
print(new_list)

#La instrucción del descrita anteriormente puede eliminar más de un elemento de la lista a la vez, también puede eliminar rebanadas:

my_list = [10, 8, 6, 4, 2]
del my_list[1:3]
print(my_list)

# La salida del fragmento es: [10, 4, 2].

# ELIMINAR ELEMENTOS DE UNA LISTA. DEVUELVE UNA LISTA VACIA

my_list = [10, 8, 6, 4, 2]
del my_list[:]
print(my_list)

# La lista se queda vacía y la salida es: [].

# SI ELIMINAMOS LA REBANADA, EL SIGNIFICADO DEL CODIGO CAMBIA DRASTICAMENTE

my_list = [10, 8, 6, 4, 2]
del my_list
print(my_list)

# ESTO DARA UN ERROR, YA QUE SE ESTA ELIMINANDO LA LISTA ENTERA Y NO EL CONTENIDO.

