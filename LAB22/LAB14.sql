-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 26-05-2020 a las 17:16:44
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
  `idAutor` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Autores`
--

INSERT INTO `Autores` (`idAutor`, `Nombre`) VALUES
(1, 'Kristin Neff'),
(2, 'Stephen King'),
(3, 'Veronica Roth'),
(4, 'James Dashner'),
(5, 'Becca Fitzpatrick'),
(6, 'Edgar Allan Poe'),
(7, 'Isabel Allende'),
(8, 'Paulo Coelho'),
(9, 'JK Rowling ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Generos`
--

CREATE TABLE `Generos` (
  `idGenero` int(11) NOT NULL,
  `Nombre` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Generos`
--

INSERT INTO `Generos` (`idGenero`, `Nombre`) VALUES
(1, 'Romance'),
(2, 'Ciencia Ficción'),
(3, 'Suspenso'),
(4, 'Drama'),
(5, 'Poesía'),
(6, 'Autoayuda'),
(7, 'Novela juvenil');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Libros`
--

CREATE TABLE `Libros` (
  `ISBN` int(11) NOT NULL,
  `Titulo` varchar(50) NOT NULL,
  `idGenero` int(11) NOT NULL,
  `idAutor` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Libros`
--

INSERT INTO `Libros` (`ISBN`, `Titulo`, `idGenero`, `idAutor`) VALUES
(1, 'Hush hush', 1, 3),
(2, 'Crescendo', 1, 3),
(3, 'Silence', 1, 3),
(4, 'Finale', 1, 3),
(5, 'Harry Potter and the sorcerers stone', 2, 7),
(6, 'Harry Potter and the chamber of secrets', 2, 7),
(7, 'Harry Potter and the prisoner of Azkaban', 2, 7),
(8, 'Harry Potter and the goblet of fire', 2, 7),
(9, 'Harry Potter and the order of the phoenix', 2, 7),
(10, 'Harry Potter and the half blood prince', 2, 7);

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
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `Autores`
--
ALTER TABLE `Autores`
  MODIFY `idAutor` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT de la tabla `Generos`
--
ALTER TABLE `Generos`
  MODIFY `idGenero` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT de la tabla `Libros`
--
ALTER TABLE `Libros`
  MODIFY `ISBN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Libros`
--
ALTER TABLE `Libros`
  ADD CONSTRAINT `Libros_ibfk_1` FOREIGN KEY (`idAutor`) REFERENCES `Autores` (`idAutor`) ON UPDATE CASCADE,
  ADD CONSTRAINT `Libros_ibfk_2` FOREIGN KEY (`idGenero`) REFERENCES `Generos` (`idGenero`) ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
