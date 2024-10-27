-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Oct 22, 2024 at 05:45 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `soa`
--

-- --------------------------------------------------------

--
-- Table structure for table `categories`
--

CREATE TABLE `categories` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `categories`
--

INSERT INTO `categories` (`id`, `name`, `description`) VALUES
(1, 'makanan', 'makanan berupa makanan berat seperti nasi, mie, dan lain sebagainya.'),
(2, 'minuman', 'minuman terdiri dari minuman coffee dan non coffee. selain itu juga ada ada minuman panas dan minuman dingin.'),
(3, 'snack', 'makanan ringan terdiri dari ciki dengan berbagai rasa');

-- --------------------------------------------------------

--
-- Table structure for table `products`
--

CREATE TABLE `products` (
  `id` int(20) NOT NULL,
  `name` varchar(50) NOT NULL,
  `description` text NOT NULL,
  `price` varchar(25) NOT NULL,
  `categori` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `products`
--

INSERT INTO `products` (`id`, `name`, `description`, `price`, `categori`) VALUES
(1, 'nasi goreng seafood', 'nasi goreng ini dimasak bersama dengan campuran seafood di dalamnya berupa udang, cumi, daging kepiting dan seafood lainya.', 'Rp.48.000', 'makanan'),
(2, 'es jeruk', 'es jeruk dibuat dengan perasan jeruk asli yang dipetik dari kebun sendiri. sehingga jeruk yang dipakai jelas jeruk yang masih fresh ', 'Rp.19.000', 'minuman'),
(3, 'kentang goreng', 'kentang goreng dibuat dari kentang pilihan yang kami dapatkan dari kebun sendiri yang kami rawat sepenuh hati', 'Rp.27.000', 'snack');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `categories`
--
ALTER TABLE `categories`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `products`
--
ALTER TABLE `products`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `categories`
--
ALTER TABLE `categories`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `products`
--
ALTER TABLE `products`
  MODIFY `id` int(20) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
