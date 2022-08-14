CREATE DATABASE PeluqueriaCaninaBaquela;

USE PeluqueriaCaninaBaquela;

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
('37450223', 'Leonel', 'Flores', '336555633', 'Los Pinos 53'),
('23546987', 'María', 'Perez', '4789689', 'Pueyrredon 811'),
('30720567', 'Estela', 'Rodriguez', '778272662', 'Roca 67'),
('10567334', 'Gabriel', 'Lopez', '299453635', 'Estrada 890'),
('23456876', 'Leonardo', 'Gimenez', '2915454272', 'La Plata 124');

SELECT * FROM Dueno

INSERT INTO Perro VALUES 
('20', 'Lila', '2022-08-10', 'Hembra', '37450223'),
('14', 'Fido', '2012-12-12', 'Macho', '23546987'),
('12', 'Jose', '2020-03-09', 'Hembra', '30720567'),
('13', 'Lara', '2010-07-27', 'Hembra', '10567334'),
('16', 'Fredo', '2018-09-20', 'Macho','23456876');

SELECT * FROM Perro;

-- Cambio de fecha de nacimiento
UPDATE Perro
SET Fecha_nac = '2022-10-08'
WHERE ID_Perro = 20;


