-- phpMyAdmin SQL Dump
-- version 3.5.1
-- http://www.phpmyadmin.net
--
-- Servidor: localhost
-- Tiempo de generación: 02-12-2012 a las 20:16:05
-- Versión del servidor: 5.5.24-log
-- Versión de PHP: 5.4.3

SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `dal`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbcategoria`
--

CREATE TABLE IF NOT EXISTS `tbcategoria` (
  `idCategoria` bigint(20) NOT NULL,
  `Nombre` varchar(60) NOT NULL,
  PRIMARY KEY (`idCategoria`),
  KEY `idCategoria` (`idCategoria`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbcategoria`
--

INSERT INTO `tbcategoria` (`idCategoria`, `Nombre`) VALUES
(3400010001, 'ACEITES, ADEREZOS Y VINAGRES'),
(3400010002, 'ALIÑOS, CONDIMENTOS Y SALSAS'),
(3400010003, 'ARROZ'),
(3400010004, 'AZUCAR Y ENDULZANTES'),
(3400010005, 'CEREALES'),
(3400010006, 'FRUTOS SECOS'),
(3400010007, 'HARINAS Y POLVOS DE HORNEAR'),
(3400010008, 'HUEVOS'),
(3400010011, 'LEGUMBRES'),
(3400010012, 'MAYONESA - KETCHUP - MOSTAZA'),
(3400010014, 'MERMELADAS - DULCES'),
(3400010015, 'PASTAS Y FIDEOS'),
(3400010016, 'POSTRES PARA PREPARAR Y SALSAS'),
(3400010017, 'PURE'),
(3400010018, 'SABORIZANTES Y FORTIFICANTES'),
(3400010019, 'SAL'),
(3400010020, 'SALSA DE TOMATES'),
(3400010021, 'SOPAS - CREMAS - CALDOS'),
(3400010022, 'TE, CAFÉ Y SUCEDANEOS'),
(3400010023, 'VERDURAS Y FRUTAS FRESCAS'),
(3400010024, 'Jurel'),
(3400020001, 'ALIMENTACIÓN ENTERAL'),
(3400030001, 'CHAMPAGNE'),
(3400030002, 'LICORES'),
(3400030003, 'PISCO'),
(3400030004, 'VINOS'),
(3400030005, 'WHISKY'),
(3400040001, 'AGUA MINERAL'),
(3400040002, 'BEBIDAS GASEOSAS'),
(3400040003, 'NECTARES Y JUGOS '),
(3400050001, 'CAJAS DE ALIMENTOS'),
(3400060001, 'CECINAS'),
(3400060002, 'CERDO'),
(3400060003, 'EMBUTIDOS Y VIENESAS'),
(3400060004, 'HAMBURGESAS'),
(3400060005, 'PATÉS'),
(3400060006, 'PAVO'),
(3400060007, 'POLLO'),
(3400060008, 'VACUNO'),
(3400070001, 'CHOCOLATE'),
(3400070002, 'GALLETAS'),
(3400080001, 'PESCADOS Y MARISCOS'),
(3400080002, 'VEGETALES CONGELADOS'),
(3400090001, 'CONSERVAS DE FRUTA'),
(3400090002, 'CONSERVAS DE MARISCOS Y PESCADOS'),
(3400090003, 'CONSERVAS DE VERDURAS'),
(3400100001, 'CREMAS'),
(3400100002, 'LECHES CONDENSADA Y EVAPORADA'),
(3400100003, 'LECHES'),
(3400100004, 'MANJARES'),
(3400100005, 'MARGARINAS Y MANTEQUILLAS'),
(3400100006, 'QUESOS Y QUESILLOS'),
(3400100007, 'YOGHURT'),
(3400110001, 'PANADERÍA'),
(3400110002, 'PASTELERÍA'),
(3400120001, 'CERAS Y BETUNES'),
(3400120002, 'DESODORANTES E INSECTICIDAS'),
(3400120003, 'DISPENSADORES Y CONTENEDORES'),
(3400120004, 'ESCOBAS , PALAS Y MOPAS'),
(3400120005, 'GUANTES'),
(3400120006, 'BOLSAS'),
(3400120007, 'INSUMOS DE PAPEL'),
(3400120008, 'LIMPIEZA'),
(3400120009, 'VIRUTILLAS Y PAÑOS'),
(3400120010, 'OTROS'),
(3400130001, 'JABONES'),
(3400130002, 'PAPEL HIGIÉNICO'),
(3400130003, 'PAÑUELOS DESECHABLES'),
(3400130004, 'PAÑALES DESECHABLES'),
(3400130005, 'PASTAS DENTALES'),
(3400140001, 'netbook'),
(3400150001, 'BALANZAS'),
(3400150002, 'HERVIDORES'),
(3400150003, 'MICROONDAS'),
(3400150004, 'PLANCHADO'),
(3400160001, 'AGENDAS'),
(3400170001, 'FRAZADAS'),
(3400170002, 'COJINES'),
(3400170003, 'CUBRECAMAS'),
(3400180001, 'CLAVOS'),
(3400180002, 'PLANCHAS DE ZINC'),
(3400180003, 'CASAS PREFABRICADAS'),
(3400190001, 'PAÑOS'),
(3400190002, 'VASOS'),
(3400200001, 'AMPOLLETAS'),
(3500010001, 'vasos'),
(3500010002, 'GALLETAS'),
(3500010003, 'SNACK');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbindicador`
--

CREATE TABLE IF NOT EXISTS `tbindicador` (
  `idIndicador` int(11) NOT NULL,
  `Fecha` datetime NOT NULL,
  `Grasa` float NOT NULL,
  `GrasaSaturada` float NOT NULL,
  `HdeC` float NOT NULL,
  `Sodio` float NOT NULL,
  `Kcal` float NOT NULL,
  `idProducto` bigint(20) NOT NULL,
  PRIMARY KEY (`idIndicador`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbindicador`
