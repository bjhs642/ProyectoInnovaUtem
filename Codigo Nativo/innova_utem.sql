-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 26-01-2024 a las 13:22:07
-- Versión del servidor: 10.4.32-MariaDB
-- Versión de PHP: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `innova_utem`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `composicion`
--

CREATE TABLE `composicion` (
  `id_composicion` int(11) NOT NULL,
  `id_receta` int(11) DEFAULT NULL,
  `ingredientes` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `composicion`
--

INSERT INTO `composicion` (`id_composicion`, `id_receta`, `ingredientes`) VALUES
(1, 1, 'Agua 59 ML'),
(2, 1, 'Piñas 3 U'),
(3, 1, 'Alginato de sodio 7g'),
(4, 2, 'Glicerol 10ML'),
(5, 2, 'Gelatina 10G'),
(6, 2, 'Planta de ortiga 10G'),
(7, 3, 'Agua 500ML'),
(8, 3, 'Espirulina 2.5G');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `creadores`
--

CREATE TABLE `creadores` (
  `id_creador` int(11) NOT NULL,
  `creador` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `creadores`
--

INSERT INTO `creadores` (`id_creador`, `creador`) VALUES
(1, 'Admin'),
(2, 'Benjamin');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `herramienta`
--

CREATE TABLE `herramienta` (
  `id_herramienta` int(11) NOT NULL,
  `id_receta` int(11) DEFAULT NULL,
  `herramientas` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `herramienta`
--

INSERT INTO `herramienta` (`id_herramienta`, `id_receta`, `herramientas`) VALUES
(1, 1, 'Cocina, Estufa, Olla para cocinar'),
(2, 2, 'Taza medidora, Olla'),
(3, 3, 'Cocina, Estufa');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `imagenes`
--

CREATE TABLE `imagenes` (
  `id_imagen` int(11) NOT NULL,
  `id_receta` int(11) DEFAULT NULL,
  `url_imagen` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `imagenes`
--

INSERT INTO `imagenes` (`id_imagen`, `id_receta`, `url_imagen`) VALUES
(1, 1, '5750a645f520e06cfe0a0de644e12a0d'),
(2, 2, '0378d0bb1ce434dc9cf063c2e22c4b76'),
(3, 3, '0378a645f520e06cfe0a0de644e12a0d');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `preparacion`
--

CREATE TABLE `preparacion` (
  `id_paso` int(11) NOT NULL,
  `id_receta` int(11) DEFAULT NULL,
  `descripcion` text DEFAULT NULL,
  `orden` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `preparacion`
--

INSERT INTO `preparacion` (`id_paso`, `id_receta`, `descripcion`, `orden`) VALUES
(1, 1, 'Triturar y triturar las piñas con un mortero. Si tienes una licuadora resistente que no usas como comida, también puedes probar esta herramienta.', 1),
(2, 1, 'Pon todos los ingredientes en la cacerola y enciende el fuego a fuego alto.', 2),
(3, 1, 'Hervir la mezcla durante 15 minutos.', 3),
(4, 1, 'Espera hasta que la mezcla esté espesa y pegajosa. Luego viértelo en el molde elegido.', 4),
(5, 1, 'Hornea la mezcla en el molde durante 20 minutos a 170 grados centígrados. Retire el material sólo cuando esté frío. Las cantidades de ingredientes utilizadas en esta receta crean una hoja de compuesto de piñas.', 5),
(6, 2, 'Retire las hojas de las plantas de ortiga y colóquelas en el horno a fuego lento para que se sequen.', 1),
(7, 2, 'Poner las hojas secas de ortiga en un molinillo hasta que se forme un polvo fino.', 2),
(8, 2, 'Vierta 100 ml de agua fría en una cacerola.', 3),
(9, 2, 'Disolver la gelatina y el glicerol en el agua fría.', 4),
(10, 3, 'Mezcle agar y espirulina con agua fría. Calienta la mezcla lentamente y agrega bolitas de cera.', 1),
(11, 3, 'Cuando la temperatura alcance los 47 grados centígrados agregue glicerol. Remueve hasta que alcance los 95 grados centígrados y luego retira del fuego.', 2),
(12, 3, 'Viértelo sobre el tapete de silicona según la forma que desees. Secar en el horno a 30 grados centígrados durante 2 a 3 días.', 3);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recetas`
--

CREATE TABLE `recetas` (
  `id_receta` int(11) NOT NULL,
  `nombre_receta` varchar(255) NOT NULL,
  `proceso` text NOT NULL,
  `tiempo_preparacion` varchar(255) NOT NULL,
  `dificultad` int(11) NOT NULL,
  `licencia` varchar(255) NOT NULL,
  `id_usuario` int(11) DEFAULT NULL,
  `origen` varchar(255) NOT NULL,
  `id_creador` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recetas`
--

INSERT INTO `recetas` (`id_receta`, `nombre_receta`, `proceso`, `tiempo_preparacion`, `dificultad`, `licencia`, `id_usuario`, `origen`, `id_creador`) VALUES
(1, 'Compuesto de alginato de sodio', 'El proceso requerido es de moler, cocinar, para luego pasarlo a un horno', '40 minutos', 3, 'CC BY-SA 4.0', NULL, 'Piña del sur de Chile', 1),
(2, 'Compuesto de gelatina', 'Sera Molido luego Al Horno, siguiente Mixto y finalmente Secado Al Aire', '60 minutos', 1, 'CC BY-NC 4.0', NULL, 'Norte de Chile', 2),
(3, 'Agar ', 'cocido y al horno', '30 minutos', 1, 'CC BY-SA 4.0', NULL, 'Centro de Chile', NULL);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `id_usuario` int(11) NOT NULL,
  `nombres` varchar(255) NOT NULL,
  `apellidos` varchar(255) NOT NULL,
  `correo` varchar(255) NOT NULL,
  `contrasena` varchar(255) NOT NULL,
  `token` varchar(40) DEFAULT NULL,
  `privilegios` int(11) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`id_usuario`, `nombres`, `apellidos`, `correo`, `contrasena`, `token`, `privilegios`) VALUES
(1, 'admin', 'admin', 'admin@gmail.com', '$2b$10$6u/5glk6nhmsFhEWO4v4Ue2UABL2cIeNAjkUZE.FUz5u30eqVGJa2', '9f3c10f3b72b9e3db103024b7ea9981573173926', 0);

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `composicion`
--
ALTER TABLE `composicion`
  ADD PRIMARY KEY (`id_composicion`),
  ADD KEY `id_receta` (`id_receta`);

--
-- Indices de la tabla `creadores`
--
ALTER TABLE `creadores`
  ADD PRIMARY KEY (`id_creador`);

--
-- Indices de la tabla `herramienta`
--
ALTER TABLE `herramienta`
  ADD PRIMARY KEY (`id_herramienta`),
  ADD KEY `id_receta` (`id_receta`);

--
-- Indices de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD PRIMARY KEY (`id_imagen`),
  ADD KEY `id_receta` (`id_receta`);

--
-- Indices de la tabla `preparacion`
--
ALTER TABLE `preparacion`
  ADD PRIMARY KEY (`id_paso`),
  ADD KEY `id_receta` (`id_receta`);

--
-- Indices de la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD PRIMARY KEY (`id_receta`),
  ADD KEY `id_creador` (`id_usuario`),
  ADD KEY `id_creador_2` (`id_creador`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`id_usuario`),
  ADD UNIQUE KEY `correo_electronico` (`correo`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `composicion`
--
ALTER TABLE `composicion`
  MODIFY `id_composicion` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `creadores`
--
ALTER TABLE `creadores`
  MODIFY `id_creador` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `herramienta`
--
ALTER TABLE `herramienta`
  MODIFY `id_herramienta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `imagenes`
--
ALTER TABLE `imagenes`
  MODIFY `id_imagen` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `preparacion`
--
ALTER TABLE `preparacion`
  MODIFY `id_paso` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- AUTO_INCREMENT de la tabla `recetas`
--
ALTER TABLE `recetas`
  MODIFY `id_receta` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `id_usuario` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `composicion`
--
ALTER TABLE `composicion`
  ADD CONSTRAINT `composicion_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`);

--
-- Filtros para la tabla `herramienta`
--
ALTER TABLE `herramienta`
  ADD CONSTRAINT `herramienta_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`);

--
-- Filtros para la tabla `imagenes`
--
ALTER TABLE `imagenes`
  ADD CONSTRAINT `imagenes_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`);

--
-- Filtros para la tabla `preparacion`
--
ALTER TABLE `preparacion`
  ADD CONSTRAINT `preparacion_ibfk_1` FOREIGN KEY (`id_receta`) REFERENCES `recetas` (`id_receta`);

--
-- Filtros para la tabla `recetas`
--
ALTER TABLE `recetas`
  ADD CONSTRAINT `recetas_ibfk_1` FOREIGN KEY (`id_usuario`) REFERENCES `usuarios` (`id_usuario`),
  ADD CONSTRAINT `recetas_ibfk_2` FOREIGN KEY (`id_creador`) REFERENCES `creadores` (`id_creador`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
