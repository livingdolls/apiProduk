-- phpMyAdmin SQL Dump
-- version 5.0.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Apr 01, 2021 at 07:59 AM
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
-- Database: `myProduk`
--

-- --------------------------------------------------------

--
-- Table structure for table `kt_barang`
--

CREATE TABLE `kt_barang` (
  `id_kat` int(11) NOT NULL,
  `nama_kategori` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `kt_barang`
--

INSERT INTO `kt_barang` (`id_kat`, `nama_kategori`) VALUES
(1, 'Peripheral'),
(2, 'Storage');

-- --------------------------------------------------------

--
-- Table structure for table `tb_attr`
--

CREATE TABLE `tb_attr` (
  `id_attr` int(11) NOT NULL,
  `id_produk` int(11) NOT NULL,
  `merk` varchar(255) NOT NULL,
  `warna` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_attr`
--

INSERT INTO `tb_attr` (`id_attr`, `id_produk`, `merk`, `warna`) VALUES
(1, 1, 'Logitech', 'Hitam'),
(2, 2, 'Alcatroz', 'Putih'),
(3, 3, 'Votre', 'Merah'),
(4, 4, 'Armagedon', 'Hitam'),
(5, 11, 'Toshiba', 'Merah'),
(6, 5, 'Sony', 'Hijau'),
(7, 6, 'Votre', 'Hitam'),
(8, 7, 'Votre', 'Biru'),
(9, 8, 'Votre', 'Biru Tua'),
(10, 9, 'KZS', 'Biru'),
(11, 10, 'Dell', 'Merah'),
(12, 12, 'Vgen', 'Hitam'),
(13, 13, 'Seagate', 'Perak'),
(14, 14, 'Vgen', 'Ungu'),
(15, 15, 'Adata', 'Putih'),
(16, 16, 'Sandisk', 'Merah'),
(17, 17, 'WD', 'Perak'),
(18, 18, 'WD', 'Perak'),
(19, 19, 'Seagate', 'Perak'),
(20, 20, 'Pioner', 'Biru');

-- --------------------------------------------------------

--
-- Table structure for table `tb_produk`
--

CREATE TABLE `tb_produk` (
  `id` int(11) NOT NULL,
  `id_barang` int(11) NOT NULL,
  `kat_produk` varchar(255) NOT NULL,
  `nm_barang` varchar(255) NOT NULL,
  `deskripsi` text NOT NULL,
  `berat` varchar(255) NOT NULL,
  `harga` int(11) NOT NULL,
  `qty` int(11) NOT NULL,
  `attribut` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `tb_produk`
--

INSERT INTO `tb_produk` (`id`, `id_barang`, `kat_produk`, `nm_barang`, `deskripsi`, `berat`, `harga`, `qty`, `attribut`) VALUES
(1, 2, 'keyboard', 'Mechanical Keyboard', 'Keyboard Gaming dengan keunggulan material, RGB,Tombol Function, Fitur gaming Khusus', '3 Kg', 200000, 200, 1),
(2, 2, 'Mouse', 'Mouse RGB', 'Mouse dengan pencahayaan lampu RGB', '1 KG', 100000, 100, 2),
(3, 1, 'Mouse', 'Mouse Wifi', 'Mouse dengan tanpa USB, Menggunakan wifi sebagai penyambung', '1 KG', 150000, 150, 3),
(4, 1, 'Monitor', 'Monitor LED', 'Monitor LED dengan keunggulan freesync', '5 KG', 3000000, 10, 4),
(5, 1, 'Headset', 'Sony Bass', 'Headset Sony. Keunggulan di suara bass', '3 KG', 300000, 15, 5),
(6, 1, 'Keyboard', 'Keyboard Votre', 'Keyboard Murah Kantoran', '1 KG', 25000, 50, 6),
(7, 1, 'Mouse', 'Mouse Votre', 'Mouse Murah Kantoran', '1 KG', 25000, 50, 7),
(8, 1, 'Mouse', 'Mouse Robot', 'Mouse dengan banyak tombol functional', '1 KG', 1200000, 50, 8),
(9, 1, 'Headset', 'Headset KZS Stereo', 'Headset KZS dengan suara jernih', '1 KG', 300000, 30, 9),
(10, 1, 'Keyboard', 'Keyboard Dell Origin', 'Keyboard Dell dengan pencahayaan', '2 KG', 70000, 120, 10),
(11, 2, 'Flashdisk', 'Flashdisk Toshiba', 'Flashdisk Toshiba menggunakan USB 3', '0.5 KG', 70000, 120, 11),
(12, 2, 'SSD', 'SSD Vgen', 'SSD Vgen , SSD Murah dengan kecepatan Read/Write tinggi', '1 KG', 350000, 100, 12),
(13, 2, 'Hardisk', 'Seagate Expansion', 'Hardisk Dengan Penyimpanan Besar', '2 KG', 675000, 220, 13),
(14, 2, 'Memori', 'Memori Vgen Class 6', 'Memori yang bisa digunakan di hp', '0.5 KG', 70000, 120, 14),
(15, 2, 'SSD', 'Adata SSD SU650', 'SSD dengan R/W kecepatan tinggi', '1 KG', 330000, 80, 15),
(16, 2, 'Flashdisk', 'Sandisk Cruzer', 'Flashdisk dengan ukuran kecil, flexible dibawa kemana-mana', '0.5 KG', 75000, 50, 16),
(17, 2, 'Hardisk', 'WD My Pasport', 'Hardisk dengan ukuran besar, R/W Lumayan tinggi', '2 KG', 716000, 50, 17),
(18, 2, 'Hardisk', 'Wd My Pasport Pro', 'Hardisk dengan ukuran sangat besar, cocok sebagai penyimpanan data', '2 KG', 1500500, 80, 18),
(19, 2, 'Hardiks', 'Seagate New Plus Slim', 'Hardisk Murah dengan ukuran besar', '1 KG', 725000, 160, 19),
(20, 2, 'SSD', 'SSD Pioner', 'SSD dengan ukuran besar, bisa digunakan untuk penyimanan OS', '1 KG', 600000, 30, 20);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `kt_barang`
--
ALTER TABLE `kt_barang`
  ADD PRIMARY KEY (`id_kat`);

--
-- Indexes for table `tb_attr`
--
ALTER TABLE `tb_attr`
  ADD PRIMARY KEY (`id_attr`);

--
-- Indexes for table `tb_produk`
--
ALTER TABLE `tb_produk`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `kt_barang`
--
ALTER TABLE `kt_barang`
  MODIFY `id_kat` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `tb_attr`
--
ALTER TABLE `tb_attr`
  MODIFY `id_attr` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tb_produk`
--
ALTER TABLE `tb_produk`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
