#Tiempo Estimado
#15-20 minutos

#Nivel de Dificultad
#Fácil

#Objetivos
#Mejorar la habilidad de implementar números, operadores y operaciones aritméticas en Python.
#Utilizar la función print() y sus capacidades de formato.
#Aprender a expresar fenómenos del día a día en términos de un lenguaje de programación.
#Escenario
#La tarea es preparar un código simple para evaluar o encontrar el tiempo final de un periodo de tiempo dado, expresándolo en horas y minutos. Las horas van de 0 a 23 y los minutos de 0 a 59. El resultado debe ser mostrado en la consola.

#Por ejemplo, si el evento comienza a las 12:17 y dura 59 minutos, terminará a las 13:16.

#No te preocupes si tu código no es perfecto, está bien si acepta una hora invalida, lo más importante es que el código produzca una salida correcta acorde a la entrada dada.

#Prueba el código cuidadosamente. Pista: utilizar el operador % puede ser clave para el éxito.

#Datos de Prueba
#Entrada de muestra:
#12
#17
#59

#Salida esperada: 13:16


#Entrada de muestra:
#23
#58
#642

#Salida esperada: 10:40


#Entrada de muestra:
#0
#1
#2939

#Salida esperada: 1:0



hour = int(input("Hora de inicio (horas): "))
mins = int(input("Minuto de inicio (minutos): "))
dura = int(input("Duración del evento (minutos): "))

# Escribe tu código aqui.
