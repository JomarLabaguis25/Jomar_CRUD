-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 22, 2023 at 01:30 PM
-- Server version: 8.0.30
-- PHP Version: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `jomar`
--

-- --------------------------------------------------------

--
-- Table structure for table `table_category`
--

CREATE TABLE `table_category` (
  `id` int NOT NULL,
  `ProductCategory` varchar(50) COLLATE utf8mb4_general_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_category`
--

INSERT INTO `table_category` (`id`, `ProductCategory`) VALUES
(8, 'cosmetics'),
(1, 'digital'),
(4, 'Electronics'),
(3, 'furniture'),
(2, 'grocerry'),
(6, 'pets products'),
(5, 'sports products');

-- --------------------------------------------------------

--
-- Table structure for table `table_product`
--

CREATE TABLE `table_product` (
  `ProductName` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ProductDescription` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ProductCategory` varchar(50) COLLATE utf8mb4_general_ci NOT NULL,
  `ProductQuantity` int NOT NULL,
  `ProductPrice` float NOT NULL,
  `id` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `table_product`
--

INSERT INTO `table_product` (`ProductName`, `ProductDescription`, `ProductCategory`, `ProductQuantity`, `ProductPrice`, `id`) VALUES
('laptop', 'nice', 'digital', 2, 202000, 2),
('sardines', 'spicy', 'grocerry', 4, 26, 3),
('make up', 'safe and good', 'cosmetics', 3, 290, 5),
('wash sugar', 'sweet', 'grocerry', 6, 24, 6),
('cabinet', 'made in narra', 'furniture', 2, 2000, 7),
('table', 'good quality', 'furniture', 10, 400, 8),
('smartphone', 'good quality', 'digital', 2, 60000, 9),
('liptint', 'safe and good', 'cosmetics', 32, 50, 10);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `table_category`
--
ALTER TABLE `table_category`
  ADD PRIMARY KEY (`id`),
  ADD KEY `idx_ProductCategory` (`ProductCategory`);

--
-- Indexes for table `table_product`
--
ALTER TABLE `table_product`
  ADD PRIMARY KEY (`id`),
  ADD KEY `fk_product_category` (`ProductCategory`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `table_category`
--
ALTER TABLE `table_category`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- AUTO_INCREMENT for table `table_product`
--
ALTER TABLE `table_product`
  MODIFY `id` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `table_product`
--
ALTER TABLE `table_product`
  ADD CONSTRAINT `fk_product_category` FOREIGN KEY (`ProductCategory`) REFERENCES `table_category` (`ProductCategory`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
