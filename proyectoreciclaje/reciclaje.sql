-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Servidor: 127.0.0.1
-- Tiempo de generación: 16-01-2024 a las 17:17:38
-- Versión del servidor: 10.4.28-MariaDB
-- Versión de PHP: 8.2.4

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Base de datos: `reciclaje`
--

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `posts`
--

CREATE TABLE `posts` (
  `id` int(255) NOT NULL,
  `title` varchar(50) NOT NULL,
  `context` text NOT NULL,
  `date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `posts`
--

INSERT INTO `posts` (`id`, `title`, `context`, `date`) VALUES
(1, 'Benefits about recicling!', 'Recycling offers numerous environmental, economic, and social benefits.\r\nConservation of Resources:\r\nRecycling helps conserve valuable natural resources by reducing the need for extracting, refining, and processing raw materials. This includes materials such as metals, paper, glass, and plastics.\r\nEnergy Savings:\r\nRecycling often requires less energy compared to the production of goods from raw materials. For example, manufacturing products from recycled aluminum consumes significantly less energy than producing aluminum from bauxite ore.\r\nReduction of Greenhouse Gas Emissions:\r\nThe recycling process generally generates fewer greenhouse gas emissions than the production of goods from raw materials. This helps mitigate climate change and reduce the overall carbon footprint.\r\nWaste Reduction:\r\nRecycling helps divert materials from landfills, reducing the amount of waste that needs to be disposed of in environmentally harmful ways. This, in turn, extends the lifespan of landfills and minimizes their environmental impact.\r\nConservation of Energy:\r\nThe extraction, transportation, and processing of raw materials require significant amounts of energy. Recycling helps save energy and reduces the environmental impact associated with these activities.\r\nJob Creation:\r\nThe recycling industry creates jobs in collection, sorting, processing, and manufacturing. As recycling efforts increase, more employment opportunities are generated in these sectors.\r\nEconomic Benefits:\r\nRecycling contributes to the economy by fostering the growth of a recycling industry. It allows for the development of markets for recycled materials and reduces the reliance on imported raw materials.\r\nPreservation of Biodiversity:\r\nBy reducing the demand for raw materials, recycling helps protect ecosystems and biodiversity. The extraction of natural resources often leads to habitat destruction and environmental degradation.\r\nWater Conservation:\r\nThe production of goods from raw materials can be water-intensive. Recycling reduces the need for new raw materials, indirectly conserving water resources.\r\nCommunity Engagement and Education:\r\nRecycling programs often involve community participation and education. They raise awareness about environmental issues and encourage responsible waste management practices.\r\nInnovation and Technology Advancements:\r\nThe recycling industry drives innovation in waste management technologies and encourages the development of more sustainable and eco-friendly practices.\r\nReduced Pollution:\r\nRecycling reduces the amount of waste that may contribute to air, water, and soil pollution. It helps mitigate the negative environmental impacts associated with waste disposal.', '2024-01-09'),
(2, 'Why do we care about colors?', 'Colors play a crucial role in recycling for several reasons, and they are primarily associated with recycling symbols and bins. The standardized use of colors helps in creating a universally recognizable and efficient system for waste segregation.\r\n\r\nColors are essential in recycling for creating a standardized and universally recognizable system that facilitates proper waste segregation, reduces contamination, and promotes environmental awareness. The consistent use of colors contributes to the overall effectiveness of recycling programs at both individual and industrial levels.\r\n\r\nThe following color codes are commonly used in Europe, and they might be applicable in Spain as well:\r\n\r\nBlue: Blue bins or containers are often used for paper and cardboard recycling.\r\n\r\nGreen: Green bins or containers are commonly associated with glass recycling.\r\n\r\nYellow or Orange: Yellow or orange bins are often used for packaging materials like plastic and metal.\r\n\r\nBrown or Gray: Brown or gray bins may be used for organic waste or composting.\r\n\r\nIt\'s crucial to note that the exact colors and materials associated with recycling bins can vary, so it\'s recommended to check with local waste management authorities or refer to any specific guidelines provided by your municipality. Many places also use standardized recycling symbols to accompany the color codes for easy identification.', '2024-01-13'),
(3, 'Test', 'This is a test', '2024-01-04');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `recicled`
--

CREATE TABLE `recicled` (
  `Id` int(3) NOT NULL,
  `recicle` int(255) NOT NULL,
  `date` date NOT NULL,
  `location` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `recicled`
--

INSERT INTO `recicled` (`Id`, `recicle`, `date`, `location`) VALUES
(1, 1, '2024-01-12', 'Prueba'),
(2, 10, '2024-01-20', 'Prueba'),
(3, 10, '2024-01-20', 'Prueba'),
(4, 10, '2024-01-20', 'Prueba'),
(5, 10, '2024-01-20', 'Prueba'),
(6, 10, '2024-01-20', 'Prueba'),
(7, 10, '2024-01-20', 'Prueba'),
(8, 10, '2024-01-20', 'Prueba'),
(9, 10, '2024-01-20', 'Prueba'),
(10, 10, '2024-01-20', 'Prueba'),
(11, 10, '2024-01-20', 'Prueba'),
(12, 10, '2024-01-20', 'Prueba'),
(13, 10, '2024-01-20', 'Prueba'),
(14, 10, '2024-01-20', 'Prueba'),
(15, 10, '2024-01-20', 'Prueba'),
(16, 10, '2024-01-20', 'Prueba'),
(17, 10, '2024-01-20', 'Prueba'),
(18, 5, '2024-01-04', 'Prueba'),
(19, 4, '2024-01-16', 'Almenara');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `users`
--

CREATE TABLE `users` (
  `id` int(3) NOT NULL,
  `first_name` varchar(20) DEFAULT NULL,
  `last_name` varchar(20) DEFAULT NULL,
  `username` varchar(250) DEFAULT NULL,
  `password` varchar(20) DEFAULT NULL,
  `address` varchar(45) DEFAULT NULL,
  `contact` varchar(45) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Volcado de datos para la tabla `users`
--

INSERT INTO `users` (`id`, `first_name`, `last_name`, `username`, `password`, `address`, `contact`) VALUES
(1, 'Albert', 'Beltran', 'Albertito', '123', 'Ejemplo', '123123'),
(2, 'Pedro', 'Piedra', 'Pedrito', '123', 'Ejemplo', '123123'),
(3, 'Prueba', 'Prueba', 'Prueba', '123', 'Prueba', '123'),
(4, 'Prueba2', 'Prueba2', 'Prueba2', '123', 'Prueba2', '123');

-- --------------------------------------------------------

--
-- Estructura de tabla para la tabla `usuarios`
--
-- Error leyendo la estructura de la tabla reciclaje.usuarios: #1932 - Table &#039;reciclaje.usuarios&#039; doesn&#039;t exist in engine
-- Error leyendo datos de la tabla reciclaje.usuarios: #1064 - Algo está equivocado en su sintax cerca &#039;FROM `reciclaje`.`usuarios`&#039; en la linea 1

--
-- Índices para tablas volcadas
--

--
-- Indices de la tabla `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indices de la tabla `recicled`
--
ALTER TABLE `recicled`
  ADD PRIMARY KEY (`Id`);

--
-- Indices de la tabla `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT de las tablas volcadas
--

--
-- AUTO_INCREMENT de la tabla `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT de la tabla `recicled`
--
ALTER TABLE `recicled`
  MODIFY `Id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;

--
-- AUTO_INCREMENT de la tabla `users`
--
ALTER TABLE `users`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
