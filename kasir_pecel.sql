-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jun 07, 2022 at 09:01 AM
-- Server version: 10.1.38-MariaDB
-- PHP Version: 7.3.2

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `kasir_pecel`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `Kode_Barang` varchar(10) NOT NULL,
  `Nama_Barang` text NOT NULL,
  `Stok` int(11) NOT NULL,
  `Satuan` text NOT NULL,
  `Harga` int(11) NOT NULL,
  `modal_awal` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`Kode_Barang`, `Nama_Barang`, `Stok`, `Satuan`, `Harga`, `modal_awal`) VALUES
('NS01', 'Nasi Putih', 48, '1 Porsi Piring', 5000, 72000),
('NU01', 'Nasi Uduk', 16, '1 Porsi Piring', 6000, 27000),
('PA01', 'Pecel Ayam', 16, '1 Potong Ayam Negri + Sambel + Lalapan', 12000, 80000),
('PL01', 'Pecel Lele', 16, '1 Ekor Lele Lokal Segar + Lalapan + Sambal', 12000, 55000),
('ST01', 'Soto Spesial', 40, '1 Porsi Mangkok Soto dengan Topping Ayam, Kikil, atau Babat', 13000, 150000),
('TP01', 'Ati Ampela', 8, '1 Tusuk Besar', 4000, 16000),
('TP02', 'Sate Usus', 24, '1 Tusuk Besar', 2000, 16000),
('TP03', 'Telur Puyuh', 14, '3 Telur per Tusuk', 2000, 20000),
('TP04', 'Ceker Ayam', 18, '3 Ceker per Tusuk', 2000, 13000),
('TP05', 'Kepala Ayam', 12, '1 Kepala Ayam', 2000, 10000),
('TP06', 'Pecel Terong', 10, '1 Buah Terong', 2000, 8000),
('TP07', 'Kerupuk', 20, '1 Bungkus Kecil', 1000, 12000),
('TP08', 'Tahu', 30, '1 Tahu Kuning', 1000, 18000),
('TP09', 'Tempe', 30, '1 Tempe', 1000, 15000),
('ZM10', 'Teh Manis', 12, '1 Gelas Besar', 5000, 15000),
('ZM20', 'Kopi ABC', 10, '1 Gelas', 4000, 12000);

-- --------------------------------------------------------

--
-- Table structure for table `detail_barang`
--

CREATE TABLE `detail_barang` (
  `id` int(11) NOT NULL,
  `Kode_Detail` varchar(10) NOT NULL,
  `Kode_Barang` varchar(10) NOT NULL,
  `Harga` int(11) NOT NULL,
  `Jumlah` int(11) NOT NULL,
  `Discount` int(11) NOT NULL,
  `Subtotal` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `login`
--

CREATE TABLE `login` (
  `id` int(11) NOT NULL,
  `Username` varchar(10) NOT NULL,
  `Password` varchar(10) NOT NULL,
  `Nama_Lengkap` varchar(100) NOT NULL,
  `level` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `login`
--

INSERT INTO `login` (`id`, `Username`, `Password`, `Nama_Lengkap`, `level`) VALUES
(1, 'dhimaz123', '123', 'Dhimaz ', 'Owner'),
(3, 'rizal', '123', 'rizalhanafi', 'Karyawan Kasir');

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `Kode_Transaksi` varchar(10) NOT NULL,
  `Kode_Detail` varchar(10) NOT NULL,
  `Tanggal` date NOT NULL,
  `Jam` time NOT NULL,
  `Total` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`Kode_Barang`);

--
-- Indexes for table `detail_barang`
--
ALTER TABLE `detail_barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `login`
--
ALTER TABLE `login`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`Kode_Transaksi`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `detail_barang`
--
ALTER TABLE `detail_barang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `login`
--
ALTER TABLE `login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
