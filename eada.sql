-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 06-11-2024 a las 14:49:57
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
-- Base de datos: `eada`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `respuesta`
--

CREATE TABLE `respuesta` (
  `id_ticket` int(8) NOT NULL,
  `id_desarrollador` int(8) DEFAULT NULL,
  `id_programador` int(8) DEFAULT NULL,
  `titulo` varchar(100) DEFAULT NULL,
  `fecha_asignacion` datetime DEFAULT NULL,
  `fecha_finalizacion` datetime DEFAULT NULL,
  `descripcion` varchar(100) DEFAULT NULL,
  `estado` varchar(100) DEFAULT NULL,
  `comentarios` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `tickets`
--

CREATE TABLE `tickets` (
  `id_ticket` int(8) NOT NULL,
  `id_cliente` int(8) NOT NULL,
  `titulo` varchar(100) NOT NULL,
  `fecha_asignacion` datetime NOT NULL,
  `fecha_finalizacion` datetime NOT NULL,
  `descripcion` varchar(100) NOT NULL,
  `prioridad` enum('baja','media','alta') NOT NULL,
  `estado` enum('abierto','en proceso','finalizado') NOT NULL,
  `descripcion_pedido` varchar(100) NOT NULL,
  `paleta_colores` varchar(100) NOT NULL,
  `descripcion_archivos` text NOT NULL,
  `esquema_diseño` varchar(100) NOT NULL,
  `comentarios_adicionales` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--

CREATE TABLE `usuarios` (
  `Id_usuario` int(8) NOT NULL,
  `Nombre` varchar(50) NOT NULL,
  `Apellido` varchar(50) NOT NULL,
  `Email` varchar(100) NOT NULL,
  `Contraseña` varchar(50) NOT NULL,
  `Telefono` varchar(15) NOT NULL,
  `Fecha_Registro` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `usuarios`
--

INSERT INTO `usuarios` (`Id_usuario`, `Nombre`, `Apellido`, `Email`, `Contraseña`, `Telefono`, `Fecha_Registro`) VALUES
(27, 'aylu', 'almiron', 'pancha@mdigfo.frf', '2', '455454', '2024-11-06 13:29:04'),
(28, 'anyy', 'villalobios', 'sdfgh@wed', '2', '222', '2024-11-06 13:31:46'),
(29, 'daira', 'almiron', 'typoiu@ertyui', '2', '6666', '2024-11-06 13:32:54'),
(30, 'dairaeee', 'cavo', 'ahahaha@ggh.gg', '2', '22222', '2024-11-06 13:39:32');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indices de la tabla `tickets`
--
ALTER TABLE `tickets`
  ADD PRIMARY KEY (`id_ticket`);

--
-- Indices de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  ADD PRIMARY KEY (`Id_usuario`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `respuesta`
--
ALTER TABLE `respuesta`
  MODIFY `id_ticket` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `tickets`
--
ALTER TABLE `tickets`
  MODIFY `id_ticket` int(8) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `usuarios`
--
ALTER TABLE `usuarios`
  MODIFY `Id_usuario` int(8) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
