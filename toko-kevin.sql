-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Apr 19, 2024 at 03:22 AM
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
-- Database: `toko-kevin`
--

-- --------------------------------------------------------

--
-- Table structure for table `barang`
--

CREATE TABLE `barang` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(50) NOT NULL,
  `kategori` enum('makanan','minuman') NOT NULL,
  `stok` int(10) UNSIGNED NOT NULL,
  `harga_beli` int(10) UNSIGNED NOT NULL,
  `harga_jual` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `kategori`, `stok`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 'bibimbap', 'makanan', 24, 3000, 7000, '2024-03-26 01:57:43', '2024-03-28 13:46:28'),
(2, 'kimbap', 'makanan', 35, 5500, 7500, '2024-03-26 01:58:59', '2024-03-28 13:47:20'),
(3, 'dakgalbi', 'makanan', 15, 5000, 8000, '2024-03-26 02:02:22', '2024-03-26 13:47:30'),
(4, 'tteokbokki', 'makanan', 10, 9000, 13000, '2024-03-26 02:02:22', '2024-03-28 13:55:35'),
(5, 'kimchi', 'makanan', 37, 9000, 12000, '2024-03-26 02:04:09', '2024-03-28 11:19:37'),
(6, 'jajangmyeon', 'makanan', 12, 14000, 17000, '2024-03-26 09:53:40', '2024-03-28 13:49:07'),
(7, 'buchimgae', 'makanan', 15, 15000, 18000, '2024-03-26 09:54:27', '2024-03-28 13:53:49'),
(8, 'naengmyeon', 'makanan', 5, 8000, 11000, '2024-03-26 09:55:19', '2024-03-30 00:29:53'),
(9, 'samgyetang', 'makanan', 36, 15500, 19500, '2024-03-26 09:55:57', '2024-03-28 13:54:54'),
(10, 'bulgogi', 'makanan', 10, 12000, 15000, '2024-03-26 09:56:31', '2024-03-28 13:52:43'),
(11, 'porkkalbi', 'makanan', 32, 12500, 15500, '2024-03-26 09:57:23', '2024-03-28 13:51:54'),
(12, 'takkalbi', 'makanan', 25, 8000, 12000, '2024-03-26 09:58:04', '2024-03-28 13:52:19'),
(13, 'yujatea', 'minuman', 50, 10000, 13000, '2024-03-26 10:00:26', '2024-03-28 13:56:49'),
(14, 'lemontea', 'minuman', 30, 8000, 10000, '2024-03-26 10:02:04', '2024-03-30 00:30:42'),
(15, 'soju', 'minuman', 55, 5000, 3000, '2024-03-26 10:05:43', '2024-03-28 13:56:19'),
(16, 'koreanpeachmocktail', 'minuman', 65, 7000, 15500, '2024-03-26 10:07:49', '2024-03-30 00:29:14'),
(17, 'japgokbap', 'makanan', 15, 12500, 15500, '2024-03-27 09:19:00', '2024-03-28 13:53:16'),
(18, 'bananamilk', 'minuman', 17, 8000, 10000, '2024-03-28 11:34:30', '2024-03-28 14:00:00'),
(19, 'omijatea', 'minuman', 200, 9500, 14500, '2024-03-28 11:56:23', '2024-03-30 00:30:16'),
(20, 'tehkrisan', 'minuman', 28, 15700, 18750, '2024-03-28 12:01:04', NULL),
(21, 'sikhye', 'minuman', 25, 20000, 25000, '2024-03-28 12:29:18', NULL),
(22, 'sujeonggwa', 'minuman', 520, 15000, 26000, '2024-03-28 12:53:33', NULL),
(23, 'cokelat', 'minuman', 25, 15000, 17000, '2024-03-29 07:18:05', NULL),
(26, 'chizutaro', 'minuman', 25, 9500, 13000, '2024-03-29 07:21:53', NULL),
(27, 'estehoriginal', 'minuman', 48, 2000, 5000, '2024-03-29 07:22:41', NULL),
(28, 'thaitea', 'minuman', 16, 3000, 2000, '2024-03-29 07:23:53', NULL),
(29, 'estehsusunusaberry', 'minuman', 459, 2500, 4500, '2024-03-29 07:24:52', NULL),
(30, 'estehredvelvet', 'minuman', 250, 2500, 5750, '2024-03-29 07:25:53', NULL),
(31, 'estehalpuket', 'minuman', 5, 2500, 35500, '2024-03-29 07:26:35', '2024-03-30 00:29:38'),
(32, 'tehocha', 'minuman', 25, 2500, 8500, '2024-03-29 07:27:02', NULL),
(33, 'estehnusantara', 'makanan', 2, 2000, 4000, '2024-03-29 07:39:13', NULL),
(34, 'tongdakgui', 'makanan', 25, 8000, 10000, '2024-03-29 14:09:34', '2024-03-29 14:11:43'),
(35, 'dakgangjeong', 'makanan', 50, 4000, 6000, '2024-03-29 14:11:05', '2024-03-29 14:12:01'),
(36, 'miyeokguk', 'makanan', 25, 4000, 6000, '2024-03-29 14:21:58', NULL),
(37, 'patbingsu', 'makanan', 2000, 3000, 6000, '2024-03-29 14:38:04', NULL),
(38, 'gwapyeon', 'makanan', 23, 4000, 7000, '2024-03-29 14:39:39', NULL),
(39, 'yakgwa', 'makanan', 45, 4000, 8000, '2024-03-29 14:41:56', NULL),
(40, 'dasik', 'makanan', 2, 3000, 6000, '2024-03-29 14:44:10', NULL),
(41, 'jeonggwa', 'makanan', 5, 4000, 7000, '2024-03-29 14:45:55', NULL),
(42, 'jipangiicecream', 'makanan', 3, 2000, 4000, '2024-03-29 14:49:35', NULL),
(43, 'corndog', 'makanan', 12, 9000, 10000, '2024-04-01 11:50:40', NULL),
(44, 'rabokki', 'makanan', 35, 6000, 9000, '2024-04-04 04:21:24', NULL),
(45, 'sundubujigae', 'makanan', 20, 3000, 6000, '2024-04-04 04:25:22', NULL),
(46, 'friedtofu', 'makanan', 20, 10000, 15000, '2024-04-18 03:33:56', NULL),
(47, 'gingercookie', 'makanan', 2, 4000, 6000, '2024-04-18 03:38:48', NULL),
(48, 'fishsoysauce', 'makanan', 4, 10000, 12500, '2024-04-18 03:39:56', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `id` int(10) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `alamat` varchar(255) NOT NULL,
  `nomor_telepon` varchar(279) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pelanggan`
--

INSERT INTO `pelanggan` (`id`, `nama`, `alamat`, `nomor_telepon`, `created_at`, `updated_at`) VALUES
(1, 'gisella', 'jl.pasar baru no 35', '053089723', '2024-04-18 03:03:33', NULL),
(2, 'kevin', 'Jl.Langensari no 42 Bandung ', '082113939199', '2024-04-18 03:03:33', NULL),
(3, 'daren', 'jl.pagarsih no 35', '826896321', '2024-04-18 03:07:45', NULL),
(4, 'rachel', 'jl.bungaceria no 35 ', '08265785831', '2024-04-18 03:07:45', NULL),
(5, 'Christabel_Gisella ', 'jl.bungamawar no 25', '086000563267', '2024-04-18 03:10:37', NULL),
(6, 'denil', 'jl.pagarsih no 35', '0856432186', '2024-04-18 04:30:53', NULL),
(7, 'caleb', 'jl.matsuri no 35', '089765324', '2024-04-18 04:30:53', NULL),
(9, 'cantika', 'jl.kolonel matsuri', '0856789021', '2024-04-18 04:32:16', NULL),
(10, 'alea', 'jl.kolonel no 37', '082567814', '2024-04-18 04:33:01', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `pembelian`
--

CREATE TABLE `pembelian` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_barang` int(10) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `total_harga` int(10) UNSIGNED NOT NULL,
  `id_staff` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `id_barang`, `jumlah`, `total_harga`, `id_staff`, `created_at`, `updated_at`) VALUES
