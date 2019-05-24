-- phpMyAdmin SQL Dump
-- version 4.8.4
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 18, 2019 at 01:54 PM
-- Server version: 10.1.37-MariaDB
-- PHP Version: 7.3.0

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `hewankurban`
--

-- --------------------------------------------------------

--
-- Table structure for table `daftar_hewan_kurban`
--

CREATE TABLE `daftar_hewan_kurban` (
  `no` int(11) NOT NULL,
  `pemilik` varchar(255) NOT NULL,
  `jenis_hewan` varchar(255) NOT NULL,
  `quantity` int(11) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `kontak` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftar_hewan_kurban`
--

INSERT INTO `daftar_hewan_kurban` (`no`, `pemilik`, `jenis_hewan`, `quantity`, `alamat`, `kontak`) VALUES
(6, 'Nisvy Syabana Nugraha', 'Sapi Limosin Super', 150, 'Bandung', '081321379362'),
(7, 'Zahratussita', 'Sapi', 100, '  Bandung', '082999000113'),
(8, 'Penny', 'Kerbau', 50, 'Ciamis', '089000999222'),
(9, 'Triana', 'Unta', 20, 'Cianjur', '082999000111');

-- --------------------------------------------------------

--
-- Table structure for table `petugas`
--

CREATE TABLE `petugas` (
  `no` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `password` varchar(255) NOT NULL,
  `nama` varchar(255) NOT NULL,
  `jenis_kelamin` varchar(255) NOT NULL,
  `kontak` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `daftar_hewan_kurban`
--
ALTER TABLE `daftar_hewan_kurban`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `pemilik` (`pemilik`);

--
-- Indexes for table `petugas`
--
ALTER TABLE `petugas`
  ADD PRIMARY KEY (`no`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `daftar_hewan_kurban`
--
ALTER TABLE `daftar_hewan_kurban`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT for table `petugas`
--
ALTER TABLE `petugas`
  MODIFY `no` int(11) NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
