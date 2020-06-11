-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 11-06-2020 a las 22:43:29
-- Versión del servidor: 10.4.8-MariaDB
-- Versión de PHP: 7.3.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `db`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clases`
--

CREATE TABLE `clases` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clave_mtro` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `clave_carrera` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `materias_id` bigint(20) UNSIGNED NOT NULL,
  `dias_id` bigint(20) UNSIGNED NOT NULL,
  `horarios_id` bigint(20) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `clases`
--

INSERT INTO `clases` (`id`, `clave_mtro`, `clave_carrera`, `materias_id`, `dias_id`, `horarios_id`) VALUES
(1, 'SCD1015\r\n', 'Isx', 1, 1, 1),
(2, 'SCH1024\r\n', 'Isx', 2, 1, 2),
(3, 'SCD1016\r\n', 'Isx', 3, 1, 3),
(4, 'DAD1404\r\n', 'Isx', 4, 1, 4),
(5, 'ACD0908\r\n', 'Isx', 5, 1, 5),
(6, 'AEF1052\r\n', 'Isx', 6, 1, 6),
(7, 'ACF0901\r\n', 'Isx', 7, 1, 7),
(8, 'ACF0902\r\n', 'Isx', 8, 1, 8),
(9, 'ACF0904\r\n', 'Isx', 9, 1, 9),
(10, 'ACF0905\r\n', 'Isx', 10, 1, 10),
(11, 'SCA1026\r\n', 'Isx', 11, 1, 11),
(12, 'ACF0901\r\n', 'Isx', 12, 1, 12),
(13, 'SCA1025\r\n', 'Isx', 13, 1, 13),
(14, 'AEA1063\r\n', 'Isx', 14, 1, 14),
(15, 'SCD1018\r\n', 'Isx', 15, 1, 15),
(16, 'AEF1031\r\n', 'Isx', 16, 1, 16),
(17, 'DAB1405\r\n', 'Isx', 17, 1, 17),
(18, 'AED1286\r\n', 'Isx', 18, 1, 18),
(19, 'ACD0908\r\n', 'Isx', 19, 1, 19),
(20, 'ACA0907\r\n', 'Isx', 20, 1, 20),
(21, 'SCD1015\r\n', 'Isx', 21, 1, 21),
(22, 'SCH1024\r\n', 'Isx', 22, 1, 22),
(23, 'SCD1016\r\n', 'Isx', 23, 1, 23),
(24, 'DAD1404\r\n', 'Isx', 24, 1, 24),
(25, 'AEF1052\r\n', 'Isx', 25, 1, 25),
(26, 'ACF0904\r\n', 'Isx', 26, 1, 26),
(27, 'ACF0902\r\n', 'Isx', 27, 1, 27),
(28, 'ACF0903\r\n', 'Isx', 28, 1, 28),
(29, 'ACF0905\r\n', 'Isx', 29, 1, 29),
(30, 'ACF0901\r\n', 'Tix', 30, 2, 30),
(31, 'AEA1063\r\n', 'Tix', 31, 2, 31),
(32, 'TIC1005\r\n', 'Tix', 32, 2, 32),
(33, 'TIC1023\r\n', 'Tix', 33, 2, 33),
(34, 'AEB1055\r\n', 'Tix', 34, 2, 34),
(35, 'TIC1022\r\n', 'Tix', 35, 2, 35);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `cursos`
--

CREATE TABLE `cursos` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `clases_id` bigint(20) UNSIGNED NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `users_id` bigint(20) UNSIGNED DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `cursos`
--

