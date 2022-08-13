CREATE DATABASE peluqueria_canina;

USE peluqueria_canina;

CREATE TABLE Dueno (
DNI int not null,
Nombre varchar(25) not null,
Apellido varchar(25) not null,
Telefono varchar(15) not null,
Direccion varchar(50) not null,
CONSTRAINT IDdueno primary key (DNI)
);

CREATE TABLE Perro (
ID_Perro int not null,
Nombre varchar(25) not null,
Fecha_nac date not null,
Sexo varchar(10) not null,
DNI_dueno int not null,
CONSTRAINT Idperro primary key (ID_Perro),
CONSTRAINT dnidueno foreign key (DNI_dueno) REFERENCES Dueno(DNI)
); 

CREATE TABLE Historial (
ID_Historial int not null,
Fecha date not null,
Perro int not null,
Descripcion varchar(50) not null,
Monto float not null,
CONSTRAINT Idhistorial primary key (ID_Historial),
CONSTRAINT Aperro Foreign Key(Perro) REFERENCES Perro(ID_Perro) 
);


INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUE
('36856894','Mariana','Romero','154657419', 'Balcarce 98'),
('38965127','Lorenzo','Martinez','154789629', 'Francia 1448'),
('40789159','Luz','Benitez','154785426', 'Francia 334'),
('32564812','Gabriel','Diaz','154786147', 'Chacabuco 767'),
('44589784','Valeria','Hernandez','154123780', 'San Martín 2340');

INSERT INTO perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno) VALUE
('012','Rufina','2019-07-11 00:00:00','Hembra','36856894'),
('078','Rocco','2022-02-03 00:00:00','Macho','38965127'),
('89','Kaila','2021-07-05 00:00:00','Hembra','40789159'),
('20','Noah','2021-07-01 00:00:00','Macho','32564812'),
('092','Coco','2022-01-08 00:00:00','Macho','44589784');

INSERT INTO Historial (ID_Historial,fecha,Perro,Descripcion,Monto) VALUE 
('301', '2021-07-03 00:00:00','012', 'baño', '552'),
('456','2022-03-07 00:00:00','078','Corte de pelo','850'),
('789','2022-05-01 00:00:00','89','Corte de uñas','360'),
('147','2022-03-12 00:00:00','20','Baño y corte de pelo','900'),
('258','2022-08-12 00:00:00','092','Baño y corte de uñas','900');

-- actividad 8 Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.

INSERT INTO Dueno (DNI,Nombre,Apellido,Telefono,Direccion) VALUE
('452369852','Alexis','Rodriguez','154893722', 'Urquiza 250');

INSERT INTO Perro (ID_Perro,Nombre,Fecha_nac,Sexo,DNI_dueno) VALUE
('10','Uma','2022-08-12 00:00:00','Hembra','452369852');
