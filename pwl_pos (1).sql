-- phpMyAdmin SQL Dump
-- version 5.2.0
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Sep 25, 2024 at 06:39 AM
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
-- Database: `pwl_pos`
--

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT CURRENT_TIMESTAMP
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_reset_tokens_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2024_09_11_041536_create_m_level_table', 1),
(5, '2024_09_11_042911_create_m_kategoris_table', 1),
(6, '2024_09_11_043001_create_m_suppliers_table', 1),
(7, '2024_09_11_045503_create_m_user_table', 1),
(8, '2024_09_11_050150_create_m_barang_table', 1),
(9, '2024_09_11_052945_create_t_penjualan_table', 1),
(10, '2024_09_11_053830_create_t_stok_table', 1),
(11, '2024_09_11_054720_create_t_penjualan_detail_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `m_barangs`
--

CREATE TABLE `m_barangs` (
  `barang_id` bigint UNSIGNED NOT NULL,
  `kategori_id` bigint UNSIGNED NOT NULL,
  `barang_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `barang_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `harga_beli` int NOT NULL,
  `harga_jual` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_barangs`
--

INSERT INTO `m_barangs` (`barang_id`, `kategori_id`, `barang_kode`, `barang_nama`, `harga_beli`, `harga_jual`, `created_at`, `updated_at`) VALUES
(1, 1, 'BR001', 'Mesin V8', 5000000, 5500000, NULL, NULL),
(2, 2, 'BR002', 'Knalpot Racing', 1000000, 1200000, NULL, NULL),
(3, 3, 'BR003', 'Aki Kering', 800000, 850000, NULL, NULL),
(4, 4, 'BR004', 'Velg Racing 18 Inch', 3000000, 3500000, NULL, NULL),
(5, 5, 'BR005', 'Shockbreaker Racing', 2500000, 2700000, NULL, NULL),
(6, 1, 'BR006', 'Mesin Inline-4', 4000000, 4500000, NULL, NULL),
(7, 2, 'BR007', 'Jok Kulit Premium', 1500000, 1750000, NULL, NULL),
(8, 3, 'BR008', 'Alternator 12V', 950000, 1100000, NULL, NULL),
(9, 4, 'BR009', 'Ban Tubeless 17 Inch', 1200000, 1400000, NULL, NULL),
(10, 5, 'BR010', 'Stabilizer Bar', 2000000, 2200000, NULL, NULL),
(11, 1, 'BR011', 'Mesin Boxer', 6000000, 6500000, NULL, NULL),
(12, 2, 'BR012', 'Lampu LED Headlight', 750000, 900000, NULL, NULL),
(13, 3, 'BR013', 'Kabel Busi Racing', 450000, 500000, NULL, NULL),
(14, 4, 'BR014', 'Velg Chrome 20 Inch', 4000000, 4500000, NULL, NULL),
(15, 5, 'BR015', 'Coilover Suspension', 3000000, 3200000, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_kategoris`
--

CREATE TABLE `m_kategoris` (
  `kategori_id` bigint UNSIGNED NOT NULL,
  `kategori_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kategori_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_kategoris`
--

INSERT INTO `m_kategoris` (`kategori_id`, `kategori_kode`, `kategori_nama`, `created_at`, `updated_at`) VALUES
(1, 'KT001', 'Mesin', NULL, NULL),
(2, 'KT002', 'Aksesoris', NULL, NULL),
(3, 'KT003', 'Kelistrikan', NULL, NULL),
(4, 'KT004', 'Ban dan Velg', NULL, NULL),
(5, 'KT005', 'Sistem Suspensi', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_level`
--

CREATE TABLE `m_level` (
  `level_id` bigint UNSIGNED NOT NULL,
  `level_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `level_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_level`
--

INSERT INTO `m_level` (`level_id`, `level_kode`, `level_nama`, `created_at`, `updated_at`) VALUES
(1, 'ADM', 'Administrator', NULL, NULL),
(2, 'MNG', 'Manager', NULL, NULL),
(3, 'STF', 'Staff/Kasir', NULL, NULL),
(4, 'CUS', 'Customer', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_suppliers`
--

CREATE TABLE `m_suppliers` (
  `supplier_id` bigint UNSIGNED NOT NULL,
  `supplier_kode` varchar(10) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `supplier_alamat` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_suppliers`
--

INSERT INTO `m_suppliers` (`supplier_id`, `supplier_kode`, `supplier_nama`, `supplier_alamat`, `created_at`, `updated_at`) VALUES
(1, 'SP001', 'PT Otomotif Sejahtera', 'Blitar, Indonesia', NULL, NULL),
(2, 'SP002', 'CV Motor Prima', 'Kediri, Indonesia', NULL, NULL),
(3, 'SP003', 'PT Sparepart Makmur', 'Surabaya, Indonesia', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `m_user`
--

CREATE TABLE `m_user` (
  `user_id` bigint UNSIGNED NOT NULL,
  `level_id` bigint UNSIGNED NOT NULL,
  `username` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `m_user`
--

INSERT INTO `m_user` (`user_id`, `level_id`, `username`, `nama`, `password`, `created_at`, `updated_at`) VALUES
(1, 1, 'admin', 'Administrator', '$2y$12$fXXR9XxiMIhsQ6CVP94DMOPQLSTynyQld.IsNKig.nvful4ANMHz.', NULL, NULL),
(2, 2, 'manager', 'Manager', '$2y$12$wY9uunrp2DikqQeFOWpubuXbjgd3QomAIfqsjjV.8EpkZfl4geIZu', NULL, NULL),
(3, 3, 'staff', 'Staff/Kasir', '$2y$12$fYxxSE4NqUZQL0XH4S56rul8aNlc0Qf9pn5MG.iRpU9maqvNvxIv6', NULL, NULL),
(9, 4, 'Customer-1', 'Pelanggan Pertama', '$2y$12$f4OZRYq71ki0.3CXAMJrr.zMyZgb51LEcZKEuxjz8Igf2NErZZ3XO', NULL, '2024-09-11 09:45:47'),
(18, 2, 'manager_dua', 'Manager 2', '$2y$12$1I68fwP4W5Lyl00NW7jIzOg/EGq8ABDRIOP6fb0UPm32qFdz29PVS', '2024-09-18 18:08:33', '2024-09-18 18:08:33'),
(22, 2, 'manager22', 'Manager Dua Dua', '$2y$12$l8BS8iyAqwMHjwvSt94k7.Px5Yoo8.bTNSrjYvQ.GK74/LGfzL5aS', '2024-09-20 06:28:27', '2024-09-20 06:28:27'),
(23, 2, 'manager33', 'Manager Tiga Tiga', '$2y$12$2nEcePwkxjmnWtoxjK0w4eKHq7qXj/U6htlyDk7mBdH.3l1kbR14.', '2024-09-20 06:31:17', '2024-09-20 06:31:17'),
(25, 2, 'manager56', 'Manager55', '$2y$12$C5/TeadUvcMmnuo3jDUy8.qLA5J.ydGmeK8.KnkCuK5NiQqd8DyBe', '2024-09-20 06:37:24', '2024-09-20 06:37:24'),
(26, 2, 'manager12', 'Manager11', '$2y$12$kA25fh0YS2Af9Xb6jzLYzufLaWe30fA38M52geaHsP8E4VFd0FtkW', '2024-09-20 06:45:34', '2024-09-20 06:45:34');

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `expires_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualans`
--

CREATE TABLE `t_penjualans` (
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `pembeli` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_kode` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `penjualan_tanggal` datetime NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualans`
--

INSERT INTO `t_penjualans` (`penjualan_id`, `user_id`, `pembeli`, `penjualan_kode`, `penjualan_tanggal`, `created_at`, `updated_at`) VALUES
(1, 1, 'Budi Santoso', 'TRX001', '2024-09-01 09:00:00', NULL, NULL),
(2, 2, 'Andi Wijaya', 'TRX002', '2024-09-01 10:00:00', NULL, NULL),
(3, 3, 'Siti Aminah', 'TRX003', '2024-09-01 11:00:00', NULL, NULL),
(4, 1, 'Dewi Lestari', 'TRX004', '2024-09-01 12:00:00', NULL, NULL),
(5, 2, 'Rian Saputra', 'TRX005', '2024-09-01 13:00:00', NULL, NULL),
(6, 3, 'Ratna Dewi', 'TRX006', '2024-09-01 14:00:00', NULL, NULL),
(7, 1, 'Fajar Sidik', 'TRX007', '2024-09-01 15:00:00', NULL, NULL),
(8, 2, 'Zahra Putri', 'TRX008', '2024-09-01 16:00:00', NULL, NULL),
(9, 3, 'Agus Hermawan', 'TRX009', '2024-09-01 17:00:00', NULL, NULL),
(10, 1, 'Winda Sari', 'TRX010', '2024-09-01 18:00:00', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_penjualan_details`
--

CREATE TABLE `t_penjualan_details` (
  `detail_id` bigint UNSIGNED NOT NULL,
  `penjualan_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `harga` int NOT NULL,
  `jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_penjualan_details`
--

INSERT INTO `t_penjualan_details` (`detail_id`, `penjualan_id`, `barang_id`, `harga`, `jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 500000, 1, NULL, NULL),
(2, 1, 2, 100000, 2, NULL, NULL),
(3, 1, 3, 200000, 1, NULL, NULL),
(4, 2, 4, 300000, 1, NULL, NULL),
(5, 2, 5, 150000, 1, NULL, NULL),
(6, 2, 6, 250000, 1, NULL, NULL),
(7, 3, 7, 600000, 1, NULL, NULL),
(8, 3, 8, 700000, 2, NULL, NULL),
(9, 3, 9, 800000, 1, NULL, NULL),
(10, 4, 10, 900000, 1, NULL, NULL),
(11, 4, 11, 1000000, 1, NULL, NULL),
(12, 4, 12, 1100000, 1, NULL, NULL),
(13, 5, 13, 1200000, 1, NULL, NULL),
(14, 5, 14, 1300000, 2, NULL, NULL),
(15, 5, 15, 1400000, 1, NULL, NULL),
(16, 6, 1, 500000, 1, NULL, NULL),
(17, 6, 2, 100000, 2, NULL, NULL),
(18, 6, 3, 200000, 1, NULL, NULL),
(19, 7, 4, 300000, 1, NULL, NULL),
(20, 7, 5, 150000, 1, NULL, NULL),
(21, 7, 6, 250000, 2, NULL, NULL),
(22, 8, 7, 600000, 1, NULL, NULL),
(23, 8, 8, 700000, 2, NULL, NULL),
(24, 8, 9, 800000, 1, NULL, NULL),
(25, 9, 10, 900000, 1, NULL, NULL),
(26, 9, 11, 1000000, 1, NULL, NULL),
(27, 9, 12, 1100000, 1, NULL, NULL),
(28, 10, 13, 1200000, 1, NULL, NULL),
(29, 10, 14, 1300000, 2, NULL, NULL),
(30, 10, 15, 1400000, 1, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `t_stoks`
--

CREATE TABLE `t_stoks` (
  `stok_id` bigint UNSIGNED NOT NULL,
  `barang_id` bigint UNSIGNED NOT NULL,
  `user_id` bigint UNSIGNED NOT NULL,
  `supplier_id` bigint UNSIGNED NOT NULL,
  `stok_tanggal` datetime NOT NULL,
  `stok_jumlah` int NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `t_stoks`
--

INSERT INTO `t_stoks` (`stok_id`, `barang_id`, `user_id`, `supplier_id`, `stok_tanggal`, `stok_jumlah`, `created_at`, `updated_at`) VALUES
(1, 1, 1, 1, '2024-09-01 08:00:00', 50, NULL, NULL),
(2, 2, 1, 1, '2024-09-01 08:00:00', 40, NULL, NULL),
(3, 3, 1, 1, '2024-09-01 08:00:00', 60, NULL, NULL),
(4, 4, 2, 2, '2024-09-01 08:00:00', 70, NULL, NULL),
(5, 5, 2, 2, '2024-09-01 08:00:00', 30, NULL, NULL),
(6, 6, 2, 2, '2024-09-01 08:00:00', 20, NULL, NULL),
(7, 7, 3, 3, '2024-09-01 08:00:00', 25, NULL, NULL),
(8, 8, 3, 3, '2024-09-01 08:00:00', 35, NULL, NULL),
(9, 9, 3, 3, '2024-09-01 08:00:00', 45, NULL, NULL),
(10, 10, 1, 1, '2024-09-01 08:00:00', 60, NULL, NULL),
(11, 11, 1, 1, '2024-09-01 08:00:00', 55, NULL, NULL),
(12, 12, 2, 2, '2024-09-01 08:00:00', 70, NULL, NULL),
(13, 13, 3, 3, '2024-09-01 08:00:00', 80, NULL, NULL),
(14, 14, 3, 3, '2024-09-01 08:00:00', 45, NULL, NULL),
(15, 15, 1, 1, '2024-09-01 08:00:00', 50, NULL, NULL);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `m_barangs`
--
ALTER TABLE `m_barangs`
  ADD PRIMARY KEY (`barang_id`),
  ADD KEY `m_barangs_kategori_id_foreign` (`kategori_id`);

--
-- Indexes for table `m_kategoris`
--
ALTER TABLE `m_kategoris`
  ADD PRIMARY KEY (`kategori_id`);

--
-- Indexes for table `m_level`
--
ALTER TABLE `m_level`
  ADD PRIMARY KEY (`level_id`),
  ADD UNIQUE KEY `m_level_level_kode_unique` (`level_kode`);

--
-- Indexes for table `m_suppliers`
--
ALTER TABLE `m_suppliers`
  ADD PRIMARY KEY (`supplier_id`);

--
-- Indexes for table `m_user`
--
ALTER TABLE `m_user`
  ADD PRIMARY KEY (`user_id`),
  ADD UNIQUE KEY `m_user_username_unique` (`username`),
  ADD KEY `m_user_level_id_index` (`level_id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `t_penjualans`
--
ALTER TABLE `t_penjualans`
  ADD PRIMARY KEY (`penjualan_id`),
  ADD KEY `t_penjualans_user_id_foreign` (`user_id`);

--
-- Indexes for table `t_penjualan_details`
--
ALTER TABLE `t_penjualan_details`
  ADD PRIMARY KEY (`detail_id`),
  ADD KEY `t_penjualan_details_barang_id_foreign` (`barang_id`),
  ADD KEY `t_penjualan_details_penjualan_id_foreign` (`penjualan_id`);

--
-- Indexes for table `t_stoks`
--
ALTER TABLE `t_stoks`
  ADD PRIMARY KEY (`stok_id`),
  ADD KEY `t_stoks_user_id_foreign` (`user_id`),
  ADD KEY `t_stoks_barang_id_foreign` (`barang_id`),
  ADD KEY `t_stoks_supplier_id_foreign` (`supplier_id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `m_barangs`
--
ALTER TABLE `m_barangs`
  MODIFY `barang_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `m_kategoris`
--
ALTER TABLE `m_kategoris`
  MODIFY `kategori_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `m_level`
--
ALTER TABLE `m_level`
  MODIFY `level_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `m_suppliers`
--
ALTER TABLE `m_suppliers`
  MODIFY `supplier_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT for table `m_user`
--
ALTER TABLE `m_user`
  MODIFY `user_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `t_penjualans`
--
ALTER TABLE `t_penjualans`
  MODIFY `penjualan_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `t_penjualan_details`
--
ALTER TABLE `t_penjualan_details`
  MODIFY `detail_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;

--
-- AUTO_INCREMENT for table `t_stoks`
--
ALTER TABLE `t_stoks`
  MODIFY `stok_id` bigint UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `m_barangs`
--
ALTER TABLE `m_barangs`
  ADD CONSTRAINT `m_barangs_kategori_id_foreign` FOREIGN KEY (`kategori_id`) REFERENCES `m_kategoris` (`kategori_id`);

--
-- Constraints for table `m_user`
--
ALTER TABLE `m_user`
  ADD CONSTRAINT `m_user_level_id_foreign` FOREIGN KEY (`level_id`) REFERENCES `m_level` (`level_id`);

--
-- Constraints for table `t_penjualans`
--
ALTER TABLE `t_penjualans`
  ADD CONSTRAINT `t_penjualans_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);

--
-- Constraints for table `t_penjualan_details`
--
ALTER TABLE `t_penjualan_details`
  ADD CONSTRAINT `t_penjualan_details_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barangs` (`barang_id`),
  ADD CONSTRAINT `t_penjualan_details_penjualan_id_foreign` FOREIGN KEY (`penjualan_id`) REFERENCES `t_penjualans` (`penjualan_id`);

--
-- Constraints for table `t_stoks`
--
ALTER TABLE `t_stoks`
  ADD CONSTRAINT `t_stoks_barang_id_foreign` FOREIGN KEY (`barang_id`) REFERENCES `m_barangs` (`barang_id`),
  ADD CONSTRAINT `t_stoks_supplier_id_foreign` FOREIGN KEY (`supplier_id`) REFERENCES `m_suppliers` (`supplier_id`),
  ADD CONSTRAINT `t_stoks_user_id_foreign` FOREIGN KEY (`user_id`) REFERENCES `m_user` (`user_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;