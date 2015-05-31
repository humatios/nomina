-- phpMyAdmin SQL Dump
-- version 4.2.11
-- http://www.phpmyadmin.net
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 31-05-2015 a las 19:17:34
-- Versión del servidor: 5.6.21
-- Versión de PHP: 5.6.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8 */;

--
-- Base de datos: `cucsoft`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `empleados`
--

CREATE TABLE IF NOT EXISTS `empleados` (
`id` bigint(20) NOT NULL,
  `direccion` varchar(20) DEFAULT NULL,
  `eliminado` tinyint(4) DEFAULT NULL,
  `email` varchar(30) NOT NULL,
  `identificacion` varchar(30) DEFAULT NULL,
  `nombre` varchar(20) DEFAULT NULL,
  `puesto` varchar(20) DEFAULT NULL,
  `telefono` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `opciones`
--

CREATE TABLE IF NOT EXISTS `opciones` (
`id` bigint(20) NOT NULL,
  `cls` varchar(255) NOT NULL,
  `controlador` varchar(200) DEFAULT NULL,
  `desc_opcion` varchar(200) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_opcion` varchar(1) NOT NULL,
  `id_padre` bigint(20) DEFAULT NULL,
  `id_tipo_opcion` varchar(10) DEFAULT NULL,
  `nombre_opcion` varchar(100) NOT NULL,
  `orden` varchar(3) DEFAULT NULL,
  `tiene_hijos` tinyint(4) NOT NULL,
  `url` varchar(300) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `opciones`
--

INSERT INTO `opciones` (`id`, `cls`, `controlador`, `desc_opcion`, `eliminado`, `estado_opcion`, `id_padre`, `id_tipo_opcion`, `nombre_opcion`, `orden`, `tiene_hijos`, `url`) VALUES
(1, 'link', 'Parametro', 'Manejo de Parametros', 0, 'A', NULL, NULL, 'Parametros', NULL, 0, '/cuccrm/Parametro/index'),
(2, 'link', 'Usuario', 'Manejo de Usuarios', 0, 'A', NULL, NULL, 'Usuarios', NULL, 0, '/cucrm/Usuario/index'),
(3, 'link', 'Producto', 'Manejo de Productos', 0, 'A', NULL, NULL, 'Productos', NULL, 0, '/cuccrm/Producto/index');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `operaciones`
--

CREATE TABLE IF NOT EXISTS `operaciones` (
`id` bigint(20) NOT NULL,
  `acciones` varchar(1000) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_operacion` varchar(1) NOT NULL,
  `nombre_operacion` varchar(100) NOT NULL,
  `opcion_id` bigint(20) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `operaciones`
--

INSERT INTO `operaciones` (`id`, `acciones`, `eliminado`, `estado_operacion`, `nombre_operacion`, `opcion_id`) VALUES
(1, 'create,', 0, 'A', 'CREAR', NULL),
(2, 'index,show,', 0, 'A', 'VER', NULL),
(3, 'edit,update,', 0, 'A', 'MODIFICAR', NULL),
(4, 'borrar,', 0, 'A', 'BORRAR', NULL),
(5, 'delete,', 0, 'A', 'DESTRUIR', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `parametros`
--

CREATE TABLE IF NOT EXISTS `parametros` (
`id` bigint(20) NOT NULL,
  `atributo` varchar(50) DEFAULT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado_parametro` varchar(1) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_nomina`
--

CREATE TABLE IF NOT EXISTS `registro_nomina` (
`id` bigint(20) NOT NULL,
  `descripcion_nomina` varchar(50) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `empleados_id` bigint(20) NOT NULL,
  `nombre_de_nomina` varchar(30) DEFAULT NULL,
  `sueldo` bigint(20) NOT NULL,
  `total_pagar` bigint(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `registro_novedad`
--

CREATE TABLE IF NOT EXISTS `registro_novedad` (
`id` bigint(20) NOT NULL,
  `cantidad` int(11) NOT NULL,
  `descripcion_novedad` varchar(50) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL,
  `empleados_id` bigint(20) NOT NULL,
  `estado` varchar(20) DEFAULT NULL,
  `fecha_final` datetime DEFAULT NULL,
  `fecha_inicio` datetime DEFAULT NULL,
  `nombre_novedad` varchar(30) DEFAULT NULL,
  `tipo` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles`
--

CREATE TABLE IF NOT EXISTS `roles` (
`id` bigint(20) NOT NULL,
  `desc_rol` varchar(200) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol` varchar(1) NOT NULL,
  `nombre_rol` varchar(100) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles`
--

INSERT INTO `roles` (`id`, `desc_rol`, `eliminado`, `estado_rol`, `nombre_rol`) VALUES
(1, 'Administrador Funcional', 0, 'A', 'Admin Funcional'),
(2, 'Administrador del Sistema', 0, 'A', 'Admin Sistema');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `roles_usuarios`
--

CREATE TABLE IF NOT EXISTS `roles_usuarios` (
`id` bigint(20) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol_usuario` varchar(1) NOT NULL,
  `rol_id` bigint(20) NOT NULL,
  `usuario_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `roles_usuarios`
--

INSERT INTO `roles_usuarios` (`id`, `eliminado`, `estado_rol_usuario`, `rol_id`, `usuario_id`) VALUES
(1, 0, 'A', 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `rol_opcion_operacion`
--

CREATE TABLE IF NOT EXISTS `rol_opcion_operacion` (
`id` bigint(20) NOT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `estado_rol_opcion_operacion` varchar(1) NOT NULL,
  `opcion_id` bigint(20) NOT NULL,
  `operacion_id` bigint(20) NOT NULL,
  `rol_id` bigint(20) NOT NULL
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `rol_opcion_operacion`
--

INSERT INTO `rol_opcion_operacion` (`id`, `eliminado`, `estado_rol_opcion_operacion`, `opcion_id`, `operacion_id`, `rol_id`) VALUES
(1, 0, 'A', 1, 2, 1),
(2, 0, 'A', 2, 2, 1),
(3, 0, 'A', 1, 2, 1),
(4, 0, 'A', 1, 4, 1),
(5, 0, 'A', 1, 5, 1),
(6, 0, 'A', 2, 3, 1),
(7, 0, 'A', 2, 1, 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE IF NOT EXISTS `usuarios` (
`id` bigint(20) NOT NULL,
  `contrasena` varchar(100) DEFAULT NULL,
  `eliminado` tinyint(4) NOT NULL DEFAULT '0',
  `id_estado_usuario` varchar(10) DEFAULT NULL,
  `nombre` varchar(255) NOT NULL,
  `usuario` varchar(150) DEFAULT NULL
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id`, `contrasena`, `eliminado`, `id_estado_usuario`, `nombre`, `usuario`) VALUES
(1, '202cb962ac59075b964b07152d234b70', 0, 'A', 'Hernan Pajaro', 'hpajaro');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `valor_parametros`
--

CREATE TABLE IF NOT EXISTS `valor_parametros` (
`id` bigint(20) NOT NULL,
  `descripcion` varchar(150) DEFAULT NULL,
  `estado_valor_parametro` varchar(1) DEFAULT NULL,
  `orden` varchar(3) DEFAULT NULL,
  `parametros_id` bigint(20) NOT NULL,
  `valor` varchar(300) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `empleados`
--
ALTER TABLE `empleados`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `opciones`
--
ALTER TABLE `opciones`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `operaciones`
--
ALTER TABLE `operaciones`
 ADD PRIMARY KEY (`id`), ADD KEY `FKEAB8C1C68490B1B` (`opcion_id`);

--
-- Indices de la tabla `parametros`
--
ALTER TABLE `parametros`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `registro_nomina`
--
ALTER TABLE `registro_nomina`
 ADD PRIMARY KEY (`id`), ADD KEY `FK475E271C4DF60B3B` (`empleados_id`);

--
-- Indices de la tabla `registro_novedad`
--
ALTER TABLE `registro_novedad`
 ADD PRIMARY KEY (`id`), ADD KEY `FKA4E3994B4DF60B3B` (`empleados_id`);

--
-- Indices de la tabla `roles`
--
ALTER TABLE `roles`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
 ADD PRIMARY KEY (`id`), ADD KEY `FKC9AC5A476E4093D9` (`rol_id`), ADD KEY `FKC9AC5A47665ECBF9` (`usuario_id`);

--
-- Indices de la tabla `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
 ADD PRIMARY KEY (`id`), ADD KEY `FKD4E68CAF6E4093D9` (`rol_id`), ADD KEY `FKD4E68CAFE0B387F9` (`operacion_id`), ADD KEY `FKD4E68CAF8490B1B` (`opcion_id`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
 ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
 ADD PRIMARY KEY (`id`), ADD KEY `FK831254B56B92075B` (`parametros_id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `empleados`
--
ALTER TABLE `empleados`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `opciones`
--
ALTER TABLE `opciones`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT de la tabla `operaciones`
--
ALTER TABLE `operaciones`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=6;
--
-- AUTO_INCREMENT de la tabla `parametros`
--
ALTER TABLE `parametros`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `registro_nomina`
--
ALTER TABLE `registro_nomina`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `registro_novedad`
--
ALTER TABLE `registro_novedad`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT de la tabla `roles`
--
ALTER TABLE `roles`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT de la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT,AUTO_INCREMENT=2;
--
-- AUTO_INCREMENT de la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
MODIFY `id` bigint(20) NOT NULL AUTO_INCREMENT;
--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `operaciones`
--
ALTER TABLE `operaciones`
ADD CONSTRAINT `FKEAB8C1C68490B1B` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`);

--
-- Filtros para la tabla `registro_nomina`
--
ALTER TABLE `registro_nomina`
ADD CONSTRAINT `FK475E271C4DF60B3B` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`);

--
-- Filtros para la tabla `registro_novedad`
--
ALTER TABLE `registro_novedad`
ADD CONSTRAINT `FKA4E3994B4DF60B3B` FOREIGN KEY (`empleados_id`) REFERENCES `empleados` (`id`);

--
-- Filtros para la tabla `roles_usuarios`
--
ALTER TABLE `roles_usuarios`
ADD CONSTRAINT `FKC9AC5A47665ECBF9` FOREIGN KEY (`usuario_id`) REFERENCES `usuarios` (`id`),
ADD CONSTRAINT `FKC9AC5A476E4093D9` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`);

--
-- Filtros para la tabla `rol_opcion_operacion`
--
ALTER TABLE `rol_opcion_operacion`
ADD CONSTRAINT `FKD4E68CAF6E4093D9` FOREIGN KEY (`rol_id`) REFERENCES `roles` (`id`),
ADD CONSTRAINT `FKD4E68CAF8490B1B` FOREIGN KEY (`opcion_id`) REFERENCES `opciones` (`id`),
ADD CONSTRAINT `FKD4E68CAFE0B387F9` FOREIGN KEY (`operacion_id`) REFERENCES `operaciones` (`id`);

--
-- Filtros para la tabla `valor_parametros`
--
ALTER TABLE `valor_parametros`
ADD CONSTRAINT `FK831254B56B92075B` FOREIGN KEY (`parametros_id`) REFERENCES `parametros` (`id`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