INSERT INTO `cursos` (`id`, `clases_id`, `created_at`, `updated_at`, `users_id`) VALUES
(1, 1, '2020-06-12 01:20:44', '2020-06-12 01:20:44', NULL),
(2, 4, '2020-06-12 01:21:32', '2020-06-12 01:21:32', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `dias`
--

CREATE TABLE `dias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `dia` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `dias`
--

INSERT INTO `dias` (`id`, `dia`) VALUES
(1, 'Lunes'),
(2, 'Martes'),
(3, 'Miercoles'),
(4, 'Jueves'),
(5, 'Viernes');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `horarios`
--

CREATE TABLE `horarios` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `horario` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `aula` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `grupo` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `horarios`
--

INSERT INTO `horarios` (`id`, `horario`, `aula`, `grupo`) VALUES
(1, '07:00-08:40', 'C-C-D4', 'B'),
(2, '07:00-08:40', 'C-C-D5', 'B'),
(3, '07:00-08:40', 'C-C-D6', 'B'),
(4, '07:00-08:40', 'C-C-D7', 'B'),
(5, '07:00-08:40', 'C-C-D8', 'B'),
(6, '07:00-08:40', 'C-C-D9', 'B'),
(7, '07:00-08:40', 'C-C-F5', 'A'),
(8, '07:00-08:40', 'C-C-F6', 'A'),
(9, '07:00-08:40', 'C-C-F7', 'A'),
(10, '07:00-08:40', 'C-C-F8', 'A'),
(11, '07:00-08:40', 'C-C-LC2', 'A'),
(12, '08:45-10:25', 'C-C-D1', 'B'),
(13, '08:45-10:25', 'C-C-D11', 'A'),
(14, '08:45-10:25', 'C-C-D11', 'A'),
(15, '08:45-10:25', 'C-C-D12', 'C'),
(16, '08:45-10:25', 'C-C-D13', 'A'),
(17, '08:45-10:25', 'C-C-D14', 'B'),
(18, '08:45-10:25', 'C-C-D15', 'E'),
(19, '08:45-10:25', 'C-C-D2', 'A'),
(20, '08:45-10:25', 'C-C-D3', 'C'),
(21, '08:45-10:25', 'C-C-D4', 'A'),
(22, '08:45-10:25', 'C-C-D5', 'A'),
(23, '08:45-10:25', 'C-C-D6', 'A'),
(24, '08:45-10:25', 'C-C-D7', 'A'),
(25, '08:45-10:25', 'C-C-D8', 'A'),
(26, '08:45-10:25', 'C-C-D9', 'B'),
(27, '08:45-10:25', 'C-C-F5', 'B'),
(28, '08:45-10:25', 'C-C-F6', 'D'),
(29, '08:45-10:25', 'C-C-F7', 'B'),
(30, '15:50-17:30', 'C-C-D1', 'A'),
(31, '15:50-17:30', 'C-C-D11', 'A'),
(32, '15:50-17:30', 'C-C-D12', 'A'),
(33, '15:50-17:30', 'C-C-D13', 'A'),
(34, '15:50-17:30', 'C-C-D14', 'A'),
(35, '15:50-17:30', 'C-C-D15', 'A'),
(36, '15:50-17:30', 'C-C-D2', 'A'),
(37, '15:50-17:30', 'C-C-D5', 'A'),
(38, '17:35-19:15', 'C-C-D1', 'A'),
(39, '17:35-19:15', 'C-C-D11', 'A'),
(40, '17:35-19:15', 'C-C-D15', 'A'),
(41, '17:35-19:15', 'C-C-LC1', 'A'),
(42, '17:35-19:15', 'C-C-LC3', 'A'),
(43, '17:35-19:15', 'C-C-LC4', 'A'),
(44, '17:35-19:15', 'C-C-SC1', 'A'),
(45, '19:20-21:00', 'C-C-D11', 'A'),
(46, '19:20-21:00', 'C-C-D15', 'A'),
(47, '19:20-21:00', 'C-C-LC1', 'A'),
(48, '07:00-08:40', 'C-C-D4', 'B'),
(49, '07:00-08:40', 'C-C-D5', 'B'),
(50, '07:00-08:40', 'C-C-D6', 'B'),
(51, '07:00-08:40', 'C-C-D7', 'B'),
(52, '07:00-08:40', 'C-C-D8', 'B'),
(53, '07:00-08:40', 'C-C-D9', 'B'),
(54, '07:00-08:40', 'C-C-F5', 'A'),
(55, '07:00-08:40', 'C-C-F6', 'A'),
(56, '07:00-08:40', 'C-C-F7', 'A'),
(57, '07:00-08:40', 'C-C-F8', 'A'),
(58, '07:00-08:40', 'C-C-LC2', 'A'),
(59, '08:45-10:25', 'C-C-D1', 'B'),
(60, '08:45-10:25', 'C-C-D11', 'A'),
(61, '08:45-10:25', 'C-C-D11', 'A'),
(62, '08:45-10:25', 'C-C-D12', 'C'),
(63, '08:45-10:25', 'C-C-D13', 'A'),
(64, '08:45-10:25', 'C-C-D14', 'B'),
(65, '08:45-10:25', 'C-C-D15', 'E'),
(66, '08:45-10:25', 'C-C-D2', 'A'),
(67, '08:45-10:25', 'C-C-D3', 'C'),
(68, '08:45-10:25', 'C-C-D4', 'A'),
(69, '08:45-10:25', 'C-C-D5', 'A'),
(70, '08:45-10:25', 'C-C-D6', 'A'),
(71, '08:45-10:25', 'C-C-D7', 'A'),
(72, '08:45-10:25', 'C-C-D8', 'A'),
(73, '08:45-10:25', 'C-C-D9', 'B'),
(74, '08:45-10:25', 'C-C-F5', 'B'),
(75, '08:45-10:25', 'C-C-F6', 'D'),
(76, '08:45-10:25', 'C-C-F7', 'B'),
(77, '15:50-17:30', 'C-C-D1', 'A'),
(78, '15:50-17:30', 'C-C-D11', 'A'),
(79, '15:50-17:30', 'C-C-D12', 'A'),
(80, '15:50-17:30', 'C-C-D13', 'A'),
(81, '15:50-17:30', 'C-C-D14', 'A'),
(82, '15:50-17:30', 'C-C-D15', 'A'),
(83, '15:50-17:30', 'C-C-D2', 'A'),
(84, '15:50-17:30', 'C-C-D5', 'A'),
(85, '17:35-19:15', 'C-C-D1', 'A'),
(86, '17:35-19:15', 'C-C-D11', 'A'),
(87, '17:35-19:15', 'C-C-D15', 'A'),
(88, '17:35-19:15', 'C-C-LC1', 'A'),
(89, '17:35-19:15', 'C-C-LC3', 'A'),
(90, '17:35-19:15', 'C-C-LC4', 'A'),
(91, '17:35-19:15', 'C-C-LC2', 'A'),
(92, '19:20-21:00', 'C-C-D11', 'A'),
(93, '19:20-21:00', 'C-C-D14', 'A'),
(94, '19:20-21:00', 'C-C-LC1', 'A'),
(95, '07:00-07:50', 'C-C-D4', 'B'),
(96, '07:00-07:50', 'C-C-D6', 'B'),
(97, '07:00-07:50', 'C-C-D7', 'B'),
(98, '07:00-07:50', 'C-C-D8', 'B'),
(99, '07:00-07:50', 'C-C-D9', 'B'),
(100, '07:00-07:50', 'C-C-F5', 'A'),
(101, '07:00-07:50', 'C-C-F6', 'A'),
(102, '07:00-07:50', 'C-C-F7', 'A'),
(103, '07:00-07:50', 'C-C-F8', 'A'),
(104, '08:45-09:35', 'C-C-D1', 'B'),
(105, '08:45-09:35', 'C-C-D12', 'C'),
(106, '08:45-09:35', 'C-C-D13', 'A'),
(107, '08:45-09:35', 'C-C-D14', 'B'),
(108, '08:45-09:35', 'C-C-D15', 'E'),
(109, '08:45-09:35', 'C-C-D2', 'A'),
(110, '08:45-09:35', 'C-C-D4', 'A'),
(111, '08:45-09:35', 'C-C-D6', 'A'),
(112, '08:45-09:35', 'C-C-D7', 'A'),
(113, '08:45-09:35', 'C-C-D8', 'A'),
(114, '08:45-09:35', 'C-C-D9', 'B'),
(115, '08:45-09:35', 'C-C-F5', 'B'),
(116, '08:45-09:35', 'C-C-F6', 'D'),
(117, '08:45-09:35', 'C-C-F7', 'B'),
(118, '16:40-17:30', 'C-C-D1', 'A'),
(119, '16:40-17:30', 'C-C-D14', 'A'),
(120, '16:40-17:30', 'C-C-D2', 'A'),
(121, '16:40-17:30', 'C-C-D5', 'A'),
(122, '18:25-19:15', 'C-C-D1', 'A'),
(123, '18:25-19:15', 'C-C-D11', 'A'),
(124, '18:25-19:15', 'C-C-LC1', 'A'),
(125, '18:25-19:15', 'C-C-LC3', 'A'),
(126, '18:25-19:15', 'C-C-LC4', 'A'),
(127, '18:25-19:15', 'C-C-LC2', 'A'),
(128, '20:10-21:00', 'C-C-D11', 'A'),
(129, '20:10-21:00', 'C-C-D14', 'A'),
(130, '20:10-21:00', 'C-C-LC1', 'A');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `materias`
--

CREATE TABLE `materias` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `materia` text COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `materias`
--

INSERT INTO `materias` (`id`, `materia`) VALUES
(1, 'Lenguaje y Automatas I'),
(2, 'Taller de Administracion'),
(3, 'Lenguaje y Automatas II'),
(4, 'Arquitectura de Aplicaciones Empresariales'),
(5, 'Desarrollo Sustentable'),
(6, 'Probabilidad y Estadistica'),
(7, 'Calculo Diferencial'),
(8, 'Calculo Integral'),
(9, 'Calculo Vectorial'),
(10, 'Ecuaciones Diferenciales'),
(11, 'Taller de Sistemas Operativos'),
(12, 'Calculo Diferencial'),
(13, 'Taller de Base de Datos'),
(14, 'Taller de Base de Datos'),
(15, 'Principios Electricos y Aplicaciones Digitales'),
(16, 'Fundamentos de base de datos'),
(17, 'Desarrollo de Aplicaciones para Dispositivos Movil'),
(18, 'Programacion Orientada  Objetos'),
(19, 'Desarrollo Sustentable'),
(20, 'Taller de etica'),
(21, 'Lenguajes y Automatas I'),
(22, 'Taller de Administracion'),
(23, 'Lenguajes y Automatas II'),
(24, 'Arquitectura de Aplicaciones Empresariales'),
(25, 'Probabilidad y Estadistica'),
(26, 'Calculo Vectorial'),
(27, 'Calculo Integral'),
(28, 'Algebra Lineal'),
(29, 'Ecuaciones Diferenciales'),
(30, 'Calculo Diferencial'),
(31, 'Taller de Base de Datos'),
(32, 'Arquitectura de Computadoras'),
(33, 'Negocios Electronicos II'),
(34, 'Programacion Web'),
(35, 'Negocios Electronicos I'),
(36, 'Calculo Integral'),
(37, 'Desarrollo Sustentable'),
(38, 'Probabilidad y Estadistica'),
(39, 'Fundamentos de base de datos'),
(40, 'Ingenieria del Conocimiento'),
(41, 'Programacion II'),
(42, 'Fundamentos de Redes'),
(43, 'Redes de Computadoras'),
(44, 'Gestion de Servicios VoIP'),
(45, 'Desarrollo de Aplicaciones para Dispositivos Movil'),
(46, 'Fundamentos de Programacion'),
(47, 'Programacion Orientada  Objetos');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2020_06_11_023815_create_materias_table', 1),
(3, '2020_06_11_114257_create_dias_table', 1),
(4, '2020_06_11_114445_create_horarios_table', 1),
(5, '2020_06_11_114505_create_clases_table', 1),
(6, '2020_06_11_114520_create_cursos_table', 1),
(7, '2020_06_11_140020_add_users_id_to_cursos_table', 1);

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `numero_control` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `semestre` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `carrera` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `numero_control`, `name`, `email`, `semestre`, `carrera`, `email_verified_at`, `password`, `remember_token`, `created_at`, `updated_at`) VALUES
(1, '650076653', 'ALAN', 'alan@email.com', '2 semestre', 'isx', NULL, '$2y$10$N4167yam7xiGAeHrMI8YOOb.RpFvFHIgKOEiQrL.HCtLJXV8EXyq2', NULL, '2020-06-12 00:08:36', '2020-06-12 00:08:36');

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `clases`
--
ALTER TABLE `clases`
  ADD PRIMARY KEY (`id`),
  ADD KEY `clases_materias_id_foreign` (`materias_id`),
  ADD KEY `clases_dias_id_foreign` (`dias_id`),
  ADD KEY `clases_horarios_id_foreign` (`horarios_id`);

--
-- Indices de la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `cursos_users_id_unique` (`users_id`),
  ADD KEY `cursos_clases_id_foreign` (`clases_id`);

--
-- Indices de la tabla `dias`
--
ALTER TABLE `dias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `horarios`
--
ALTER TABLE `horarios`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `materias`
--
ALTER TABLE `materias`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_numero_control_unique` (`numero_control`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `clases`
--
ALTER TABLE `clases`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=76;

--
-- AUTO_INCREMENT de la tabla `cursos`
--
ALTER TABLE `cursos`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT de la tabla `dias`
--
ALTER TABLE `dias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT de la tabla `horarios`
--
ALTER TABLE `horarios`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=131;

--
-- AUTO_INCREMENT de la tabla `materias`
--
ALTER TABLE `materias`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT de la tabla `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `clases`
--
ALTER TABLE `clases`
  ADD CONSTRAINT `clases_dias_id_foreign` FOREIGN KEY (`dias_id`) REFERENCES `dias` (`id`),
  ADD CONSTRAINT `clases_horarios_id_foreign` FOREIGN KEY (`horarios_id`) REFERENCES `horarios` (`id`),
  ADD CONSTRAINT `clases_materias_id_foreign` FOREIGN KEY (`materias_id`) REFERENCES `materias` (`id`);

--
-- Filtros para la tabla `cursos`
--
ALTER TABLE `cursos`
  ADD CONSTRAINT `cursos_clases_id_foreign` FOREIGN KEY (`clases_id`) REFERENCES `clases` (`id`),
  ADD CONSTRAINT `cursos_users_id_foreign` FOREIGN KEY (`users_id`) REFERENCES `users` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
