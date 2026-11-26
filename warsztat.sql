-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3307
-- Generation Time: Nov 26, 2026 at 06:42 PM
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
-- Database: `warsztat`
--

-- --------------------------------------------------------

--
-- Table structure for table `klienci`
--

CREATE TABLE `klienci` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `imie` varchar(50) NOT NULL,
  `nazwisko` varchar(50) NOT NULL,
  `telefon` varchar(15) NOT NULL,
  `miasto` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `klienci`
--

INSERT INTO `klienci` (`id`, `imie`, `nazwisko`, `telefon`, `miasto`) VALUES
(1, 'Jan', 'Kowalski', '501234567', 'Legnica'),
(2, 'Anna', 'Nowak', '602345678', 'Wrocław'),
(3, 'Piotr', 'Wiśniewski', '512987654', 'Jawor'),
(4, 'Marek', 'Wójcik', '789456123', 'Bolesławiec'),
(5, 'Katarzyna', 'Kowalczyk', '666111222', 'Lubin');

-- --------------------------------------------------------

--
-- Table structure for table `naprawy`
--

CREATE TABLE `naprawy` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `klient_id` int(11) DEFAULT NULL,
  `samochod` varchar(100) NOT NULL,
  `opis_usterki` text NOT NULL,
  `data_przyjecia` date NOT NULL,
  `koszt` decimal(8,2) DEFAULT NULL,
  `czy_ukonczona` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `naprawy`
--

INSERT INTO `naprawy` (`id`, `klient_id`, `samochod`, `opis_usterki`, `data_przyjecia`, `koszt`, `czy_ukonczona`) VALUES
(1, 1, 'Citroen C5 2.0 HDi', 'Wymiana rozrządu i pompy wody', '2026-10-12', 1450.00, 1),
(2, 2, 'Volkswagen Golf VII', 'Wymiana klocków i tarcz przód', '2026-10-15', 850.50, 1),
(3, 3, 'BMW E90 320d', 'Regeneracja turbosprężarki', '2026-10-18', 2100.00, 1),
(4, 4, 'Audi A4 B8', 'Wymiana oleju i kompletu filtrów', '2026-10-20', 480.00, 1),
(5, 5, 'Toyota Corolla', 'Serwis i nabicie klimatyzacji', '2026-10-22', 320.00, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `klienci`
--
ALTER TABLE `klienci`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `naprawy`
--
ALTER TABLE `naprawy`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `klienci`
--
ALTER TABLE `klienci`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `naprawy`
--
ALTER TABLE `naprawy`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
