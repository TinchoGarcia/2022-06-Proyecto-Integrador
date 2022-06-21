# break - ejemplo

#print("La instrucción break:")
#for i in range(1, 6):
#    if i == 3:
#        break
#    print("Dentro del bucle.", i)
#print("Fuera del bucle.")


# continue - ejemplo

#print("\nLa instrucción continue:")
#for i in range(1, 6):
#    if i == 3:
#        continue
#    print("Dentro del bucle.", i)
#print("Fuera del bucle.")

# Indicar al usuario que ingrese una palabra
# y asignarlo a la variable user_word.

#Escenario
#La sentencia continue se usa para omitir el bloque actual y avanzar a la siguiente iteración, sin ejecutar las sentencias dentro del bucle.

#Se puede usar tanto con while y for.

#Tu tarea aquí es muy especial: ¡Debes diseñar un devorador de vocales! Escribe un programa que use:

#Un bucle for.
#El concepto de ejecución condicional (if-elif-else).
#La sentencia continue.
#Tu programa debe:

#Pedir al usuario que ingrese una palabra.
#Utiliza user_word = user_word.upper() para convertir la palabra ingresada por el usuario a mayúsculas; hablaremos sobre los llamados métodos de cadena y el upper() muy pronto, no te preocupes.
#Utiliza la ejecución condicional y la instrucción continue para "comer" las siguientes vocales A , E , I , O , U de la palabra ingresada.
#Imprime las letras no consumidas en la pantalla, cada una de ellas en una línea separada.
#Prueba tu programa con los datos que le proporcionamos.

#for letter in user_word:
    # Completa el cuerpo del bucle for.

user_word = input("Soy el devorador de vocales!! Dame una palabra y dejare solo consonantes!!!\n")

user_word = user_word.upper()

for letter in user_word:
    
        print(letter)

