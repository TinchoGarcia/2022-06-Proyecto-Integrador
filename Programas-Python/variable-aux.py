#Se desea intercambiar valores de las variables 1 y 2, pero se necesita un auxiliar para no perder los datos en el proceso.

variable_1 = 1
variable_2 = 2

auxiliary = variable_1
variable_1 = variable_2
variable_2 = auxiliary # Se utiliza auxiliar para no perder el valor de una de las variables al intercambiar valores.

print(variable_1)
print(variable_2)

# Python ofrece una forma mas rapida y directa de hacer este intercambio, sin necesidad de una variable extra auxiliar

variable_1 = 1
variable_2 = 2

variable_1, variable_2 = variable_2, variable_1

print(variable_1)
print(variable_2)