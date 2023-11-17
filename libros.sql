-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 15-09-2018 a las 09:38:55
-- Versión del servidor: 10.4.27-MariaDB
-- Versión de PHP: 8.2.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `libros`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `administrador`
--

CREATE TABLE `administrador` (
  `Id_Administrador` int(11) NOT NULL,
  `Usuario_Administrador` varchar(40) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Contraseña_Administrador` varchar(40) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Nombre_Administrador` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Correo_Administrador` varchar(30) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Rol_Administrador` varchar(20) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `CLIENTES_Administrador` int(11) NOT NULL,
  `HISTORIAL_Administrador` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `clientes`
--

CREATE TABLE `clientes` (
  `Id_Clientes` int(11) NOT NULL,
  `Nombres_Clientes` varchar(35) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Apellido_Clientes` varchar(20) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Documento_Clientes` int(8) NOT NULL,
  `Mail_Clientes` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Telefono_Clientes` int(11) NOT NULL,
  `Direccion_Clientes` varchar(30) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `FecNac_Clientes` date NOT NULL,
  `LIBROS_Clientes` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `historial`
--

CREATE TABLE `historial` (
  `Id_Historial` int(11) NOT NULL,
  `LIBRO_Historial` int(11) NOT NULL,
  `FechaCompra_Historial` date NOT NULL,
  `TotalGastado_Historial` int(10) NOT NULL,
  `CLIENTE_Historial` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `libros`
--

CREATE TABLE `libros` (
  `Id_Libros` int(11) NOT NULL,
  `Titulo_Libro` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Autor_Libro` varchar(50) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Editorial_Libro` varchar(30) NOT NULL,
  `AñoPublicacion_Libro` int(30) NOT NULL,
  `Stock_Libro` varchar(20) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `ISBN_Libro` varchar(40) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Categoria_Libro` varchar(30) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `libros`
--

INSERT INTO `libros` (`Id_Libros`, `Titulo_Libro`, `Autor_Libro`, `Editorial_Libro`, `AñoPublicacion_Libro`, `Stock_Libro`, `ISBN_Libro`, `Categoria_Libro`) VALUES
(1, 'Harry potter y la Piedra Filosofal', 'J. K Rowling', 'Bloomsbury', 1997, '10', 'MRMPD1', 'Fantasia'),
(2, 'Harry potter y la Camara de los Secretos', 'J. K Rowling', 'Bloomsbury', 2002, '10', 'MRMPD2', 'Fantasia');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `pedido`
--

CREATE TABLE `pedido` (
  `Id_Pedido` int(11) NOT NULL,
  `Fecha_Pedido` date NOT NULL,
  `Direccion_Pedido` varchar(30) CHARACTER SET utf32 COLLATE utf32_spanish2_ci NOT NULL,
  `Estado_Pedido` tinyint(1) NOT NULL,
  `CLIENTE_Pedido` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD PRIMARY KEY (`Id_Administrador`),
  ADD KEY `CLIENTES_Administrador` (`CLIENTES_Administrador`),
  ADD KEY `HISTORIAL_Administrador` (`HISTORIAL_Administrador`);

--
-- Indices de la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD PRIMARY KEY (`Id_Clientes`),
  ADD KEY `LIBROS_Clientes` (`LIBROS_Clientes`);

--
-- Indices de la tabla `historial`
--
ALTER TABLE `historial`
  ADD PRIMARY KEY (`Id_Historial`),
  ADD KEY `LIBRO_Historial` (`LIBRO_Historial`),
  ADD KEY `CLIENTE_Historial` (`CLIENTE_Historial`);

--
-- Indices de la tabla `libros`
--
ALTER TABLE `libros`
  ADD PRIMARY KEY (`Id_Libros`);

--
-- Indices de la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD PRIMARY KEY (`Id_Pedido`),
  ADD KEY `CLIENTE_Pedido` (`CLIENTE_Pedido`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `administrador`
--
ALTER TABLE `administrador`
  MODIFY `Id_Administrador` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `clientes`
--
ALTER TABLE `clientes`
  MODIFY `Id_Clientes` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT de la tabla `historial`
--
ALTER TABLE `historial`
  MODIFY `Id_Historial` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT de la tabla `libros`
--
ALTER TABLE `libros`
  MODIFY `Id_Libros` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `pedido`
--
ALTER TABLE `pedido`
  MODIFY `Id_Pedido` int(11) NOT NULL AUTO_INCREMENT;

--
-- Restricciones para tablas volcadas
--

--
-- Filtros para la tabla `administrador`
--
ALTER TABLE `administrador`
  ADD CONSTRAINT `administrador_ibfk_3` FOREIGN KEY (`HISTORIAL_Administrador`) REFERENCES `historial` (`Id_Historial`),
  ADD CONSTRAINT `administrador_ibfk_4` FOREIGN KEY (`CLIENTES_Administrador`) REFERENCES `clientes` (`Id_Clientes`);

--
-- Filtros para la tabla `clientes`
--
ALTER TABLE `clientes`
  ADD CONSTRAINT `clientes_ibfk_2` FOREIGN KEY (`LIBROS_Clientes`) REFERENCES `libros` (`Id_Libros`),
  ADD CONSTRAINT `clientes_ibfk_3` FOREIGN KEY (`PEDIDOS_Clientes`) REFERENCES `pedido` (`Id_Pedido`);

--
-- Filtros para la tabla `historial`
--
ALTER TABLE `historial`
  ADD CONSTRAINT `historial_ibfk_1` FOREIGN KEY (`CLIENTE_Historial`) REFERENCES `clientes` (`Id_Clientes`);

--
-- Filtros para la tabla `pedido`
--
ALTER TABLE `pedido`
  ADD CONSTRAINT `pedido_ibfk_1` FOREIGN KEY (`CLIENTE_Pedido`) REFERENCES `clientes` (`Id_Clientes`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
