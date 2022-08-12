-- comando para eliminar la base de datos completa
-- DROP DATABASE peluqueria_canina

-- crear la base de datos
CREATE DATABASE Peluqueria_Canina;

-- poner en uso la base de datos
USE Peluqueria_Canina;

-- crear la tabla Dueño
CREATE TABLE Dueno
(
DNI int not null,
Nombre_Dueno varchar(25) not null,
Apellido varchar(25) not null,
Telefono varchar(15) not null,
Direccion varchar(50) not null,
CONSTRAINT Iddueno Primary Key (DNI)
);

--  se crean varios registros para la tabla dueño
INSERT INTO dueno VALUES ('12559302', 'Victor', 'Gomez', '3513123123', 'gg 340'), ('13374366', 'Adriana', 'Perez', '3513123124', 'gg 350'), ('29963509', 'Natalia', 'Lopez', '3513123125', 'gg 360'), ('50938946', 'Sirena', 'Brown', '3513123126', 'gg 370'), ('31217346', 'Ivana', 'Martinez', '3513123127', 'gg 380'), ('31058004', 'Julio', 'Gonzalez', '3513123128', 'gg 390'), ('10021022', 'Pedro', 'Estevez', '351122122', 'lapampa 123');

-- 1. Realice la consulta correspondiente para crear la tabla Perro, teniendo en cuenta sus claves foráneas y primarias. 
CREATE TABLE Perro
(
ID_Perro int not null,
Nombre_Perro varchar(25) not null,
Fecha_nac date not null, 
Sexo varchar(10) not null,
DNI_dueno int not null,
CONSTRAINT Idperro Primary Key(ID_Perro),
CONSTRAINT Fdnidueno Foreign Key(DNI_dueno) REFERENCES Dueno(DNI)
);

-- 2. Inserte en la tabla correspondiente un nuevo animal (perro) como paciente y el dueño asociado a ese animal.
INSERT INTO perro VALUES ('000001', 'Croqueta', '2021-12-06 00:00:00', 'Hembra', '13374366'), ('000002', 'Folken', '2015-02-03 00:00:00', 'Macho', '31058004'), ('000003', 'Hans', '2018-03-04 00:00:00', 'Macho', '29963509'), ('000004', 'orion', '2013-04-05 00:00:00', 'Macho', '50938946'), ('000005', 'Moro', '2019-05-06 00:00:00', 'Macho', '31217346'), ('000006', 'Ariel', '2020-06-07 00:00:00', 'Macho', '31058004'), ('000007', 'Irina', '2021-07-08 00:00:00', 'Hembra', '12559302'), ('000008', 'Brank', '2017-08-09 00:00:00', 'Hembra', '13374366'), ('000009', 'Rosaura ', '2017-08-09 00:00:00', 'Hembra', '10021022');

-- Crear la tabla Historial
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

--  se crean varios registros para la tabla historial
INSERT INTO historial VALUES ('300001', '2022-07-07 00:00:00', '000001', 'descripcion', '5000'), ('300002', '2022-07-08 00:00:00', '000001', 'descripcion', '3500'), ('3000031', '2022-07-09 00:00:00', '000006', 'descripcion', '5000'),('300004', '2022-06-07 00:00:00', '000005', 'descripcion', '1200'),('300009', '2022-07-07 00:00:00', '000009', 'descripcion', '1325'),('300007', '2021-07-03 00:00:00', '000003', 'descripcion', '5000'), ('300008', '2022-07-02 00:00:00', '000008', 'descripcion', '3500'), ('3000011', '2022-07-03 00:00:00', '000006', 'descripcion', '5000'),('300012', '2022-07-04 00:00:00', '000007', 'descripcion', '1200'),('300016', '2022-07-05 00:00:00', '000006', 'descripcion', '1325');

-- 3. Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.
-- consulta los animales que no fueron atendidos en 2022
SELECT Nombre_Perro, Sexo, Fecha, Monto FROM peluqueria_canina.perro 
INNER JOIN  peluqueria_canina.historial 
ON  peluqueria_canina.perro.ID_Perro=peluqueria_canina.historial.Perro
WHERE peluqueria_canina.historial.Fecha < '2022-01-01 00:00:00';
-- Borrar esos animales (no me sale)

-- 4. Actualice la fecha de nacimiento de algún animal (perro) que usted considere.
UPDATE perro SET Fecha_nac = '2010-11-12 00:00:05' WHERE (ID_Perro = '10001');

-- 5. Realice una consulta multitabla que arroje el nombre de todos los perros cuyos dueños se llaman Pedro
SELECT Nombre_Perro FROM peluqueria_canina.perro 
INNER JOIN  peluqueria_canina.dueno 
ON peluqueria_canina.perro.DNI_dueno=peluqueria_canina.dueno.DNI
WHERE peluqueria_canina.dueno.Nombre_Dueno = 'Pedro';

-- 6. Obtener todos los perros que asistieron a la peluquería en 2022
SELECT Nombre_Perro, Sexo, Fecha, Monto FROM peluqueria_canina.perro 
INNER JOIN  peluqueria_canina.historial 
ON  peluqueria_canina.perro.ID_Perro=peluqueria_canina.historial.Perro
WHERE peluqueria_canina.historial.Fecha > '2022-01-01 00:00:00';

-- 7. Obtener los ingresos percibidos en Julio del 2022
SELECT sum(Monto) AS Total FROM peluqueria_canina.historial WHERE peluqueria_canina.historial.Fecha between '2022-07-01' and '2022-07-30';

-- 8. Insertar un nuevo registro en la tabla historial de un perro cuyo ID Perro es igual a 10.
INSERT INTO perro VALUES ('10', 'Probeta', '2021-10-09 00:00:00', 'Hembra', '29963509');

-- 9. Escriba una consulta que permita actualizar la dirección de un dueño. Su nueva dirección es Libertad 123
UPDATE dueno SET Direccion = 'Libertad 123' WHERE (DNI = '31058004');

-- 10. Vaciar la tabla historial y resetear el contador del campo ID.
DELETE FROM peluqueria_canina.historial WHERE peluqueria_canina.historial.ID_Historial <> '0';
-- Se coloca WHERER Para evitar Error Code: 1175. You are using safe update mode and you tried to update a table without a WHERE that uses a KEY column.  To disable safe mode, toggle the option in Preferences -> SQL Editor and reconnect.


-- 11. Obtener todos los dueños que tengan perros de menos de 5 años de edad que no hayan visitado la peluquería en el año 2022.
SELECT Nombre_Dueno FROM peluqueria_canina.dueno 
INNER JOIN  peluqueria_canina.perro 
ON peluqueria_canina.dueno.DNI=peluqueria_canina.perro.DNI_dueno
INNER JOIN peluqueria_canina.historial
ON peluqueria_canina.perro.ID_Perro=peluqueria_canina.historial.Perro
WHERE peluqueria_canina.perro.Fecha_nac > '2017-08-01 00:00:00' AND peluqueria_canina.historial.Fecha < '2022-01-01 00:00:00';

-- 12. Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
SELECT * FROM peluqueria_canina.perro WHERE Sexo='Macho' AND Fecha_nac BETWEEN '2020-01-01' and '2022-12-31';
