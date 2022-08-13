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

INSERT INTO Perro VALUES ('20', 'Lila', '2022-08-10 12:25:55', 'Hembra', '37450223');
SELECT * FROM Perro;

-- Cambio de fecha de nacimiento
UPDATE Perro
SET Fecha_nac = '2022-10-08 00:25:55'
WHERE ID_Perro = 20;




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

INSERT INTO Dueno VALUES ('37450223', 'Leonel', 'Flores', '336555633', 'Los Pinos 53');
SELECT * FROM Dueno




