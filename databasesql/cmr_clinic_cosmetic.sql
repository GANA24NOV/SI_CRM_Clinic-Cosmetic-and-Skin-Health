-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: May 25, 2024 at 02:01 PM
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
-- Database: `cmr_clinic_cosmetic`
--

-- --------------------------------------------------------

--
-- Table structure for table `admin`
--

CREATE TABLE `admin` (
  `ID_ADMIN` varchar(20) NOT NULL,
  `Nama_Lengkap` varchar(20) NOT NULL,
  `Username_Admin` varchar(20) NOT NULL,
  `Password_admin` varchar(20) NOT NULL,
  `No_HP` varchar(15) NOT NULL,
  `Email` varchar(30) NOT NULL,
  `Alamat_admin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `ahli_kecantikan`
--

CREATE TABLE `ahli_kecantikan` (
  `ID_AHLI` varchar(20) NOT NULL,
  `Nama_Lengkap` varchar(25) NOT NULL,
  `Username_ahli` varchar(25) NOT NULL,
  `Password_ahli` varchar(25) NOT NULL,
  `Jenis_Perawatan` varchar(25) NOT NULL,
  `ID_KAMAR` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `data_perawatan`
--

CREATE TABLE `data_perawatan` (
  `Jenis_Perawatan` varchar(20) NOT NULL,
  `Harga_perawatan` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
-- Table structure for table `kamar`
--

CREATE TABLE `kamar` (
  `ID_KAMAR` varchar(20) NOT NULL,
  `ID_AHLI` varchar(20) NOT NULL,
  `Jenis_Perawatan` varchar(25) NOT NULL,
  `Jenis_Kamar` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kosultasi`
--

CREATE TABLE `kosultasi` (
  `ID_KONSULTASI` varchar(20) NOT NULL,
  `Jenis_Perawatan` varchar(25) NOT NULL,
  `Jenis_Produk` varchar(25) NOT NULL,
  `Jenis_Kamar` varchar(20) NOT NULL,
  `ID_PELANGGAN` varchar(20) NOT NULL,
  `ID_AHLI` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `kritik_dan_saran`
--

CREATE TABLE `kritik_dan_saran` (
  `ID_KRITIK` varchar(20) NOT NULL,
  `KRITIK` varchar(255) NOT NULL,
  `SARAN` varchar(255) NOT NULL,
  `ID_ADMIN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `laporan`
--

CREATE TABLE `laporan` (
  `ID_LAPORAN` varchar(20) NOT NULL,
  `ID_ADMIN` varchar(20) NOT NULL,
  `Jenis_Konsultasi` varchar(25) NOT NULL,
  `ID_PRODUKSI` varchar(25) NOT NULL,
  `Jenis_Produksi` varchar(25) NOT NULL,
  `Jenis_Transaksi` varchar(25) NOT NULL,
  `ID_PELANGGAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `merek`
--

CREATE TABLE `merek` (
  `ID_MEREK` varchar(20) NOT NULL,
  `Nama_Merek` varchar(25) NOT NULL,
  `Kategori` varchar(25) NOT NULL,
  `Tahun_Didirikan` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2019_12_14_000001_create_personal_access_tokens_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pelanggan`
--

CREATE TABLE `pelanggan` (
  `ID_PELANGGAN` varchar(20) NOT NULL,
  `ID_ADMIN` varchar(20) NOT NULL,
  `Nama_Pelanggan` varchar(20) NOT NULL,
  `Username_Pelanggan` varchar(20) NOT NULL,
  `Password_Pelanggan` varchar(15) NOT NULL,
  `ID_POIN` varchar(10) NOT NULL,
  `NO_HP` varchar(15) NOT NULL,
  `Email` varchar(20) NOT NULL,
  `Alamat_Pelanggan` varchar(50) NOT NULL,
  `ID_KRITIK` varchar(20) NOT NULL,
  `ID_KONSULTASI` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `pemesanan_produk`
--

CREATE TABLE `pemesanan_produk` (
  `ID_PRODUK` varchar(20) NOT NULL,
  `ID_MEREK` varchar(20) NOT NULL,
  `Nama_Produk` varchar(25) NOT NULL,
  `Jenis_Perawatan` varchar(20) NOT NULL,
  `ID_PELANGGAN` varchar(20) NOT NULL,
  `ID_ADMIN` varchar(20) NOT NULL,
  `ID_TRANSAKSI` varchar(20) NOT NULL,
  `ID_LAPORAN` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

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
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `poin`
--

CREATE TABLE `poin` (
  `ID_POIN` varchar(20) NOT NULL,
  `Jenis_Poin` varchar(20) NOT NULL,
  `Jumlah_Poin` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_TRANSAKSI` varchar(20) NOT NULL,
  `ID_ADMIN` varchar(20) NOT NULL,
  `NAMA_PELANGGAN` varchar(25) NOT NULL,
  `TANGGAL` date NOT NULL,
  `Barang_Transaksi` varchar(25) NOT NULL,
  `Jenis_Transaksi` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indexes for table `admin`
--
ALTER TABLE `admin`
  ADD PRIMARY KEY (`ID_ADMIN`),
  ADD UNIQUE KEY `Username_Admin` (`Username_Admin`);

--
-- Indexes for table `ahli_kecantikan`
--
ALTER TABLE `ahli_kecantikan`
  ADD PRIMARY KEY (`ID_AHLI`),
  ADD KEY `ID_KAMAR` (`ID_KAMAR`),
  ADD KEY `Jenis_Perawatan` (`Jenis_Perawatan`);

--
-- Indexes for table `data_perawatan`
--
ALTER TABLE `data_perawatan`
  ADD PRIMARY KEY (`Jenis_Perawatan`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `kamar`
--
ALTER TABLE `kamar`
  ADD PRIMARY KEY (`ID_KAMAR`),
  ADD KEY `ID_AHLI` (`ID_AHLI`),
  ADD KEY `Jenis_Perawatan` (`Jenis_Perawatan`);

--
-- Indexes for table `kosultasi`
--
ALTER TABLE `kosultasi`
  ADD PRIMARY KEY (`ID_KONSULTASI`),
  ADD KEY `Jenis_Perawatan` (`Jenis_Perawatan`),
  ADD KEY `ID_PELANGGAN` (`ID_PELANGGAN`),
  ADD KEY `ID_AHLI` (`ID_AHLI`);

--
-- Indexes for table `kritik_dan_saran`
--
ALTER TABLE `kritik_dan_saran`
  ADD PRIMARY KEY (`ID_KRITIK`),
  ADD KEY `ID_ADMIN` (`ID_ADMIN`);

--
-- Indexes for table `laporan`
--
ALTER TABLE `laporan`
  ADD PRIMARY KEY (`ID_LAPORAN`),
  ADD KEY `ID_ADMIN` (`ID_ADMIN`),
  ADD KEY `ID_PRODUKSI` (`ID_PRODUKSI`),
  ADD KEY `ID_PELANGGAN` (`ID_PELANGGAN`);

--
-- Indexes for table `merek`
--
ALTER TABLE `merek`
  ADD PRIMARY KEY (`ID_MEREK`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indexes for table `pelanggan`
--
ALTER TABLE `pelanggan`
  ADD PRIMARY KEY (`ID_PELANGGAN`),
  ADD KEY `ID_ADMIN` (`ID_ADMIN`),
  ADD KEY `ID_POIN` (`ID_POIN`),
  ADD KEY `ID_KRITIK` (`ID_KRITIK`),
  ADD KEY `ID_KONSULTASI` (`ID_KONSULTASI`);

--
-- Indexes for table `pemesanan_produk`
--
ALTER TABLE `pemesanan_produk`
  ADD PRIMARY KEY (`ID_PRODUK`),
  ADD KEY `ID_MEREK` (`ID_MEREK`),
  ADD KEY `ID_PELANGGAN` (`ID_PELANGGAN`),
  ADD KEY `ID_ADMIN` (`ID_ADMIN`),
  ADD KEY `ID_TRANSAKSI` (`ID_TRANSAKSI`),
  ADD KEY `ID_LAPORAN` (`ID_LAPORAN`);

--
-- Indexes for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indexes for table `poin`
--
ALTER TABLE `poin`
  ADD PRIMARY KEY (`ID_POIN`);

--
-- Indexes for table `transaksi`
--
ALTER TABLE `transaksi`
  ADD PRIMARY KEY (`ID_TRANSAKSI`),
  ADD KEY `ID_ADMIN` (`ID_ADMIN`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

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
  MODIFY `id` int UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
