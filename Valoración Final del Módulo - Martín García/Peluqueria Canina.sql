CREATE DATABASE Peluqueria_Canina;

USE Peluqueria_Canina;

CREATE TABLE Dueno
(
DNI int not null,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono varchar(15) not null,
Direccion varchar(50) not null,
CONSTRAINT Iddueno Primary Key (DNI)
);

CREATE TABLE Perro
(
ID_Perro int not null,
Nombre varchar(25) not null,
Fecha_nac date not null, 
Sexo varchar(10) not null,
DNI_dueno int not null,
CONSTRAINT Idperro Primary Key(ID_Perro),
CONSTRAINT Fdnidueno Foreign Key(DNI_dueno) REFERENCES Dueno(DNI)
);

CREATE TABLE Historial
(
ID_Historial int not null,
Fecha Date not null,
Perro int not null,
Descripcion varchar(50) not null,
Monto float not null,
CONSTRAINT Idhistorial Primary Key(ID_Historial),
CONSTRAINT Fperro Foreign Key(Perro) REFERENCES Perro(ID_Perro) 
);

INSERT INTO Dueno (DNI, Nombre, Apellido, Telefono, Direccion) VALUES
(12559302, 'Victor', 'Gomez', '3513123123', 'Coligue 8724'),
(13374366, 'Adriana', 'Perez', '3513123124', 'San Luis 120'),
(29963509, 'Natalia', 'Lopez', '3513123125', 'Av. Constituyentes 530'),
(50938946, 'Sirena', 'Brown', '3513123126', 'San Martin 2235'),
(31217346, 'Ivana', 'Martinez', '3513123127', 'Pje Diaz de Solis 282'),
(31058004, 'Julio', 'Gonzalez', '3513123128', 'Mariano Moreno 1080'),
(10021022, 'Pedro', 'Estevez', '351122122', 'La Pampa 123');


INSERT INTO Perro (ID_Perro, Nombre, Fecha_nac, Sexo, DNI_dueno) VALUES
(000001, 'Croqueta', '2021-12-06', 'Hembra', 13374366),
(000002, 'Folken', '2015-02-03', 'Macho', 31058004),
(000003, 'Hans', '2018-03-04', 'Macho', 29963509),
(000004, 'Orion', '2013-04-05', 'Macho', 50938946),
(000005, 'Moro', '2019-05-06', 'Macho', 31217346),
(000006, 'Irina', '2021-07-08', 'Hembra', 12559302),
(000007, 'Rosaura ', '2017-08-09', 'Hembra', 10021022);

INSERT INTO Historial (ID_Historial, Fecha, Perro, Descripcion, Monto) VALUES
(300001, '2020-07-07', 000001, 'Corte', 1000),
(300002, '2020-07-08', 000001, 'Lavado con shampoo neutro', 1200),
(300003, '2021-03-09', 000006, 'Lavado con shampoo antipulgas', 1800),
(300004, '2021-06-07', 000005, 'Cepillado', 1100),
(300005, '2021-07-07', 000002, 'Corte de uñas', 850.9),
(300006, '2021-11-03', 000003, 'Lavado con shampoo antipulgas y Corte', 2800),
(300007, '2022-02-02', 000004, 'Cepillado', 2200),
(300008, '2022-03-03', 000006, 'Limpieza dental', 1500),
(300009, '2022-03-08', 000007, 'Lavado con shampoo neutro y secado', 3750.5),
(300010, '2022-04-12', 000005, 'Lavado con shampoo neutro y secado', 3750.5);



UPDATE Dueno
SET Direccion = 'Libertad 123'
WHERE DNI = 31058004;

SELECT Perro 'Id_Perro', Nombre
FROM Historial H JOIN Perro P
ON H.Perro=P.ID_Perro
WHERE Fecha > '2022-01-01';