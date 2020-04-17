-- phpMyAdmin SQL Dump
-- version 5.0.1
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost
-- Tiempo de generación: 17-04-2020 a las 05:28:57
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
-- Base de datos: `TC2026`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Entregan`
--

CREATE TABLE `Entregan` (
  `Clave` decimal(5,0) NOT NULL,
  `RFC` char(13) NOT NULL,
  `Numero` decimal(5,0) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Cantidad` decimal(8,2) DEFAULT NULL
) ;

--
-- Volcado de datos para la tabla `Entregan`
--

INSERT INTO `Entregan` (`Clave`, `RFC`, `Numero`, `Fecha`, `Cantidad`) VALUES
('1000', 'AAAA800101', '5000', '1998-08-07 00:00:00', '165.00'),
('1000', 'AAAA800101', '5019', '1999-08-08 00:00:00', '254.00'),
('1000', 'AAAA800101', '5019', '2000-06-04 00:00:00', '7.00'),
('1010', 'BBBB800101', '5001', '2000-03-05 00:00:00', '528.00'),
('1010', 'BBBB800101', '5018', '2000-10-11 00:00:00', '667.00'),
('1010', 'BBBB800101', '5018', '2002-03-29 00:00:00', '523.00'),
('1020', 'CCCC800101', '5002', '2001-07-29 00:00:00', '582.00'),
('1020', 'CCCC800101', '5017', '1999-04-02 00:00:00', '8.00'),
('1020', 'CCCC800101', '5017', '2001-04-05 00:00:00', '478.00'),
('1030', 'DDDD800101', '5003', '1998-02-21 00:00:00', '202.00'),
('1030', 'DDDD800101', '5016', '1998-09-04 00:00:00', '139.00'),
('1030', 'DDDD800101', '5016', '2000-05-11 00:00:00', '295.00'),
('1040', 'EEEE800101', '5004', '1999-12-11 00:00:00', '263.00'),
('1040', 'EEEE800101', '5015', '2000-10-06 00:00:00', '546.00'),
('1040', 'EEEE800101', '5015', '2002-12-07 00:00:00', '540.00'),
('1050', 'FFFF800101', '5005', '2000-10-14 00:00:00', '503.00'),
('1050', 'FFFF800101', '5014', '1999-04-06 00:00:00', '90.00'),
('1050', 'FFFF800101', '5014', '1999-07-03 00:00:00', '623.00'),
('1060', 'GGGG800101', '5006', '2000-04-05 00:00:00', '324.00'),
('1060', 'GGGG800101', '5013', '2000-02-01 00:00:00', '692.00'),
('1060', 'GGGG800101', '5013', '2000-10-07 00:00:00', '47.00'),
('1070', 'HHHH800101', '5007', '1998-02-23 00:00:00', '2.00'),
('1070', 'HHHH800101', '5012', '1999-03-12 00:00:00', '503.00'),
('1070', 'HHHH800101', '5012', '2000-01-04 00:00:00', '516.00'),
('1080', 'AAAA800101', '5008', '1999-12-01 00:00:00', '86.00'),
('1080', 'AAAA800101', '5011', '2002-11-07 00:00:00', '699.00'),
('1080', 'AAAA800101', '5011', '2003-01-06 00:00:00', '429.00'),
('1090', 'BBBB800101', '5009', '2000-01-08 00:00:00', '73.00'),
('1090', 'BBBB800101', '5010', '1998-03-01 00:00:00', '421.00'),
('1090', 'BBBB800101', '5010', '1998-06-06 00:00:00', '612.00'),
('1100', 'CCCC800101', '5009', '2000-06-08 00:00:00', '466.00'),
('1100', 'CCCC800101', '5009', '2002-07-05 00:00:00', '523.00'),
('1100', 'CCCC800101', '5010', '2001-10-09 00:00:00', '699.00'),
('1110', 'DDDD800101', '5008', '1999-10-05 00:00:00', '337.00'),
('1110', 'DDDD800101', '5008', '2000-09-02 00:00:00', '292.00'),
('1110', 'DDDD800101', '5011', '2003-06-28 00:00:00', '368.00'),
('1120', 'EEEE800101', '5007', '1998-12-03 00:00:00', '167.00'),
('1120', 'EEEE800101', '5007', '2001-07-07 00:00:00', '692.00'),
('1120', 'EEEE800101', '5012', '2001-03-04 00:00:00', '215.00'),
('1130', 'FFFF800101', '5006', '1999-06-05 00:00:00', '673.00'),
('1130', 'FFFF800101', '5006', '2002-06-07 00:00:00', '562.00'),
('1130', 'FFFF800101', '5013', '2002-04-04 00:00:00', '63.00'),
('1140', 'GGGG800101', '5005', '1998-07-02 00:00:00', '651.00'),
('1140', 'GGGG800101', '5005', '2001-02-09 00:00:00', '583.00'),
('1140', 'GGGG800101', '5014', '2001-12-07 00:00:00', '219.00'),
('1150', 'HHHH800101', '5004', '2001-10-08 00:00:00', '453.00'),
('1150', 'HHHH800101', '5004', '2003-01-09 00:00:00', '270.00'),
('1150', 'HHHH800101', '5015', '1999-04-03 00:00:00', '458.00'),
('1160', 'AAAA800101', '5016', '2000-01-06 00:00:00', '162.00'),
('1160', 'AAAA800101', '5019', '1999-09-06 00:00:00', '244.00'),
('1160', 'AAAA800101', '5019', '2002-08-02 00:00:00', '665.00'),
('1170', 'BBBB800101', '5017', '1998-04-02 00:00:00', '180.00'),
('1170', 'BBBB800101', '5018', '1999-12-11 00:00:00', '53.00'),
('1170', 'BBBB800101', '5018', '2001-06-08 00:00:00', '517.00'),
('1180', 'CCCC800101', '5017', '2001-01-06 00:00:00', '216.00'),
('1180', 'CCCC800101', '5017', '2001-03-03 00:00:00', '334.00'),
('1180', 'CCCC800101', '5018', '2002-06-14 00:00:00', '407.00'),
('1190', 'DDDD800101', '5016', '2000-04-02 00:00:00', '356.00'),
('1190', 'DDDD800101', '5016', '2003-07-03 00:00:00', '622.00'),
('1190', 'DDDD800101', '5019', '1998-12-09 00:00:00', '94.00'),
('1200', 'EEEE800101', '5000', '2000-05-03 00:00:00', '177.00'),
('1200', 'EEEE800101', '5015', '2000-06-05 00:00:00', '585.00'),
('1200', 'EEEE800101', '5015', '2000-10-07 00:00:00', '653.00'),
('1210', 'FFFF800101', '5001', '1999-05-11 00:00:00', '43.00'),
('1210', 'FFFF800101', '5014', '2001-03-11 00:00:00', '70.00'),
('1210', 'FFFF800101', '5014', '2001-06-09 00:00:00', '479.00'),
('1220', 'GGGG800101', '5002', '2003-01-02 00:00:00', '24.00'),
('1220', 'GGGG800101', '5013', '2001-08-02 00:00:00', '653.00'),
('1220', 'GGGG800101', '5013', '2002-04-07 00:00:00', '658.00'),
('1230', 'HHHH800101', '5003', '2003-06-01 00:00:00', '530.00'),
('1230', 'HHHH800101', '5012', '1999-08-03 00:00:00', '115.00'),
('1230', 'HHHH800101', '5012', '2002-09-12 00:00:00', '312.00'),
('1240', 'AAAA800101', '5004', '2003-12-01 00:00:00', '152.00'),
('1240', 'AAAA800101', '5011', '2000-12-08 00:00:00', '366.00'),
('1240', 'AAAA800101', '5011', '2003-05-08 00:00:00', '549.00'),
('1250', 'BBBB800101', '5005', '2002-08-07 00:00:00', '71.00'),
('1250', 'BBBB800101', '5010', '1998-08-05 00:00:00', '690.00'),
('1250', 'BBBB800101', '5010', '2002-04-04 00:00:00', '691.00'),
('1260', 'CCCC800101', '5006', '1999-10-05 00:00:00', '460.00'),
('1260', 'CCCC800101', '5009', '1999-09-08 00:00:00', '631.00'),
('1260', 'CCCC800101', '5009', '2003-10-02 00:00:00', '2.00'),
('1270', 'DDDD800101', '5007', '1999-10-03 00:00:00', '506.00'),
('1270', 'DDDD800101', '5008', '1997-03-09 00:00:00', '546.00'),
('1270', 'DDDD800101', '5008', '2002-12-04 00:00:00', '324.00'),
('1280', 'EEEE800101', '5007', '2000-03-02 00:00:00', '331.00'),
('1280', 'EEEE800101', '5007', '2002-07-12 00:00:00', '448.00'),
('1280', 'EEEE800101', '5008', '2002-07-29 00:00:00', '107.00'),
('1290', 'FFFF800101', '5006', '1999-07-01 00:00:00', '336.00'),
('1290', 'FFFF800101', '5006', '2001-08-02 00:00:00', '279.00'),
('1290', 'FFFF800101', '5009', '1998-08-01 00:00:00', '132.00'),
('1300', 'GGGG800101', '5005', '2002-10-06 00:00:00', '521.00'),
('1300', 'GGGG800101', '5005', '2003-02-02 00:00:00', '457.00'),
('1300', 'GGGG800101', '5010', '2003-08-01 00:00:00', '119.00'),
('1310', 'HHHH800101', '5011', '2002-12-04 00:00:00', '72.00'),
('1310', 'HHHH800101', '5019', '2000-03-08 00:00:00', '463.00'),
('1310', 'HHHH800101', '5019', '2002-02-10 00:00:00', '199.00'),
('1320', 'AAAA800101', '5012', '2003-06-01 00:00:00', '698.00'),
('1320', 'AAAA800101', '5018', '1999-03-12 00:00:00', '163.00'),
('1320', 'AAAA800101', '5018', '2000-07-03 00:00:00', '413.00'),
('1330', 'BBBB800101', '5013', '1998-10-12 00:00:00', '554.00'),
('1330', 'BBBB800101', '5017', '1998-12-06 00:00:00', '558.00'),
('1330', 'BBBB800101', '5017', '2000-11-08 00:00:00', '93.00'),
('1340', 'CCCC800101', '5014', '2002-02-12 00:00:00', '324.00'),
('1340', 'CCCC800101', '5016', '1998-06-11 00:00:00', '674.00'),
('1340', 'CCCC800101', '5016', '1999-10-02 00:00:00', '11.00'),
('1350', 'DDDD800101', '5015', '1999-02-08 00:00:00', '261.00'),
('1350', 'DDDD800101', '5015', '1999-05-06 00:00:00', '330.00'),
('1350', 'DDDD800101', '5015', '1999-09-05 00:00:00', '272.00'),
('1360', 'EEEE800101', '5014', '2001-06-07 00:00:00', '37.00'),
('1360', 'EEEE800101', '5014', '2002-07-04 00:00:00', '265.00'),
('1360', 'EEEE800101', '5016', '2000-07-11 00:00:00', '364.00'),
('1370', 'FFFF800101', '5013', '2000-08-04 00:00:00', '575.00'),
('1370', 'FFFF800101', '5013', '2002-05-06 00:00:00', '423.00'),
('1370', 'FFFF800101', '5017', '2000-12-02 00:00:00', '44.00'),
('1380', 'GGGG800101', '5012', '1998-08-07 00:00:00', '645.00'),
('1380', 'GGGG800101', '5012', '2001-01-02 00:00:00', '147.00'),
('1380', 'GGGG800101', '5018', '2002-03-03 00:00:00', '302.00'),
('1390', 'HHHH800101', '5011', '2001-08-11 00:00:00', '697.00'),
('1390', 'HHHH800101', '5011', '2002-06-01 00:00:00', '308.00'),
('1390', 'HHHH800101', '5019', '2003-12-01 00:00:00', '107.00'),
('1400', 'AAAA800101', '5000', '2002-12-03 00:00:00', '382.00'),
('1400', 'AAAA800101', '5010', '1998-05-06 00:00:00', '116.00'),
('1400', 'AAAA800101', '5010', '2002-03-05 00:00:00', '441.00'),
('1410', 'BBBB800101', '5001', '2000-05-02 00:00:00', '601.00'),
('1410', 'BBBB800101', '5009', '2002-03-05 00:00:00', '467.00'),
('1410', 'BBBB800101', '5009', '2002-05-11 00:00:00', '461.00'),
('1420', 'CCCC800101', '5002', '1998-07-04 00:00:00', '603.00'),
('1420', 'CCCC800101', '5008', '2000-02-08 00:00:00', '278.00'),
('1420', 'CCCC800101', '5008', '2001-12-02 00:00:00', '444.00'),
('1430', 'DDDD800101', '5003', '1999-02-09 00:00:00', '576.00'),
('1430', 'DDDD800101', '5007', '1998-09-01 00:00:00', '13.00'),
('1430', 'DDDD800101', '5007', '2002-10-06 00:00:00', '506.00');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `EntregasAño2000`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `EntregasAño2000` (
`Descripcion` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `EntregasAño2001`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `EntregasAño2001` (
`Descripcion` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `EntregasMat1300or1450`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `EntregasMat1300or1450` (
`Clave` decimal(5,0)
,`RFC` char(13)
,`Numero` decimal(5,0)
,`Fecha` datetime
,`Cantidad` decimal(8,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `EntregasSinVarilla316`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `EntregasSinVarilla316` (
`Clave` decimal(5,0)
,`RFC` char(13)
,`Numero` decimal(5,0)
,`Fecha` datetime
,`Cantidad` decimal(8,2)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Materiales`
--

CREATE TABLE `Materiales` (
  `Clave` decimal(5,0) NOT NULL,
  `Descripcion` varchar(50) DEFAULT NULL,
  `Costo` decimal(8,0) DEFAULT NULL,
  `PorcentajeImpuesto` decimal(6,2) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Materiales`
--

INSERT INTO `Materiales` (`Clave`, `Descripcion`, `Costo`, `PorcentajeImpuesto`) VALUES
('1000', 'Varilla 3/16', '100', '20.00'),
('1010', 'Varilla 4/32', '115', '20.20'),
('1020', 'Varilla 3/17', '130', '20.40'),
('1030', 'Varilla 4/33', '145', '20.60'),
('1040', 'Varilla 3/18', '160', '20.80'),
('1050', 'Varilla 4/34', '175', '21.00'),
('1060', 'Varilla 3/19', '190', '21.20'),
('1070', 'Varilla 4/35', '205', '21.40'),
('1080', 'Ladrillos rojos', '50', '21.60'),
('1090', 'Ladrillos grises', '35', '21.80'),
('1100', 'Block', '30', '22.00'),
('1110', 'Megablock', '40', '22.20'),
('1120', 'Sillar rosa', '100', '22.40'),
('1130', 'Sillar gris', '110', '22.60'),
('1140', 'Cantera blanca', '200', '22.80'),
('1150', 'Cantera gris', '1210', '23.00'),
('1160', 'Cantera rosa', '1420', '23.20'),
('1170', 'Cantera amarilla', '230', '23.40'),
('1180', 'Recubrimiento P1001', '200', '23.60'),
('1190', 'Recubrimiento P1010', '220', '23.80'),
('1200', 'Recubrimiento P1019', '240', '24.00'),
('1210', 'Recubrimiento P1028', '250', '24.20'),
('1220', 'Recubrimiento P1037', '280', '24.40'),
('1230', 'Cemento ', '300', '24.60'),
('1240', 'Arena', '200', '24.80'),
('1250', 'Grava', '100', '25.00'),
('1260', 'Gravilla', '90', '25.20'),
('1270', 'Tezontle', '80', '25.40'),
('1280', 'Tepetate', '34', '25.60'),
('1290', 'Tuberia 3.5', '200', '25.80'),
('1300', 'Tuberia 4.3', '210', '26.00'),
('1310', 'Tuberia 3.6', '220', '26.20'),
('1320', 'Tuberia 4.4', '230', '26.40'),
('1330', 'Tuberia 3.7', '240', '26.60'),
('1340', 'Tuberia 4.5', '250', '26.80'),
('1350', 'Tuberia 3.8', '260', '27.00'),
('1360', 'Pintura C1010', '125', '27.20'),
('1370', 'Pintura B1020', '125', '27.40'),
('1380', 'Pintura C1011', '725', '27.60'),
('1390', 'Pintura B1021', '125', '27.80'),
('1400', 'Pintura C1011', '125', '28.00'),
('1410', 'Pintura B1021', '125', '28.20'),
('1420', 'Pintura C1012', '125', '28.40'),
('1430', 'Pintura B1022', '125', '28.60'),
('1440', 'Grava', '500', '20.00'),
('1450', 'Tejas', '1250', '16.00'),
('1460', 'Cal', '200', '18.00'),
('1470', 'Azulejo', '1500', '22.00'),
('1480', 'Marmol', '2000', '35.00');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `MaterialesClave1000`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `MaterialesClave1000` (
`Clave` decimal(5,0)
,`Descripcion` varchar(50)
,`Costo` decimal(8,0)
,`PorcentajeImpuesto` decimal(6,2)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ProvdEducandoCoahuila`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ProvdEducandoCoahuila` (
`RFC` char(13)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `ProvdTelevisa`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `ProvdTelevisa` (
`Denominacion` varchar(50)
,`RFC` char(13)
,`RazonSocial` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proveedores`
--

CREATE TABLE `Proveedores` (
  `RFC` char(13) NOT NULL,
  `RazonSocial` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Proveedores`
--

INSERT INTO `Proveedores` (`RFC`, `RazonSocial`) VALUES
('AAAA800101', 'La fragua'),
('BBBB800101', 'Oviedo'),
('CCCC800101', 'La Ferre'),
('DDDD800101', 'Cecoferre'),
('EEEE800101', 'Alvin'),
('FFFF800101', 'Comex'),
('GGGG800101', 'Tabiquera del centro'),
('HHHH800101', 'Tubasa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `Proyectos`
--

CREATE TABLE `Proyectos` (
  `Numero` decimal(5,0) NOT NULL,
  `Denominacion` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `Proyectos`
--

INSERT INTO `Proyectos` (`Numero`, `Denominacion`) VALUES
('5000', 'Vamos Mexico\r'),
('5001', 'Aztecon\r'),
('5002', 'CIT Campeche\r'),
('5003', 'Mexico sin ti no estamos completos\r'),
('5004', 'Educando en Coahuila\r'),
('5005', 'Infonavit Durango\r'),
('5006', 'Reconstrucci?n del templo de Guadalupe\r'),
('5007', 'Construcci?n de plaza Magnolias\r'),
('5008', 'Televisa en accion\r'),
('5009', 'Disco Atlantic\r'),
('5010', 'Construccion de Hospital Infantil\r'),
('5011', 'Remodelacion de aulas del IPP\r'),
('5012', 'Restauracion de instalaciones del CEA\r'),
('5013', 'Reparacion de la plaza Sonora\r'),
('5014', 'Remodelacion de Soriana\r'),
('5015', 'CIT Yucatan\r'),
('5016', 'Ampliacion de la carretera a la huasteca\r'),
('5017', 'Reparacion de la carretera del sol\r'),
('5018', 'Tu cambio por la educacion\r'),
('5019', 'Queretaro limpio\r');

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `TiposMatEntregadosEn2000`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `TiposMatEntregadosEn2000` (
`Descripcion` varchar(50)
);

-- --------------------------------------------------------

--
-- Estructura Stand-in para la vista `Ventas2001`
-- (Véase abajo para la vista actual)
--
CREATE TABLE `Ventas2001` (
`Clave` decimal(5,0)
,`Ventas` decimal(30,2)
);

-- --------------------------------------------------------

--
-- Estructura para la vista `EntregasAño2000`
--
DROP TABLE IF EXISTS `EntregasAño2000`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `EntregasAño2000`  AS  select `Materiales`.`Descripcion` AS `Descripcion` from (`Materiales` join `Entregan`) where `Entregan`.`Clave` = `Materiales`.`Clave` and `Entregan`.`Fecha` >= '00/01/01' and `Entregan`.`Fecha` <= '00/12/31' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `EntregasAño2001`
--
DROP TABLE IF EXISTS `EntregasAño2001`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `EntregasAño2001`  AS  select `Materiales`.`Descripcion` AS `Descripcion` from (`Materiales` join `Entregan`) where `Entregan`.`Clave` = `Materiales`.`Clave` and `Entregan`.`Fecha` >= '01/01/01' and `Entregan`.`Fecha` <= '01/12/31' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `EntregasMat1300or1450`
--
DROP TABLE IF EXISTS `EntregasMat1300or1450`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `EntregasMat1300or1450`  AS  select `Entregan`.`Clave` AS `Clave`,`Entregan`.`RFC` AS `RFC`,`Entregan`.`Numero` AS `Numero`,`Entregan`.`Fecha` AS `Fecha`,`Entregan`.`Cantidad` AS `Cantidad` from `Entregan` where `Entregan`.`Clave` = 1300 or `Entregan`.`Clave` = 1450 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `EntregasSinVarilla316`
--
DROP TABLE IF EXISTS `EntregasSinVarilla316`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `EntregasSinVarilla316`  AS  select `Entregan`.`Clave` AS `Clave`,`Entregan`.`RFC` AS `RFC`,`Entregan`.`Numero` AS `Numero`,`Entregan`.`Fecha` AS `Fecha`,`Entregan`.`Cantidad` AS `Cantidad` from `Entregan` where !(`Entregan`.`Clave` in (select `Entregan`.`Clave` from `Entregan` where `Entregan`.`Clave` = 1000)) ;

-- --------------------------------------------------------

--
-- Estructura para la vista `MaterialesClave1000`
--
DROP TABLE IF EXISTS `MaterialesClave1000`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `MaterialesClave1000`  AS  select `Materiales`.`Clave` AS `Clave`,`Materiales`.`Descripcion` AS `Descripcion`,`Materiales`.`Costo` AS `Costo`,`Materiales`.`PorcentajeImpuesto` AS `PorcentajeImpuesto` from `Materiales` where `Materiales`.`Clave` = 1000 ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ProvdEducandoCoahuila`
--
DROP TABLE IF EXISTS `ProvdEducandoCoahuila`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ProvdEducandoCoahuila`  AS  select `Proveedores`.`RFC` AS `RFC` from ((`Proyectos` join `Entregan`) join `Proveedores`) where `Entregan`.`RFC` = `Proveedores`.`RFC` and `Entregan`.`Numero` = `Proyectos`.`Numero` and `Proyectos`.`Denominacion` like 'Educando%' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `ProvdTelevisa`
--
DROP TABLE IF EXISTS `ProvdTelevisa`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `ProvdTelevisa`  AS  select `Proyectos`.`Denominacion` AS `Denominacion`,`Proveedores`.`RFC` AS `RFC`,`Proveedores`.`RazonSocial` AS `RazonSocial` from ((`Proyectos` join `Entregan`) join `Proveedores`) where `Entregan`.`RFC` = `Proveedores`.`RFC` and `Entregan`.`Numero` = `Proyectos`.`Numero` and `Proyectos`.`Denominacion` like 'Televisa%' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `TiposMatEntregadosEn2000`
--
DROP TABLE IF EXISTS `TiposMatEntregadosEn2000`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `TiposMatEntregadosEn2000`  AS  select distinct `Materiales`.`Descripcion` AS `Descripcion` from (`Materiales` join `Entregan`) where `Entregan`.`Clave` = `Materiales`.`Clave` and `Entregan`.`Fecha` >= '00/01/01' and `Entregan`.`Fecha` <= '00/12/31' ;

-- --------------------------------------------------------

--
-- Estructura para la vista `Ventas2001`
--
DROP TABLE IF EXISTS `Ventas2001`;

CREATE ALGORITHM=UNDEFINED DEFINER=`root`@`localhost` SQL SECURITY DEFINER VIEW `Ventas2001`  AS  select `Entregan`.`Clave` AS `Clave`,sum(`Entregan`.`Cantidad`) AS `Ventas` from `Entregan` where `Entregan`.`Fecha` between '01/01/01' and '01/12/31' group by `Entregan`.`Clave` ;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `Entregan`
--
ALTER TABLE `Entregan`
  ADD PRIMARY KEY (`Clave`,`RFC`,`Numero`,`Fecha`),
  ADD KEY `cfentreganRFC` (`RFC`),
  ADD KEY `cfentreganNum` (`Numero`);

--
-- Indices de la tabla `Materiales`
--
ALTER TABLE `Materiales`
  ADD PRIMARY KEY (`Clave`);

--
-- Indices de la tabla `Proveedores`
--
ALTER TABLE `Proveedores`
  ADD PRIMARY KEY (`RFC`);

--
-- Indices de la tabla `Proyectos`
--
ALTER TABLE `Proyectos`
  ADD PRIMARY KEY (`Numero`);

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `Entregan`
--
ALTER TABLE `Entregan`
  ADD CONSTRAINT `cfentreganNum` FOREIGN KEY (`Numero`) REFERENCES `Proyectos` (`Numero`),
  ADD CONSTRAINT `cfentreganRFC` FOREIGN KEY (`RFC`) REFERENCES `Proveedores` (`RFC`),
  ADD CONSTRAINT `cfentreganclave` FOREIGN KEY (`Clave`) REFERENCES `Materiales` (`Clave`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
