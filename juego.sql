-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1:3306
-- Tiempo de generación: 08-04-2024 a las 17:29:26
-- Versión del servidor: 8.2.0
-- Versión de PHP: 8.2.13

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `juego`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `animal`
--

DROP TABLE IF EXISTS `animal`;
CREATE TABLE IF NOT EXISTS `animal` (
  `id_animal` int NOT NULL AUTO_INCREMENT,
  `tipo_animal` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `valor_animal` int NOT NULL,
  PRIMARY KEY (`id_animal`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `edificio`
--

DROP TABLE IF EXISTS `edificio`;
CREATE TABLE IF NOT EXISTS `edificio` (
  `id_edificio` int NOT NULL AUTO_INCREMENT,
  `tipo_edificio` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `valor_edificio` int NOT NULL,
  PRIMARY KEY (`id_edificio`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `jugador`
--

DROP TABLE IF EXISTS `jugador`;
CREATE TABLE IF NOT EXISTS `jugador` (
  `id_jugador` int NOT NULL AUTO_INCREMENT,
  `nombre_jugador` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `dinero_jugador` int NOT NULL,
  PRIMARY KEY (`id_jugador`)
) ENGINE=MyISAM AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

--
-- Volcado de datos para la tabla `jugador`
--

INSERT INTO `jugador` (`id_jugador`, `nombre_jugador`, `dinero_jugador`) VALUES
(1, 'Benjamin', 1000),
(2, 'Benjamin', 1000);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parcela`
--

DROP TABLE IF EXISTS `parcela`;
CREATE TABLE IF NOT EXISTS `parcela` (
  `id_parcela` int NOT NULL AUTO_INCREMENT,
  PRIMARY KEY (`id_parcela`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `planta`
--

DROP TABLE IF EXISTS `planta`;
CREATE TABLE IF NOT EXISTS `planta` (
  `id_planta` int NOT NULL AUTO_INCREMENT,
  `tipo_planta` varchar(100) COLLATE utf8mb4_spanish2_ci NOT NULL,
  `crecimiento_planta` int NOT NULL,
  `tiempo_cosecha` int NOT NULL,
  `tiempo_cosechado` int NOT NULL,
  PRIMARY KEY (`id_planta`)
) ENGINE=MyISAM DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_spanish2_ci;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
