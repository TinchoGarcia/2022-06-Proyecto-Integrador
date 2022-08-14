create database Peluqueria_Canina

create table Dueno (
	DNI int,
    Nombre varchar(30) not null,
    Apellido varchar(30) not null,
    Telefono bigint not null,
    Direccion varchar(30) not null,
    constraint pk_cd primary key (DNI)
)

create table Perro(
	ID_Perro int not null,
    Nombre varchar(30) not null,
    Fecha_nac date not null,
    Sexo char(10) not null,
    DNI_Dueno int not null,
    constraint pk_cp primary key (ID_Perro),
    constraint fk_DNI foreign key (DNI_Dueno) references Dueno (DNI)
)

create table Historial(
	ID_Historial int not null,
    Fecha date not null,
	Perro int not null,
    Descripcion varchar(80),
    Monto float not null,
    constraint pk_id primary key (ID_Historial),
    constraint fk_cp foreign key (Perro) references Perro (ID_Perro)
)
insert into Dueno values (40634336, 'Agustin', 'Bengolea', 1150217843, 'Sarmiento 444')
insert into Perro values (1, 'Pichi', '2020/08/04', 'Macho', 40634336)
insert into Dueno values (41634336, 'Juan Cruz', 'Guevara', 1150217842, 'Sarmiento 555')
insert into Perro values (2, 'Nami', '2022/01/01', 'Hembra', 41634336)
insert into Historial values (01, '2020/12/01', 1, 'Vacunacion', 4999.99 )
insert into Historial values (02, '2022/08/01', 1, 'Vacunacion', 7999.99 )

update Perro set Fecha_nac = '2020-08-05' where ID_Perro = 1

select * from Perro
select * from Dueno

-- 3. Borre un animal que ya no va a ser atendido. Para ello consulte antes en el historial, algún animal que ya no sea atendido desde hace mucho tiempo.

select * from Historial
delete from Historial where Fecha < '20210101'