CREATE DATABASE PeluqueriaCaninaGM;

USE PeluqueriaCaninaGM;

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

INSERT INTO Dueno VALUES
('23546987', 'María', 'Perez', '4789689', 'Pueyrredon 811'),
('25856745', 'Paco', 'Chingolo', '5883612', 'Balcarce 1500'),
('36697812', 'Oscar', 'Loto', '4392175', 'Belgrano 1265'),
('11014852', 'Flavio', 'Gonzalez', '4663333', 'Viano 333');
INSERT INTO Dueno VALUES
('12255555', 'Pepe', 'Diaz', '67235115', 'Posadas 111');

SELECT * FROM Dueno

INSERT INTO Perro VALUES
('14', 'Fido', '2012-12-12', 'Macho', '23546987'),
('15', 'Blacky', '2005-11-07', 'Hembra', '25856745'),
('18', 'Tyson', '2022-05-20', 'Macho', '11014852'),
('32', 'Morena', '2015-11-11', 'Hembra', '36697812'),
INSERT INTO Perro VALUES
('11', 'Pupe', '2020-09-18', 'Macho', '12255555');




SELECT * FROM Perro
WHERE Sexo = 'Macho' and Fecha_nac BETWEEN '2020-01-01' and '2022-12-31';