--

INSERT INTO `tbindicador` (`idIndicador`, `Fecha`, `Grasa`, `GrasaSaturada`, `HdeC`, `Sodio`, `Kcal`, `idProducto`) VALUES
(1, '2012-12-01 23:25:33', 22.3, 9.5, 70.7, 248, 500, 304491),
(2, '2012-12-01 23:38:19', 24, 3.4, 62.4, 577, 492, 304492),
(3, '2012-12-01 23:44:18', 33, 4.1, 50, 640, 522, 304493),
(4, '2012-12-02 00:02:32', 1.5, 1, 4.7, 70, 45, 304494);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbmarca`
--

CREATE TABLE IF NOT EXISTS `tbmarca` (
  `idMarca` bigint(20) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  PRIMARY KEY (`idMarca`),
  UNIQUE KEY `idMarca` (`idMarca`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbmarca`
--

INSERT INTO `tbmarca` (`idMarca`, `Nombre`) VALUES
(6, 'QUIX'),
(7, 'NOVA'),
(15, 'ZEBRA'),
(35, 'SAN REMO'),
(38, 'IMPEKE'),
(42, 'MAX CLEAN'),
(49, 'ECOHAND'),
(55, 'ECOLOZ'),
(143, 'DUPLEX'),
(146, 'YERDEN'),
(157, 'CLOROX'),
(159, 'BRIMAX'),
(162, 'NOBLE'),
(166, 'BRILLOSOL'),
(169, 'ORQUIDEA'),
(177, 'TENEX'),
(190, 'OFFICLEAN'),
(192, 'WENCO'),
(193, 'VIRUTEX'),
(205, 'SCOTCHBRITE'),
(218, 'VICENCIO'),
(224, 'ARELA'),
(237, 'CONFORT'),
(244, 'ECOINDUSTRIAL'),
(249, 'RAID'),
(285, 'ALUSA'),
(299, 'YACOB'),
(310, 'ECOCARPET'),
(331, 'ELE ELE'),
(353, 'GLASSEX'),
(355, 'BRILLINA'),
(358, 'GISELLE'),
(365, 'SHELL'),
(367, 'VILEDA'),
(375, 'PATO'),
(384, 'ECOLIMP'),
(392, 'S/MARCA'),
(397, 'CAMPANITA'),
(401, 'GARDENIA'),
(411, 'KLENZO'),
(413, 'SELTON'),
(427, 'BRAVO'),
(439, 'ECOCAR'),
(455, 'HARPIC'),
(456, 'CLINIC'),
(474, 'MANLAC'),
(490, 'ARISTON'),
(496, 'MAGO PADS'),
(500, 'GLADE'),
(513, 'VERO'),
(545, 'SILVO'),
(553, 'NACIONAL'),
(574, 'CLORINDA'),
(595, 'LLABRES'),
(610, 'VIM'),
(612, 'VIRGINIA'),
(629, 'VARIOS NACIONALES'),
(630, 'BASULIP'),
(636, 'DAWN'),
(637, 'BRALIMPIA'),
(655, 'TOP GLOVE'),
(665, 'MOVASA'),
(668, 'KIMBERLY'),
(692, 'GUMA'),
(712, 'NUGGET'),
(726, 'ALIPSA'),
(737, 'TORK'),
(738, 'FUZOL'),
(742, 'TATAY'),
(783, 'JUBILE'),
(803, 'DUCO'),
(804, 'GOGET'),
(821, 'ABOLENGO'),
(823, 'ROMMEL'),
(831, 'RUBBERMAID'),
(838, 'TRAMY'),
(865, 'LE SANCY'),
(883, 'MI FAVORITA'),
(887, 'SUPERIOR'),
(888, 'MGF'),
(889, 'HL'),
(890, 'VANISH'),
(904, 'ECOBRILL'),
(915, 'DETTER'),
(936, 'LUX'),
(941, 'ECODETER'),
(977, 'DIMERC'),
(985, 'DI CLEAN'),
(1001, 'FLORAX'),
(1002, 'STYLUS'),
(1005, 'SUTTER'),
(1006, 'POLINASA'),
(1007, 'RADEX'),
(1014, 'POETT'),
(1036, 'RASCH'),
(1044, 'HOUSE HOLD'),
(1050, 'BANG'),
(1058, 'JASPE'),
(1063, 'TUTTI'),
(1064, 'JOFEL'),
(1091, 'ELITE'),
(1111, 'BATIEN'),
(1115, 'POPEYE'),
(1116, 'Ecosan'),
(1128, 'LALMS'),
(1132, 'BIM'),
(1137, 'BONOBRIL'),
(1138, 'TANAX'),
(1142, 'ECOLAB'),
(1145, 'LYSOL'),
(1146, 'DOÑA CLORINDA'),
(1151, 'PISA'),
(1160, 'ECORUBB'),
(1184, 'BIOMAS'),
(1189, 'OMNIUM'),
(1193, '3M'),
(1197, 'PEPE'),
(1222, 'RECKITT'),
(1223, 'BAYER'),
(1244, 'BRILLASOL'),
(1262, 'RODASOL'),
(1268, 'LYSOFORM'),
(1285, 'DANZARINA'),
(1302, 'VIDELA'),
(1309, 'SANIGERMIN'),
(1312, 'PARQUETINA'),
(1355, 'JOHNSON'),
(1396, 'EMILIO SARAY Y CIA.LTDA.'),
(1397, 'ZAX'),
(1401, 'WYPALL'),
(1415, 'NEOLITE'),
(1425, 'BARIK'),
(1433, 'CASALE'),
(1436, 'OSO'),
(1457, 'JONCLEAN'),
(1519, 'SIMOND`S'),
(1527, 'ANTORCHA'),
(1540, 'KLINBAG'),
(1549, 'ECOFLEX'),
(1554, 'TRUPAN'),
(1561, 'PAMPA'),
(1571, 'PRISA'),
(1581, 'CIF'),
(1605, 'KLEAR'),
(1613, 'KIT'),
(1654, 'SACTIF'),
(1655, 'AYUDIN'),
(1663, 'RIMAX'),
(1695, 'ECOMUEBLE'),
(1701, 'AROM'),
(1712, 'OROTEX'),
(1719, 'TEAM'),
(1720, 'RICHTER'),
(1726, 'LEVER'),
(1734, 'FIUME'),
(1751, 'PUREX'),
(1754, 'FAMILAND'),
(1761, 'HAZE'),
(1762, 'A.D.'),
(1814, 'OSNABURGO'),
(1827, 'OZONEL'),
(1841, 'PREFERIDO'),
(1846, 'FIBRO'),
(1861, 'PRIMEROS'),
(1879, 'LORD'),
(1894, 'VARSOL'),
(1900, 'CERACOL'),
(1913, 'CMPC'),
(1918, 'PARAL'),
(1921, 'AQUAPRO'),
(1932, 'SEÑOR'),
(1945, 'SPONTEX'),
(1947, 'MAGIKLIN'),
(1959, 'AROMO'),
(1981, 'BRASSO'),
(1984, 'DOVE'),
(1992, 'STRUJAMOP'),
(5059, 'OTRO'),
(22176, 'ECODOX 03'),
(70873, 'BELLKISS'),
(70918, 'SPUNITA'),
(70919, 'CALO'),
(70920, 'COLUN'),
(70921, 'LONCO LECHE'),
(70922, 'NESTLE'),
(70923, 'PARMALAT'),
(70924, 'SAN COR'),
(70925, 'SOPROLE'),
(70926, 'SURLAT'),
(70927, 'WATTS'),
(70928, 'COSTA'),
(70929, 'LAYS');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tbproducto`
--

CREATE TABLE IF NOT EXISTS `tbproducto` (
  `idProducto` int(11) NOT NULL,
  `NombreProducto` varchar(150) CHARACTER SET utf8 COLLATE utf8_spanish_ci NOT NULL,
  `idMarca` int(11) NOT NULL,
  `codUNSPSC` bigint(25) NOT NULL,
  `idCategoria` bigint(20) NOT NULL,
  `idIndicador` int(11) NOT NULL,
  PRIMARY KEY (`idProducto`,`codUNSPSC`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `tbproducto`
--

INSERT INTO `tbproducto` (`idProducto`, `NombreProducto`, `idMarca`, `codUNSPSC`, `idCategoria`, `idIndicador`) VALUES
(5040, 'GUANTES SPONTEX GRANDE AFELPADO', 1945, 53102504, 3400120005, 0),
(5059, 'GUANTES DIMERC MEDIANO DESECHABLE x 100', 977, 53102504, 3400120005, 0),
(5066, 'GUANTES DIMERC GRANDE DESECHABLE x 100', 977, 53102504, 3400120005, 0),
(5076, 'GUANTES SPONTEX MEDIANO AFELPADO', 1945, 53102504, 3400120005, 0),
(5085, 'GUANTES SPONTEX PEQUEÑO AFELPADO', 1945, 53102504, 3400120005, 0),
(5097, 'GUANTES VIRUTEX PEQUEÑO 100% LATEX', 193, 53102504, 3400120005, 0),
(5110, 'GUANTES HOUSE HOLD MEDIANO 100% LATEX', 1044, 53102504, 3400120005, 0),
(6354, 'GUANTES VIRUTEX MEDIANO 100% LATEX', 193, 53102504, 3400120005, 0),
(6374, 'GUANTES HOUSE HOLD GRANDE 100% LATEX', 1044, 53102504, 3400120005, 0),
(6475, 'GUANTES JASPE PEQUEÑO 100% LATEX', 1058, 53102504, 3400120005, 0),
(6569, 'GUANTES DIMERC PEQUEÑO DESECHABLE x 100', 977, 53102504, 3400120005, 0),
(7937, 'GUANTES VIRUTEX GRANDE 100% LATEX', 193, 53102504, 3400120005, 0),
(21179, 'GUANTES VIRUTEX DESECHABLE PEQUEÑO', 193, 53102504, 3400120005, 0),
(21194, 'GUANTES VIRUTEX DESECHABLE MEDIANO', 193, 53102504, 3400120005, 0),
(21225, 'GUANTES VIRUTEX GRANDE DES', 193, 53102504, 3400120005, 0),
(25708, 'GUANTES IMPEKE CHICO AMARILLO', 38, 53102504, 3400120005, 0),
(25739, 'GUANTES IMPEKE MEDIANO AMARILLO', 38, 53102504, 3400120005, 0),
(25753, 'GUANTES IMPEKE GRANDE AMARILLO', 38, 53102504, 3400120005, 0),
(25777, 'GUANTES PRISA CABRITILLA CORTO AMARILLO FORRADO', 1571, 53102504, 3400120005, 0),
(25830, 'GUANTES PRISA POLIETILENO DESECHABLE CAJA x 100', 1571, 53102504, 3400120005, 0),
(25846, 'GUANTES VILEDA GRANDE Nº 9 ANTIDESLIZANTE', 367, 53102504, 3400120005, 0),
(25859, 'GUANTES VILEDA MEDIANO Nº 8 ANTIDESLIZANTE', 367, 53102504, 3400120005, 0),
(25867, 'GUANTES VILEDA PEQUEÑO Nº 7 ANTIDESLIZANTE', 367, 53102504, 3400120005, 0),
(25874, 'GUANTES VIRUTEX GRANDE MULTIUSO GOMA Nº 8.1/2', 193, 53102504, 3400120005, 0),
(25883, 'GUANTES VIRUTEX MEDIANO MULTIUSO GOMA Nº 7.1/2', 193, 53102504, 3400120005, 0),
(25894, 'GUANTES VIRUTEX PEQUEÑO MULTIUSO GOMA Nº 7', 193, 53102504, 3400120005, 0),
(25900, 'GUANTES VIRUTEX GRANDE MULTIUSO GOMA', 193, 53102504, 3400120005, 0),
(25908, 'GUANTES VIRUTEX MEDIANO MULTIUSO GOMA', 193, 53102504, 3400120005, 0),
(25917, 'GUANTES VIRUTEX PEQUEÑO MULTIUSO GOMA', 193, 53102504, 3400120005, 0),
(25948, 'GUANTES VILEDA FORTE Nº8 2 COLORES', 367, 53102504, 3400120005, 0),
(25960, 'GUANTES VILEDA FORTE Nº 9 2 COLORES', 367, 53102504, 3400120005, 0),
(25971, 'GUANTES PRISA NITRILO SOLVEX HEDMONT Nº 8', 1571, 53102504, 3400120005, 0),
(25979, 'GUANTES PRISA NITRILO SOLVEX HEDMONT Nº10', 1571, 53102504, 3400120005, 0),
(25996, 'GUANTES PRISA CHICO QUIRURGICOS x 100', 1571, 53102504, 3400120005, 0),
(26007, 'GUANTES PRISA GRANDE QUIRURGICOS x 100', 1571, 53102504, 3400120005, 0),
(26015, 'GUANTES PRISA MEDIANO QUIRURGICOS x 100', 1571, 53102504, 3400120005, 0),
(26028, 'GUANTES PRISA TEJIDO ALGODON 3 HEBRAS', 1571, 53102504, 3400120005, 0),
(26037, 'GUANTES VIRUTEX MEDIANO ULTRA SENSIBLE x 10 PARES', 193, 53102504, 3400120005, 0),
(26047, 'GUANTES VIRUTEX MEDIANO SENSIBLES', 193, 53102504, 3400120005, 0),
(26056, 'GUANTES VIRUTEX PEQUEÑO SENSIBLES', 193, 53102504, 3400120005, 0),
(116119, 'BASURERO OMNIUM CLASSIC POSTE GALVANIZADO 50 L', 1189, 76121501, 3400120003, 0),
(157696, 'JABÓN TUTTI LIQUIDO 340 ml', 1063, 53131608, 3400130001, 0),
(157738, 'JABÓN TUTTI LIQUIDO 340 ml', 1063, 53131608, 3400130001, 0),
(157752, 'JABÓN LUX BARRA 90 gr', 936, 53131608, 3400130001, 0),
(162063, 'JABÓN OFFICLEAN LIQUIDO LAVANDA 5 l.', 190, 53131608, 3400130001, 0),
(162064, 'JABÓN LE SANCY LIQUIDO AGUAS TERMALES RECARGA 500 ml', 865, 53131608, 3400130001, 0),
(162269, 'PAPELERO RUBBERMAID 10 l TAPA VAI VEN', 831, 76121501, 3400120003, 0),
(162270, 'PAPELERO RUBBERMAID 10 l TAPA VAI VEN', 831, 76121501, 3400120003, 0),
(162271, 'PAPELERO RUBBERMAID 25 l TAPA VAI VEN', 831, 76121501, 3400120003, 0),
(304473, 'TABLA DE PLANCHADO VARIOS DISEÑOS', 71888, 56101524, 3400150004, 0),
(304489, 'AMERICANA AGROSILVA BOLSA 1,5 KILOS', 74622, 0, 3400010002, 0),
(304490, 'PAPAS LAYS CORTE AMERICANO', 70929, 7802000002557, 3500010003, 3),
(304491, 'SNACK MIX LAYS', 70929, 7802000007569, 3500010003, 2),
(304492, 'FRAC CHOCOLATE RELLENO VAINILLA', 70928, 7802215512285, 3500010002, 1),
(304493, 'LECHE SEMIDESCREMADA SURLAT', 70926, 8480000107480, 3400100003, 4);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
