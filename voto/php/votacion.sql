-- phpMyAdmin SQL Dump
-- version 4.7.4
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 19-04-2018 a las 08:55:59
-- Versión del servidor: 10.1.28-MariaDB
-- Versión de PHP: 7.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `voto`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pruducto`
--

CREATE TABLE `pruducto` (
  `id_Obra` int(11) NOT NULL,
  `nombre-Po` text NOT NULL,
  `adjunto` text NOT NULL,
  `votos` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `pruducto`
--

INSERT INTO `pruducto` (`id_Obra`, `nombre-Po`, `adjunto`, `votos`) VALUES
(1, 'la mamva', 'asasds', 0),
(2, 'asdsd', 'img/30222039_10155261766961128_1379016911009873920_n.jpg', 0);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_User` int(10) NOT NULL,
  `Nombre` text NOT NULL,
  `Correo` text NOT NULL,
  `Clave` varchar(15) NOT NULL,
  `voto` tinyint(1) NOT NULL,
  `para` int(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_User`, `Nombre`, `Correo`, `Clave`, `voto`, `para`) VALUES
(1, 'felipe sanches', 'sanches@gmail.com', '123456', 0, 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `pruducto`
--
ALTER TABLE `pruducto`
  ADD PRIMARY KEY (`id_Obra`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_User`),
  ADD KEY `para` (`para`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
