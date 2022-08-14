-- Creamos la base de datos
CREATE DATABASE Peluqueria_Canina;

-- ponemos en uso la base de datos
USE Peluqueria_Canina;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dueno`
--

CREATE TABLE `dueno` (
  `DNI` int NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Apellido` varchar(25) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Direccion` varchar(50) NOT NULL,
  CONSTRAINT Iddueno primary key (DNI)
);

--
-- Volcado de datos para la tabla `dueno`
--

INSERT INTO `dueno` (`DNI`, `Nombre`, `Apellido`, `Telefono`, `Direccion`) VALUES
(2046789, 'Aylen', 'Fernandez', '154123780', 'Rio Negro 543'),
(2510456, 'Carla', 'Lopez', '155485423', 'Péru 424'),
(3214567, 'Martin', 'Hernandez', '154526489', 'Colon 232'),
(5014052, 'Pedro', 'Caseros', '155412348', 'Libertad 123'),
(9412053, 'Juan', 'Herrera', '154230458', 'San Juan 323');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `perro`
--

CREATE TABLE `perro` (
  `ID_Perro` int NOT NULL,
  `Nombre` varchar(25) NOT NULL,
  `Fecha_nac` date NOT NULL,
  `Sexo` varchar(10) NOT NULL,
  `DNI_dueno` int NOT NULL,
  CONSTRAINT Idperro primary key (ID_Perro),
  CONSTRAINT dnidueno foreign key (DNI_dueno) REFERENCES Dueno(DNI)
);

--
-- Volcado de datos para la tabla `perro`
--

INSERT INTO `perro` (`ID_Perro`, `Nombre`, `Fecha_nac`, `Sexo`, `DNI_dueno`) VALUES
(8, 'Luna', '2021-05-25', 'Hembra', 2046789),
(12, 'Bolt', '2022-02-13', 'Macho', 5014052),
(20, 'Linda', '2019-12-22', 'Hembra', 9412053),
(29, 'Toby', '2022-04-03', 'Macho', 2510456),
(32, 'Milo', '2021-02-01', 'Macho', 3214567);


-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `ID_Historial` int NOT NULL,
  `Fecha` date NOT NULL,
  `Perro` int NOT NULL,
  `Descripcion` varchar(50) NOT NULL,
  `Monto` float NOT NULL,
  CONSTRAINT Idhistorial primary key (ID_Historial),
  CONSTRAINT Xperro Foreign Key(Perro) REFERENCES Perro(ID_Perro)
);

--
-- Volcado de datos para la tabla `historial`
--

INSERT INTO `historial` (`ID_Historial`, `Fecha`, `Perro`, `Descripcion`, `Monto`) VALUES
(128, '2021-04-04', 32, 'Baño', 500),
(251, '2022-07-03', 29, 'Baño', 500),
(356, '2020-01-01', 20, 'Baño', 500),
(435, '2021-08-13', 8, 'Cortes', 300),
(805, '2022-04-10', 12, 'Cortes', 350);

-- Actividad 12. Obtener todos los perros de sexo “Macho” nacidos entre 2020 y 2022.
SELECT * FROM peluqueria_canina.perro WHERE Sexo='Macho' AND Fecha_nac BETWEEN '2020-01-01' and '2022-12-31';
