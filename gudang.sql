-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 24, 2021 at 01:39 PM
-- Server version: 10.4.14-MariaDB
-- PHP Version: 7.4.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `gudang`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `idbarang` int(11) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `satuan` varchar(255) NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`idbarang`, `kode_barang`, `nama_barang`, `satuan`, `stok`) VALUES
(9, 1230, 'qwe', 'kilogram', 10),
(13, 123, 'ejfke', 'kg', 45);

-- --------------------------------------------------------

--
-- Table structure for table `barangkeluar`
--

CREATE TABLE `barangkeluar` (
  `idkeluar` int(11) NOT NULL,
  `nomor_bukti` varchar(255) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `namastaff_toko` varchar(255) NOT NULL,
  `namastaff_gudang` varchar(255) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangkeluar`
--

INSERT INTO `barangkeluar` (`idkeluar`, `nomor_bukti`, `tanggal`, `namastaff_toko`, `namastaff_gudang`, `kode_barang`, `nama_barang`, `qty`) VALUES
(1, '001', '19-01-2021', 'Fadillah', 'Dwi', 1, 'Beras', 24),
(2, '002', '20-01-2021', 'Farida', 'Slamet', 2, 'Indomie', 30),
(3, '003', '21-01-2021', 'Fitri', 'Samira', 3, 'Minyak Goreng', 34);

-- --------------------------------------------------------

--
-- Table structure for table `barangmasuk`
--

CREATE TABLE `barangmasuk` (
  `idmasuk` int(11) NOT NULL,
  `nomor_faktur` varchar(255) NOT NULL,
  `kode_supplier` varchar(20) NOT NULL,
  `tanggal` varchar(30) NOT NULL,
  `nama_penerima` varchar(255) NOT NULL,
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(255) NOT NULL,
  `qty` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `barangmasuk`
--

INSERT INTO `barangmasuk` (`idmasuk`, `nomor_faktur`, `kode_supplier`, `tanggal`, `nama_penerima`, `kode_barang`, `nama_barang`, `qty`) VALUES
(1, '0000012', '111', '19-01-2021', 'Rizki', 1, 'Beras', 24),
(2, '0000013', '112', '20-01-2021', 'Sumarni', 2, 'Indomie', 30);

-- --------------------------------------------------------

--
-- Table structure for table `supplier`
--

CREATE TABLE `supplier` (
  `idsupplier` int(11) NOT NULL,
  `kode_supplier` varchar(30) NOT NULL,
  `nama_supplier` varchar(255) NOT NULL,
  `kontak_person` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `supplier`
--

INSERT INTO `supplier` (`idsupplier`, `kode_supplier`, `nama_supplier`, `kontak_person`, `email`) VALUES
(1, '111', 'Rizki', '08122158885', 'rizki@gmail.com'),
(2, '112', 'Sumarni', '08133423455', 'sumarni@gmail.com');

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `iduser` int(11) NOT NULL,
  `username` varchar(255) NOT NULL,
  `nama_lengkap` varchar(255) NOT NULL,
  `passwd` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`iduser`, `username`, `nama_lengkap`, `passwd`) VALUES
(1, 'admin', 'Admin', '202cb962ac59075b964b07152d234b70');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`idbarang`);

--
-- Indexes for table `barangkeluar`
--
ALTER TABLE `barangkeluar`
  ADD PRIMARY KEY (`idkeluar`),
  ADD UNIQUE KEY `nomor_bukti` (`nomor_bukti`);

--
-- Indexes for table `barangmasuk`
--
ALTER TABLE `barangmasuk`
  ADD PRIMARY KEY (`idmasuk`),
  ADD UNIQUE KEY `nomor_faktur` (`nomor_faktur`);

--
-- Indexes for table `supplier`
--
ALTER TABLE `supplier`
  ADD PRIMARY KEY (`idsupplier`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`iduser`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `idbarang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;

--
-- AUTO_INCREMENT for table `barangkeluar`
--
ALTER TABLE `barangkeluar`
  MODIFY `idkeluar` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `barangmasuk`
--
ALTER TABLE `barangmasuk`
  MODIFY `idmasuk` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `supplier`
--
ALTER TABLE `supplier`
  MODIFY `idsupplier` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `iduser` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
