-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 24-05-2024 a las 17:53:40
-- Versión del servidor: 10.4.11-MariaDB
-- Versión de PHP: 7.4.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `inventario`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `id_admi` int(11) NOT NULL,
  `nombre` varchar(30) NOT NULL,
  `aparterno` varchar(30) NOT NULL,
  `amaterno` varchar(20) NOT NULL,
  `email` varchar(30) NOT NULL,
  `password` int(20) NOT NULL,
  `telefono` varchar(30) NOT NULL,
  `direccion` varchar(40) NOT NULL,
  `estatus` varchar(30) NOT NULL,
  `rol` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `administrador`
--

INSERT INTO `administrador` (`id_admi`, `nombre`, `aparterno`, `amaterno`, `email`, `password`, `telefono`, `direccion`, `estatus`, `rol`) VALUES
(1, 'mishell lima cantun', 'lima', 'cantun', 'mishell.lima@gmail.com', 1234, '08799029', 'buenos aires', 'inactivo ', 'Admin'),
(5, 'mishel', 'lima', 'cantun', 'mishell.lima29@gmail', 1234, '7775999197', 'puente de ixtla', 'activo', 'Admin'),
(6, 'neftali', '', 'noriega', 'neftali17carreto@gmail.com', 12345, '7771093019', 'puente de ixtla', '', 'Admin'),
(7, 'sai', '', 'cantun', 'mishell.lima29@gmail', 1234, '7775999197', 'puente de ixtla', '', 'Admin'),
(8, 'sai', '', 'cantun', 'mishell.lima29@gmail', 1234, '7775999197', 'puente de ixtla', '', 'Admin'),
(9, 'sai', '', 'cantun', 'mishell.lima29@gmail', 1234, '7775999197', 'puente de ixtla', '', 'Admin'),
(10, 'sami', 'lima', 'cantun', 'mishell.lima29@gmail', 123, '7775999197', 'puente de ixtla', 'admi', ''),
(11, 'sami', 'lima', 'cantun', 'mishell.lima29@gmail', 123, '7775999197', 'puente de ixtla', 'admi', ''),
(12, 'mary', 'lima', 'cantun', 'mishell.lima29@gmail', 123, '7775999197', 'puente de ixtla', 'inactivo ', 'Admin'),
(13, 'sami', 'lima', 'cantun', 'mishell.lima29@gmail', 123, '7775999197', 'puente de ixtla', 'activo', 'Admin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventario`
--

CREATE TABLE `inventario` (
  `id_invent` int(11) NOT NULL,
  `descripcion_articulo` varchar(50) NOT NULL,
  `marca` varchar(50) NOT NULL,
  `modelo` varchar(50) NOT NULL,
  `serie` varchar(50) NOT NULL,
  `ubicacioon` varchar(50) NOT NULL,
  `estado` varchar(50) NOT NULL,
  `id_admin` int(11) NOT NULL,
  `nombre` varchar(50) NOT NULL,
  `cargo` varchar(30) NOT NULL,
  `fecha` text NOT NULL,
  `estatus` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `inventariox`
--

CREATE TABLE `inventariox` (
  `id` int(11) NOT NULL,
  `folio` text NOT NULL,
  `descripcion` text NOT NULL,
  `serie` text NOT NULL,
  `fecha_de_adquisicion` varchar(444) NOT NULL,
  `monto_de_adquisicion` varchar(444) NOT NULL,
  `validado` varchar(255) NOT NULL,
  `ubicacion` varchar(444) NOT NULL,
  `observaciones` varchar(255) NOT NULL,
  `estado` varchar(255) NOT NULL,
  `area` varchar(255) NOT NULL,
  `id_user` int(11) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `inventariox`
--

INSERT INTO `inventariox` (`id`, `folio`, `descripcion`, `serie`, `fecha_de_adquisicion`, `monto_de_adquisicion`, `validado`, `ubicacion`, `observaciones`, `estado`, `area`, `id_user`) VALUES
(1, '123', 'IPAD PRO ', 'as', '2024-01-13', 'AS', 'As', 'aS', 'NINGUNA ', 'activo', '', 0),
(2, '11115', 'IPHONE', '12125', '2024-01-11', '9000', '1', 'aS', 'NINGUNA ', 'activo', '4', 0),
(3, '1', '1', '1', '2024-01-06', '1', '1', '1', '1', 'activo', '1', 0),
(4, 'qwe', 'qwe', 'qwe', '2024-02-02', '22', 'S', 'sd', 'sd', 'activo', 'aa', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `messages`
--

CREATE TABLE `messages` (
  `msg_id` int(11) NOT NULL,
  `incoming_msg_id` int(255) NOT NULL,
  `outgoing_msg_id` int(255) NOT NULL,
  `msg` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `messages`
--

INSERT INTO `messages` (`msg_id`, `incoming_msg_id`, `outgoing_msg_id`, `msg`) VALUES
(1, 1622688038, 340066300, 'hola man'),
(2, 340066300, 1622688038, 'bien'),
(3, 1622688038, 340066300, 'hola'),
(4, 340066300, 1622688038, 'hola'),
(5, 440971576, 1622688038, 'hola pedro, necesito tu ayuda'),
(6, 1622688038, 440971576, 'hola Mauricio, claro, dime !!'),
(7, 440971576, 440971573, 'que onda ');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `solicitudes`
--

CREATE TABLE `solicitudes` (
  `id` int(12) NOT NULL,
  `folio` text DEFAULT NULL,
  `descripcion` text CHARACTER SET utf8mb4 COLLATE utf8mb4_bin DEFAULT NULL,
  `serie` text DEFAULT NULL,
  `fecha_de_adquisicion` text DEFAULT NULL,
  `monto_de_adquisicion` text DEFAULT NULL,
  `validado` varchar(255) DEFAULT NULL,
  `ubicacion` varchar(255) DEFAULT NULL,
  `observaciones` varchar(255) DEFAULT NULL,
  `estado` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_user` int(11) UNSIGNED NOT NULL,
  `nombre` text NOT NULL,
  `apaterno` varchar(25) NOT NULL,
  `amaterno` varchar(25) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `password` varchar(500) NOT NULL,
  `cellphone` varchar(100) NOT NULL,
  `direccion` varchar(50) NOT NULL,
  `type` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_user`, `nombre`, `apaterno`, `amaterno`, `correo`, `password`, `cellphone`, `direccion`, `type`) VALUES
(56, 'Juan', 'Pérez', 'López', 'juan@gmail.com', '$2y$10$U2bZYc8tUHf1ezRIkFNo0eCV2ODBgr8VrB64X.TqW9u.cax414Xs2', '73412345678', 'a', 3),
(75, 'asdaa', 'asd', 'asda', 'beto@gmail.com', '$2y$10$52InZnFX/TxgdjAbfGnS.e7W5poOTvhkVXr2IiZEbp0GMS9oKOq.e', 'aaa', 'aaa', 1),
(78, 'ASD', 'ASD', 'ASD', 'SI@A.com', '$2y$10$BVzWwe/QGQIItt9sPgp5see23IfaPnal3esgtaPHO4nqpj6Pa2b6G', 'ASD', 'ASDAAA', 1),
(80, 'gil', 'ADMINISTRADOR LIDER', 'GIL', 'beto@gmail.com', '$2y$10$I191h3WgZu88/lq6hSJaoubOL72zuEbwCA2AZXMwF7QKJvX9m0qp6', '123', '123', 1),
(81, 'jose LUI', 'AAA', 'AAA', 'lui@gmail.com', '$2y$10$PVaWaR6YxUy4JIx42bVrSewCKMp78.Ajughdm2eBWEHYWo4HwUWPW', '123', '123', 2),
(83, 'jose luis', 'arrollo', 'aniaca', 'jose@gmail.com', '$2y$10$4W.W39kAvEygKqk19ixXYukn8pByHP.QmHXIwHBBHtn0Jj3LdRpBS', '77788899222', 'ad', 2),
(87, 'Gilberto', 'Hernandez', 'Malpica', 'gil@gmail.com', '$2y$10$M/xh5ECrDvK2ehxQ.m20JOb4pTL2ceK7fgYXwUgvDPmG7fYYBUfxO', '7773278655', 'Galeana', 2),
(88, 'Omar', 'Gonzales', 'Espinoza', 'omar@gmail.com', '$2y$10$mXz/Vp2YPdKDM9I7nW5RDus1gBjw6lG2U3yDrw7K9BZnT4xGuNdZ6', '777755656556', 'Zacatepec', 2),
(89, 'a', 'a', 'a', 'a@goma', '$2y$10$z7GKMEMPo7UdS3prp0yjUuvRA1sOL44b0xhQgbi3tzV4GgScEPfti', 'a', 'a', 1),
(90, 'Javier', 'Casimiro', 'Morales', 'javiercasimiro@utsem-morelos.edu.mx', '$2y$10$C4E26uX9ItbMSafEJrxvGeva7cexnXAcoSO.arXLt9lNeT5ig29G6', '7771894836', 'Na', 2),
(91, '1', 'paz', 'prueba', 'prueba@gmail.com', '$2y$10$wLH7nML8sohg5p0loHp.PeTs4MeLnmBB9yOMJaJcL486ZUoTuKZha', '1', '1', 1),
(92, 'Gilberto', 'Sanche', 'Ruiz', '123@gmail.com', '$2y$10$B2xNayKcIvxswgmlwS5TjO/FhDGdNNMR83b1jVGvLt8QQG9H2oM9O', '44444', 'Zacatepec', 2),
(93, 'Administrador', 'ADMINISTRADOR LIDER', 'Admin', 'admin@gmail.com', '$2y$10$5LNOxZNmv/XQWT5NhMAdX.aQHHyV5kf1bAsAwqAkZuKVGsboHgUWG', '123', '123', 1),
(94, 'casemiro', 'asd', 'asd', 'asd@gmail.com', '$2y$10$YjUM/Tay.lwc5wzUZAxNm.Nj2nV7j8lcMi8Z.uRv9qcP13GiFXMSu', '323', '2323', 2),
(95, 'mary', 'lima', 'cantun', 'mishell.lima29@gmail', '$2y$10$6UwQNvdvSYIthXMWq.YohOQ2CHl85ZGjGG0m288w06xKkD/oX3cyS', '55448877', '  guadalupe', 1),
(96, 'moises lima', 'limcan', 'lima', 'mishell.lima29@gmail', '$2y$10$jY.zDNLWKC97nPyVmrv9ZuUGxEsjB16vXHzTyfZvhSrQeX4No3oli', '55448877', 'puente de ixtla', 1),
(97, 'moises', 'lima', 'cantun', 'mishell.lima29@gmail', '$2y$10$GvMs.Et3oolSUVLsblSWcO.0i6prmgm50Bqx07IIjw8P8Tf4/AgVO', '55448877', 'puente de ixtla', 1);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`id_admi`);

--
-- Indices de la tabla `inventario`
--
ALTER TABLE `inventario`
  ADD PRIMARY KEY (`id_invent`);

--
-- Indices de la tabla `inventariox`
--
ALTER TABLE `inventariox`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `messages`
--
ALTER TABLE `messages`
  ADD PRIMARY KEY (`msg_id`);

--
-- Indices de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `id_admi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT de la tabla `inventario`
--
ALTER TABLE `inventario`
  MODIFY `id_invent` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `inventariox`
--
ALTER TABLE `inventariox`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT de la tabla `messages`
--
ALTER TABLE `messages`
  MODIFY `msg_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `solicitudes`
--
ALTER TABLE `solicitudes`
  MODIFY `id` int(12) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=69;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_user` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=98;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
