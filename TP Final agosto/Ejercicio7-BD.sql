#Crear base de datos Peluqueria Canina

CREATE DATABASE peluqueria;

#Seleccionar base de datos

USE peluqueria;

#Crear las tablas Dueno, Perro e Historial (Punto 1)

CREATE TABLE Dueno (
DNI INT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL, 
Apellido VARCHAR(100) NOT NULL,
Telefono VARCHAR(150) NOT NULL,
Direccion VARCHAR(150) NOT NULL
);

CREATE TABLE Perro (
ID_Perro INT PRIMARY KEY,
Nombre VARCHAR(100) NOT NULL, 
Fecha_Nac DATE NOT NULL,
Sexo VARCHAR(50) NOT NULL,
DNI_Dueno INT NOT NULL,
FOREIGN KEY (DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial (
ID_Historial INT PRIMARY KEY,
Fecha DATE NOT NULL,
Perro INT NOT NULL ,
Descripcion VARCHAR(255),
Monto FLOAT NOT NULL,
FOREIGN KEY (Perro) REFERENCES Perro(ID_perro)
);

#Insertar datos en Dueno, Perro e Historial (Punto 2)

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
VALUES (37611590, 'Federico','Gonzalez', '3541236984','Roma 651');

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) 
VALUES (31897226, 'Mariana','Lorusso', '3512262822','25 de mayo 555');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (1,'Migy','2015-05-15', 'femenino','37611590');

INSERT INTO Perro (ID_Perro, Nombre, Fecha_Nac, Sexo, DNI_Dueno)
VALUES (2,'Bolt','2019-12-25', 'masculino','31897226');

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto)
VALUES (1,'2022-07-15 ',1,'Peluqueria',3000);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) 
VALUES (2,'2022-07-15 ',2,'Peluqueria',2000);


#Ejercicio adicional Elegido (Punto 7)
#Obtener los ingresos percibidos en julio de 2022



SELECT Monto FROM Historial WHERE Fecha BETWEEN '2022-07-01' AND '2022/07/31'