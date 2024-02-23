-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 23, 2024 at 05:39 AM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.0.30

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `barang`
--

INSERT INTO `barang` (`id`, `nama`, `kategori`, `stok`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 'mie ayam', 'makanan', 5, 15000, 3000, '2024-02-16 02:35:46', '2024-02-23 01:55:02'),
(2, 'mie', 'makanan', 4, 4000, 2000, '2024-02-16 02:35:46', NULL),
(3, 'thai_tea', 'minuman', 2, 2000, 2000, '2024-02-16 02:40:55', NULL),
(4, 'jus_alpuket', 'minuman', 3, 4000, 2000, '2024-02-16 02:40:55', NULL),
(5, 'makaroni', 'makanan', 3, 4000, 2000, '2024-02-16 02:42:15', NULL);

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
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `pembelian`
--

INSERT INTO `pembelian` (`id`, `id_barang`, `jumlah`, `total_harga`, `id_staff`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 2000, 1, '2024-02-16 02:48:33', NULL),
(2, 4, 3, 2000, 5, '2024-02-16 02:48:33', NULL),
(3, 2, 4, 4000, 5, '2024-02-16 02:52:29', NULL),
(5, 3, 2, 4000, 4, '2024-02-16 02:53:27', NULL),
(6, 1, 2, 30000, 5, '2024-02-23 01:53:40', NULL);

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
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `penjualan`
--

INSERT INTO `penjualan` (`id`, `id_barang`, `jumlah`, `total_harga`, `id_staff`, `created_at`, `updated_at`) VALUES
(1, 5, 3, 2000, 1, '2024-02-16 02:56:47', NULL),
(3, 3, 4, 4000, 5, '2024-02-16 02:58:54', NULL),
(4, 1, 3, 45000, 1, '2024-02-16 02:58:54', NULL),
(5, 4, 2, 4000, 4, '2024-02-16 03:00:26', NULL),
(6, 1, 2, 6000, 1, '2024-02-22 06:38:32', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `user`
--

CREATE TABLE `user` (
  `id` int(11) UNSIGNED NOT NULL,
  `username` varchar(50) NOT NULL,
  `password` varchar(255) NOT NULL,
  `level` enum('admin','keuangan','logistik') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NULL DEFAULT NULL ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `user`
--

INSERT INTO `user` (`id`, `username`, `password`, `level`, `created_at`, `updated_at`) VALUES
(1, 'kevin', '$2y$10$4IHVeuKxEDWzWAQUAlEyJOLl8KQE.4KbDY3Zda8evP9fzkUS/c2sW', 'admin', '2024-02-02 02:06:55', '2024-02-23 04:03:46'),
(3, 'matthew', '$2a$12$pFVJb6Phy66xZofBfrUPyezkWg6pL1A6ITg174zFNREOp5gMNlmPy', 'logistik', '2024-02-02 02:16:01', '2024-02-23 03:27:09'),
(4, 'wesley', '$2a$12$Q9AuP88DAQOhIndDH8E4muy3KkkAu5jOawuxKztA.v9UbU6kWWWDG', 'admin', '2024-02-02 02:18:49', '2024-02-23 03:29:55'),
(5, 'matthew1301', '$2a$12$8IWe5uKCofGpAIMhvw52Duq2PKojmHWuzWumB/mKYEy8Nwt3328hO', 'keuangan', '2024-02-02 02:39:12', '2024-02-02 04:59:50'),
(12, 'kevin1301', '$2y$10$zKXRzMYYRSYUKgA2XabFaOFDVjBR.ziE4ozg4wPx/fAP57qhN1JzS', 'admin', '2024-02-02 04:40:25', '2024-02-16 02:49:53');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `pembelian`
--
ALTER TABLE `pembelian`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_staff` (`id_staff`);

--
-- Indexes for table `penjualan`
--
ALTER TABLE `penjualan`
  ADD PRIMARY KEY (`id`),
  ADD KEY `id_barang` (`id_barang`),
  ADD KEY `id_staff` (`id_staff`);

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
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `pembelian`
--
ALTER TABLE `pembelian`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `penjualan`
--
ALTER TABLE `penjualan`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `user`
--
ALTER TABLE `user`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

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
  ADD CONSTRAINT `penjualan_ibfk_2` FOREIGN KEY (`id_staff`) REFERENCES `user` (`id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
