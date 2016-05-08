-- phpMyAdmin SQL Dump
-- version 4.0.10deb1
-- http://www.phpmyadmin.net
--
-- Host: localhost
-- Generation Time: May 08, 2016 at 12:42 PM
-- Server version: 5.5.49-0ubuntu0.14.04.1
-- PHP Version: 5.5.9-1ubuntu4.16

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Database: `softwareJerry`
--

-- --------------------------------------------------------

--
-- Table structure for table `Inventario`
--

CREATE TABLE IF NOT EXISTS `Inventario` (
  `ID_INVENTARIO` int(11) NOT NULL AUTO_INCREMENT,
  `PRODUCTO` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `CATEGORIA` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `PRECIO` int(11) NOT NULL,
  `PROVEEDOR` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `DISPONIBLES` int(11) NOT NULL,
  `NOTAS` text NOT NULL,
  `ACTIVO` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_INVENTARIO`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=12 ;

--
-- Dumping data for table `Inventario`
--

INSERT INTO `Inventario` (`ID_INVENTARIO`, `PRODUCTO`, `CATEGORIA`, `PRECIO`, `PROVEEDOR`, `DISPONIBLES`, `NOTAS`, `ACTIVO`) VALUES
(2, 'Silla', 'Plastico Duro', 50, 'ProveedorUno', 20, '', 1),
(3, 'Tambo', 'Plastico Duro', 100, 'ProveedorDos', 10, '', 1),
(4, 'Galonera', 'Plastico Duro', 30, 'ProveedorDos', 5, '', 1),
(5, 'Mesa', 'Plastico Duro', 200, 'ProveedorUno', 1, '', 1),
(6, 'Frascos', 'Plastico Duro', 30, 'ProveedorDos', 200, '', 1),
(7, 'Mallas de plastico', 'Plastico Suave', 50, 'ProveedorUno', 90, '', 1),
(8, 'Playo', 'Plastico Suave', 5, 'ProveedorDos', 40, '', 1),
(9, 'Bolsas', 'Plastico Suave', 2, 'ProveedorUno', 1000, '', 1),
(10, 'Guantes', 'Plastico Suave', 6, 'ProveedorDos', 0, '', 1),
(11, 'Condones', 'Plastico Suave', 70, 'ProveedorDos', 150, '', 1);

-- --------------------------------------------------------

--
-- Table structure for table `Transacciones`
--

CREATE TABLE IF NOT EXISTS `Transacciones` (
  `ID_TRANSACCIONES` int(11) NOT NULL AUTO_INCREMENT,
  `USUARIO_ID` int(11) NOT NULL,
  `PRODUCTO_ID` int(11) NOT NULL,
  `CANTIDAD` int(11) NOT NULL,
  `TOTAL` int(11) NOT NULL,
  `ACTIVO` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_TRANSACCIONES`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=2 ;

--
-- Dumping data for table `Transacciones`
--

INSERT INTO `Transacciones` (`ID_TRANSACCIONES`, `USUARIO_ID`, `PRODUCTO_ID`, `CANTIDAD`, `TOTAL`, `ACTIVO`) VALUES
(1, 1, 1, 2, 20, 0);

-- --------------------------------------------------------

--
-- Table structure for table `Usuarios`
--

CREATE TABLE IF NOT EXISTS `Usuarios` (
  `ID_USUARIOS` int(11) NOT NULL AUTO_INCREMENT,
  `USUARIO` varchar(10) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `CONTRASENA` varchar(30) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `NOMBRE` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `APELLIDO` varchar(50) CHARACTER SET latin1 COLLATE latin1_spanish_ci NOT NULL,
  `CORREO` varchar(50) NOT NULL,
  `FECHANAC` date NOT NULL,
  `TIPO` tinyint(1) NOT NULL DEFAULT '0',
  `ACTIVO` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`ID_USUARIOS`)
) ENGINE=InnoDB  DEFAULT CHARSET=latin1 AUTO_INCREMENT=3 ;

--
-- Dumping data for table `Usuarios`
--

INSERT INTO `Usuarios` (`ID_USUARIOS`, `USUARIO`, `CONTRASENA`, `NOMBRE`, `APELLIDO`, `CORREO`, `FECHANAC`, `TIPO`, `ACTIVO`) VALUES
(1, 'Root', 'password1020', 'rootNombre', 'rootApellido', 'root@hotmail.com', '2016-05-02', 0, 1),
(2, 'User1', 'Pass1', 'Name1', 'Surn1', 'Mail1', '0000-00-00', 0, 1);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
