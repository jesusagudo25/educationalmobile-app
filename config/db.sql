-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Servidor: localhost:3306
-- Tiempo de generación: 26-10-2021 a las 17:00:10
-- Versión del servidor: 5.7.29-cll-lve
-- Versión de PHP: 7.3.22

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `dytfxdbu_multimedia-ii`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_primer_nivel`
--

CREATE TABLE `resultado_primer_nivel` (
  `id_resultado` int(6) UNSIGNED NOT NULL,
  `id_usuario` int(6) UNSIGNED NOT NULL,
  `puntaje` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `fecha_puntaje` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultado_primer_nivel`
--

INSERT INTO `resultado_primer_nivel` (`id_resultado`, `id_usuario`, `puntaje`, `fecha_puntaje`) VALUES
(17, 119, 3, '2021-07-17 23:57:57'),
(18, 120, 1, '2021-07-18 01:41:19'),
(19, 120, 3, '2021-07-18 01:43:21'),
(20, 121, 3, '2021-07-18 06:07:38'),
(21, 124, 0, '2021-07-19 15:17:08'),
(22, 124, 3, '2021-07-19 15:21:31'),
(23, 124, 3, '2021-07-19 15:51:10'),
(24, 124, 3, '2021-07-19 16:11:31'),
(25, 124, 3, '2021-07-19 16:39:36'),
(26, 124, 3, '2021-07-19 17:11:50'),
(27, 124, 4, '2021-07-19 19:27:35'),
(28, 124, 0, '2021-07-19 19:46:42'),
(29, 124, 0, '2021-07-19 19:50:42'),
(30, 125, 2, '2021-07-21 21:59:19'),
(31, 124, 0, '2021-07-22 05:12:02'),
(32, 124, 3, '2021-07-22 05:13:35'),
(33, 126, 1, '2021-07-30 00:26:00'),
(34, 126, 1, '2021-07-31 23:05:28'),
(35, 126, 5, '2021-07-31 23:07:37'),
(36, 126, 0, '2021-09-28 17:08:02'),
(37, 126, 1, '2021-10-09 03:22:25'),
(38, 126, 0, '2021-10-09 03:22:52'),
(39, 126, 4, '2021-10-09 03:25:28');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `resultado_segundo_nivel`
--

