-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 02-04-2020 a las 08:51:56
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `LAB14`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Autores`
--

CREATE TABLE `Autores` (
  `idAutor` decimal(5,0) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Autores`
--

INSERT INTO `Autores` (`idAutor`, `Nombre`) VALUES
('10000', 'Kristin Neff'),
('10001', 'Stephen King'),
('10002', 'Elena Fortún'),
('10003', 'Veronica Roth'),
('10004', 'James Dashner'),
('10005', 'Becca Fitzpatrick'),
('10006', 'Gabriel García Márquez'),
('10007', 'Edgar Allan Poe'),
('10008', 'Isabel Allende');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Generos`
--

CREATE TABLE `Generos` (
  `idGenero` decimal(5,0) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Generos`
--

INSERT INTO `Generos` (`idGenero`, `Nombre`) VALUES
('1', 'Romance'),
('2', 'Terror'),
('3', 'Ciencia ficción'),
('4', 'Poesía'),
('5', 'Infantil'),
('6', 'Autoayuda'),
('7', 'Biografía'),
('8', 'Novela histórica');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Libros`
--

CREATE TABLE `Libros` (
  `ISBN` int(10) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `idGenero` decimal(5,0) NOT NULL,
  `idAutor` decimal(5,0) NOT NULL,
  `Páginas` int(5) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Libros`
--

INSERT INTO `Libros` (`ISBN`, `Titulo`, `idGenero`, `idAutor`, `Páginas`) VALUES
(1111111111, 'Hush hush', '1', '10005', 390),
(1111111112, 'Divergent', '3', '10003', 345),
(1111111113, 'Maze runner', '3', '10004', 405),
(1111111114, 'The yin and yang of self-compassion', '6', '10000', 345),
(1111111115, 'The sleeper', '4', '10007', 1),
(1111111116, 'The raven', '4', '10007', 1),
(1111111117, 'The valley of unrest', '4', '10007', 1),
(1111111118, 'Insurgent', '3', '10003', 400),
(1111111119, 'Allegiant', '3', '10003', 410),
(1111111129, 'Finale', '1', '10005', 455),
(1111111139, 'Crescendo', '1', '10005', 490),
(1111111149, 'Silence', '1', '10005', 435),
(1111111159, 'Amor en tiempos de colera', '1', '10006', 305),
(1111111169, 'Casa de los espiritus', '8', '10008', 295);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Autores`
--
ALTER TABLE `Autores`
  ADD PRIMARY KEY (`idAutor`);

--
-- Indices de la tabla `Generos`
--
ALTER TABLE `Generos`
  ADD PRIMARY KEY (`idGenero`);

--
-- Indices de la tabla `Libros`
--
ALTER TABLE `Libros`
  ADD PRIMARY KEY (`ISBN`),
  ADD KEY `idGenero` (`idGenero`),
  ADD KEY `idAutor` (`idAutor`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Libros`
--
ALTER TABLE `Libros`
  ADD CONSTRAINT `Libros_ibfk_1` FOREIGN KEY (`idGenero`) REFERENCES `Generos` (`idGenero`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Libros_ibfk_2` FOREIGN KEY (`idAutor`) REFERENCES `Autores` (`idAutor`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
