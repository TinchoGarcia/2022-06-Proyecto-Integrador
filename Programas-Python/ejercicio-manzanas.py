#Escenario
#A continuación una historia:

#Érase una vez en la Tierra de las Manzanas, Juan tenía tres manzanas, María tenía cinco manzanas, y Adán tenía seis manzanas. Todos eran muy felices y vivieron por muchísimo tiempo. Fin de la Historia.

#Tu tarea es:

#Crear las variables: juan, maria, y adan.
#Asignar valores a las variables. El valor debe de ser igual al número de manzanas que cada quien tenía.
#Una vez almacenados los números en las variables, imprimir las variables en una línea, y separar cada una de ellas con una coma.
#Después se debe crear una nueva variable llamada total_manzanas y se debe igualar a la suma de las tres variables anteriores.
#Imprime el valor almacenado en total_manzanas en la consola.
#Experimenta con tu código: crea nuevas variables, asigna diferentes valores a ellas, y realiza varias operaciones aritméticas con ellas (por ejemplo, +, -, *, /, //, etc.). Intenta poner una cadena con un entero juntos en la misma línea, por ejemplo, "Número Total de Manzanas:" y total_manzanas.



juan = str(3);
maria = str(5);
adan = str(6);

print (juan + "," + maria + "," + adan);

juan = int(juan);
maria = int(maria);
adan = int(adan);

total_manzanas = juan + maria + adan;


print ("El numero total de manzanas es: " + str(total_manzanas));