CREATE TABLE `resultado_segundo_nivel` (
  `id_resultado` int(6) UNSIGNED NOT NULL,
  `id_usuario` int(6) UNSIGNED NOT NULL,
  `puntaje` int(2) UNSIGNED NOT NULL DEFAULT '0',
  `fecha_puntaje` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `resultado_segundo_nivel`
--

INSERT INTO `resultado_segundo_nivel` (`id_resultado`, `id_usuario`, `puntaje`, `fecha_puntaje`) VALUES
(14, 119, 4, '2021-07-17 23:59:55'),
(15, 120, 4, '2021-07-18 01:44:53'),
(16, 120, 4, '2021-07-18 01:55:05'),
(17, 120, 4, '2021-07-18 01:55:59'),
(18, 120, 4, '2021-07-18 01:56:59'),
(19, 121, 4, '2021-07-18 06:08:58'),
(20, 121, 1, '2021-07-18 19:10:45'),
(21, 121, 4, '2021-07-18 19:11:34'),
(22, 121, 4, '2021-07-19 05:50:05'),
(23, 124, 4, '2021-07-19 15:25:06'),
(24, 124, 4, '2021-07-26 16:43:12');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario`
--

CREATE TABLE `usuario` (
  `id_usuario` int(6) UNSIGNED NOT NULL,
  `id_rol` int(2) UNSIGNED NOT NULL DEFAULT '1',
  `email` varchar(40) NOT NULL,
  `password` varchar(85) NOT NULL,
  `estado` tinyint(1) NOT NULL DEFAULT '1',
  `ultimo_acceso` datetime NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario`
--

INSERT INTO `usuario` (`id_usuario`, `id_rol`, `email`, `password`, `estado`, `ultimo_acceso`) VALUES
(119, 2, 'jesus@gmail.com', '$2y$10$Q9xgxDFFsFJnnDteYgztZ.nQ.7cXA7uFixxKwmfQyoUGZfq1FzuQq', 1, '2021-07-31 23:08:53'),
(120, 1, 'lissa@gmail.com', '$2y$10$GZ7uUGqP0i5wTEkw7QzJ6ugkCF83CrYPoyvdB1F6sHN8ydjJ0lSRW', 1, '2021-07-18 01:53:51'),
(121, 1, 'luis@gmail.com', '$2y$10$LfenDoX3otmic21g2UbX9eAx3fltJYAQ8i5LpoXWU76jVZTpJWEz6', 0, '2021-07-19 05:48:41'),
(122, 1, 'jarry@gmail.com', '$2y$10$QH90cXQr1KW3L/OB53N/OO0vCeO.4Imcr5.H8vB/w3vDA8eB7CRWO', 1, '2021-07-19 01:09:09'),
(123, 1, 'perez@gmail.com', '$2y$10$w6o1miNr9fDA3r5eCqDAe.oNsg1wsW/kqPlBijVwBiL2l7UFynRWa', 1, '2021-07-19 15:02:46'),
(124, 1, 'isa@gmail.com', '$2y$10$MHR7fABNfSrxTeg08e6snubSZvGmjUpDHZVCmUjdrYAlm2MQi0l3O', 1, '2021-07-26 16:41:02'),
(125, 1, 'gia@hotmail.com', '$2y$10$Z4D2JeBKFNOiUocxN.574O/p1cl/dtpaXhvCfoyEkj30GnasOQn/W', 1, '2021-07-21 21:53:06'),
(126, 1, 'laura@gmail.com', '$2y$10$GyER.cuxYJQmDLs6OL4u0OO.Llw1GNx12SCivfJRw0G4OXTpG9PtO', 1, '2021-10-09 03:20:16');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuario_rol`
--

CREATE TABLE `usuario_rol` (
  `id_rol` int(2) UNSIGNED NOT NULL,
  `nombre` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuario_rol`
--

INSERT INTO `usuario_rol` (`id_rol`, `nombre`) VALUES
(1, 'User'),
(2, 'Admin');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `resultado_primer_nivel`
--
ALTER TABLE `resultado_primer_nivel`
  ADD PRIMARY KEY (`id_resultado`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `resultado_segundo_nivel`
--
ALTER TABLE `resultado_segundo_nivel`
  ADD PRIMARY KEY (`id_resultado`),
  ADD KEY `id_usuario` (`id_usuario`);

--
-- Indices de la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `email` (`email`),
  ADD KEY `id_rol` (`id_rol`);

--
-- Indices de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  ADD PRIMARY KEY (`id_rol`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `resultado_primer_nivel`
--
ALTER TABLE `resultado_primer_nivel`
  MODIFY `id_resultado` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=40;

--
-- AUTO_INCREMENT de la tabla `resultado_segundo_nivel`
--
ALTER TABLE `resultado_segundo_nivel`
  MODIFY `id_resultado` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=25;

--
-- AUTO_INCREMENT de la tabla `usuario`
--
ALTER TABLE `usuario`
  MODIFY `id_usuario` int(6) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=127;

--
-- AUTO_INCREMENT de la tabla `usuario_rol`
--
ALTER TABLE `usuario_rol`
  MODIFY `id_rol` int(2) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `resultado_primer_nivel`
--
ALTER TABLE `resultado_primer_nivel`
  ADD CONSTRAINT `resultado_primer_nivel_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `resultado_segundo_nivel`
--
ALTER TABLE `resultado_segundo_nivel`
  ADD CONSTRAINT `resultado_segundo_nivel_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuario` (`id_usuario`);

--
-- Filtros para la tabla `usuario`
--
ALTER TABLE `usuario`
  ADD CONSTRAINT `usuario_ibfk_1` FOREIGN KEY (`id_rol`) REFERENCES `usuario_rol` (`id_rol`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