(1, 1, 2, 40000, 2, '2024-03-26 02:04:51', NULL),
(2, 2, 5, 25000, 3, '2024-03-26 02:07:56', NULL),
(3, 4, 2, 14000, 4, '2024-03-26 02:10:45', NULL),
(4, 5, 10, 30000, 1, '2024-03-26 02:13:38', NULL),
(5, 5, 25, 25000, 4, '2024-03-26 02:18:41', NULL),
(6, 1, 8, 7000, 3, '2024-03-26 13:16:21', NULL),
(7, 2, 4, 20000, 4, '2024-03-26 13:16:21', NULL),
(8, 5, 45, 25000, 2, '2024-03-26 13:16:21', NULL),
(9, 4, 20, 4250, 2, '2024-03-26 13:16:21', NULL),
(10, 5, 25, 15000, 1, '2024-03-26 13:18:35', NULL),
(11, 3, 30, 25000, 5, '2024-03-26 13:18:35', NULL),
(12, 10, 10, 30000, 9, '2024-03-26 13:34:23', NULL),
(13, 7, 20, 25500, 8, '2024-03-26 13:34:23', NULL),
(14, 6, 10, 15500, 10, '2024-03-26 13:36:51', NULL),
(15, 10, 35, 35500, 8, '2024-03-26 13:36:51', NULL),
(16, 5, 10, 30000, 9, '2024-03-26 13:37:51', NULL),
(18, 1, 6, 30000, 1, '2024-03-26 13:50:06', NULL),
(20, 10, 2, 25000, 3, '2024-03-27 09:19:35', NULL),
(24, 2, 25, 100000, 1, '2024-03-28 10:51:38', NULL),
(26, 14, 35, 175000, 1, '2024-03-28 11:19:26', NULL),
(27, 5, 7, 63000, 1, '2024-03-28 11:19:37', NULL),
(28, 16, 25, 175000, 1, '2024-03-28 11:20:52', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `penjualan`
--

CREATE TABLE `penjualan` (
  `id` int(10) UNSIGNED NOT NULL,
  `id_barang` int(10) UNSIGNED NOT NULL,
  `jumlah` int(10) UNSIGNED NOT NULL,
  `total_harga` int(10) UNSIGNED NOT NULL,
  `id_staff` int(10) UNSIGNED NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp(),
  `id_pelanggan` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_barang`, `jumlah`, `total_harga`, `id_staff`, `created_at`, `updated_at`, `id_pelanggan`) VALUES
(1, 2, 25, 40000, 5, '2024-03-26 02:22:27', NULL, 2),
(2, 2, 27, 25000, 3, '2024-03-26 02:22:27', NULL, 1),
(3, 4, 35, 20000, 5, '2024-03-26 02:27:42', NULL, 3),
(4, 3, 35, 10000, 2, '2024-03-26 02:27:42', NULL, 3),
(5, 5, 10, 15000, 2, '2024-03-26 02:29:05', NULL, 1),
(6, 1, 2, 4000, 1, '2024-03-26 10:08:30', NULL, 5),
(7, 5, 10, 25000, 1, '2024-03-26 13:42:14', NULL, 7),
(8, 10, 25, 25500, 6, '2024-03-26 13:42:14', NULL, 6),
(9, 7, 20, 20500, 8, '2024-03-26 13:42:14', NULL, 4),
(10, 4, 21, 55100, 3, '2024-03-26 13:42:14', NULL, 7),
(11, 9, 25, 25500, 5, '2024-03-26 13:44:08', NULL, 3),
(12, 1, 27, 27500, 10, '2024-03-26 13:44:08', NULL, 6),
(13, 8, 2, 7850, 2, '2024-03-26 13:45:06', NULL, 10),
(14, 1, 250, 15000, 5, '2024-03-27 09:20:36', NULL, 5),
(15, 7, 25, 30000, 9, '2024-03-27 09:22:28', NULL, 2),
(16, 1, 25, 27500, 5, '2024-03-27 09:22:28', NULL, 3),
(21, 9, 2, 30000, 5, '2024-03-27 09:23:00', NULL, 5),
(22, 5, 20, 240000, 1, '2024-03-28 10:39:39', NULL, 6),
(23, 16, 19, 294500, 1, '2024-03-30 00:29:14', NULL, 4);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','kasir','logistik') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1 COLLATE=latin1_swedish_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'kevin', '$2a$12$iZcHdzNySPO4Ou3gbt8xieIGv6rZ/k3vf7J.Skdm3RHCRSD95RSTO', 'admin', '2024-03-26 01:24:50', NULL),
(2, 'kmw132S', '$2a$12$zv3IjeMajCS1DVa7D1Ppm.eYGXTMflQZTz3KtmASoajHqkLcB9Bp6', '', '2024-03-26 01:29:47', NULL),
(3, 'kmw135', '$2a$12$3j/SCuilVVkxtD2H88lqtO0s5d912Sx.JWPgArcQ1IgNHwVp8EHvS', 'logistik', '2024-03-26 01:31:19', NULL),
(4, 'matthew1301', '$2a$12$VoFHu6hFLR3ngOqjuHAAZ.dqw/4.1LaVHAi5QHI7DS61/QALgEyGe', 'admin', '2024-03-26 01:38:18', NULL),
(5, 'gisella', '$2a$12$DiZ7PLJpm2e2r0U..ZyUAeVODEXuG3Fu8DFYWOd9Ux5LLpMDs5nNW', 'admin', '2024-03-26 01:48:56', NULL),
(6, 'daren', '$2a$12$UqS1LaI8SQQH4bGJo8oWr.t4PbWv67.VeRwigwCN78nE3zmlBi0UO', 'logistik', '2024-03-26 10:25:31', NULL),
(7, 'denil250', '$2a$12$HOEs3qlP0EuOaqT11aNleuz1vdTbyqqxy8ivAnBMtAKC9Nmh3jRF', '', '2024-03-26 13:23:26', NULL),
(8, 'caleb235GR', '$2a$12$ewmiwLPjd3c27d/MN/oFKuuEibOx6LmtYJTuuugF9kArJKFyAJ/mq', 'logistik', '2024-03-26 13:23:26', NULL),
(9, 'alea', '$2a$12$hsH5T8nrvLosnDhCjFQ1duwkA6mw6G.zQ2iFXoNBq8H5CssujRjO.', '', '2024-03-26 13:26:48', NULL),
(10, 'christoperS24', '$2a$12$5di4Ho5JNOYs4PPthAWGeeXzinj3JjgaH1x5YOMof0TQseYrgrS7y', '', '2024-03-26 13:26:48', NULL),
(11, 'matthew130106', '$2a$12$Rk.9vgQ9JzEEs5IAROXn3ei4C62XCNbsoqMDgB9ar1.VcZzsupM2e', '', '2024-03-28 15:43:37', NULL),
(12, 'rachel', '$2a$12$ieCeizt/D8FxzeMJd4AKJOmS4eRUBmtRU4WfcMIA1x/tOEdo67nTe', '', '2024-03-28 15:46:26', NULL),
(13, 'christabel', '$2a$12$EmtyL5ApYWUNX/oeAJI0NOXPUnDmyKWZlS/tT5Cr4fLdCno65d5Te', 'logistik', '2024-03-29 15:46:55', NULL),
(14, 'gisella153', '$2a$12$vgkqZbuVv30CV/8FJdByWe27I8hJtLYZRGMgOA7/DRVjkM5forTTe', '', '2024-03-29 15:46:55', NULL),
(15, 'gisel15', '$2a$12$h/G28HtX.I0gXZwqyIgrd.lVXzGDOdJ1ckEQkGyHht2JzXXox2Rce', 'admin', '2024-03-29 15:48:26', NULL),
(16, 'wesley130106', '$2a$12$FysK0MNjdvdJZ6zG8GJTBuJWXmNUArXB9Dn9GDF.6K1sgtVETAXDG', '', '2024-03-29 15:51:33', NULL),
(17, 'kmw126', '$2a$12$wBOBjNEs1F/YbsVesH.Fae7eV388IMDKx7QQ2kAdFYA74Cs8JjB3G', '', '2024-03-29 15:51:33', NULL),
(18, 'gisel20', '$2a$12$JhV6SFErqs.piyaMrUVOgOHp.n/urNMjn8gIRmDLYorH04wzUY0A.', '', '2024-03-29 15:54:28', NULL),
(19, 'christian', '$2a$12$YoLvaHd9fqmExRJmPolQqeGPhFYaUtaaxYKJ3FaJlviZTR8mVivom', '', '2024-03-29 15:56:19', NULL),
(20, 'kmw13', '$2a$12$LTW2pFqCyrI6K.36QCrk.Ox1MgAgvPDQjD89vqotv21T/VwADVAw6', 'logistik', '2024-03-29 15:58:56', NULL),
(21, 'budi', '$2y$10$kK1H7/EvyhDDE/zJs1HMheEJcmjEgSq5nsVmO8an70StmAb1cnaVG', 'admin', '2024-04-04 03:49:58', NULL),
(22, 'gisella135', '$2a$12$/k7Rz7rEjHnCCDM3tJGnoOwFylYgguTMYPySGYinSu7OJs0tYcnv6', '', '2024-04-16 02:30:56', NULL),
(23, 'paman', '$2a$12$2FxKsHfXPRAuY.WEn0hR0uOij9a0Pa9S9tIWPf.yr5DJWzClISr5q', '', '2024-04-16 09:36:29', NULL),
(24, 'kmw125', '$2a$12$UM3h05IT.xFWFKif4BDcMOz6a78CgWq1WQemOvP38DRKjBLbFRkjy', 'logistik', '2024-04-16 09:40:28', NULL),
(25, 'wesley13', '$2a$12$.WA35LMsQd.XLTd6f.mcYuMzIp.3nkmyWoL5TrkT1QlhUwQdZBen.', '', '2024-04-16 09:43:50', NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `pembelian_ibfk_2` (`id_staff`),
  ADD KEY `pembelian_ibfk_1` (`id_barang`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_staff` (`id_staff`),
  ADD KEY `penjualan_ibfk_1` (`id_barang`),
  ADD KEY `id_pelanggan` (`id_pelanggan`);

--
-- Indexes for table `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `username` (`username`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `barang`
--
ALTER TABLE `barang`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=49;

--
-- AUTO_INCREMENT for table `pelanggan`
--
ALTER TABLE `pelanggan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=34;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=33;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD CONSTRAINT `pembelian_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `pembelian_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `user` (`id`);

--
-- Constraints for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD CONSTRAINT `penjualan_ibfk_1` FOREIGN KEY (`id_barang`) REFERENCES `barang` (`id`),
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `user` (`id`),
  ADD CONSTRAINT `penjualan_ibfk_3` FOREIGN KEY (`id_pelanggan`) REFERENCES `pelanggan` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
