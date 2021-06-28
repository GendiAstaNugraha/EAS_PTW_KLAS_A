-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 28 Jun 2021 pada 19.54
-- Versi server: 10.4.18-MariaDB
-- Versi PHP: 8.0.3

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `toko`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `kode_barang` int(11) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `harga` int(11) NOT NULL,
  `file` varchar(225) NOT NULL,
  `keterangan` longtext NOT NULL,
  `stok` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`kode_barang`, `nama_barang`, `harga`, `file`, `keterangan`, `stok`) VALUES
(1, 'Agrapana Kemeja Batik Print Adwitiya Lengan Panjang Hitam - Hitam, M', 237300, '1624891943_1.jpg', 'Kondisi: Baru\r\nBerat: 100 Gram\r\nKategori: Kemeja Batik Pria\r\nEtalase: Batik Pria Regular Panjang\r\nAgrapana Baju Batik Kemeja Batik Pria Lengan Panjang Premium Adwitiya\r\nDeskripsi\r\n- Cotton 100%\r\n- Lengan Panjang\r\n- Kantong Depan\r\n- Hidden Front Button\r\n- Regular Fit\r\n- Kerah formal (tulang kerah dipasang)\r\n- Kerah casual (tulang kerah dapat dilepas)\r\n- Model menggunakan size M\r\n- Video Produk adalah Model Slim Fit Lengan Panjang\r\n\r\nKemeja Batik Lengan Panjang\r\nCare Label\r\n- Cuci Terpisah pada cucian pertama\r\n- Dapat dicuci seperti pakaian biasa\r\n- Jangan menggunakan pemutih pakaian\r\n- Jemur secara terbalik terutama untuk bagian kerah', 10),
(124, 'Kemeja Batik Slimfit Pria Lengan Panjang Slim Fit Agrapana Abhitah - Hitam, S', 235950, '1624892550_3.jpg', 'Kondisi: Baru\r\nBerat: 100 Gram\r\nKategori: Kemeja Batik Pria\r\nEtalase: Batik Pria Slimfit Panjang\r\nKemeja Batik Slimfit Pria Lengan Panjang Slim Fit Agrapana Abhitah\r\nDeskripsi\r\n- Premium Cotton 100%\r\n- Lengan Panjang\r\n- Kantong Depan\r\n- Kancing Depan\r\n- Slim Fit\r\n- Kerah formal (tulang kerah dipasang)\r\n- Kerah casual (tulang kerah dapat dilepas)\r\n- Back Yoke motif menyambung\r\n- Jahitan make up, jahitan lengan rantai\r\n- Model menggunakan size L, tinggi model 185 cm\r\n- Video Produk adalah Model Slim Fit Lengan Panjang\r\n\r\nKemeja Batik Lengan Panjang\r\nCare Label\r\n- Dapat dicuci menggunakan mesin cuci\r\n- Jangan menggunakan pemutih pakaian\r\n- Jemur secara terbalik terutama untuk bagian kerah', 5),
(125, 'Kemeja Batik Slimfit Pria Lengan Panjang Slim Fit Agrapana Abhitah -, L', 255950, '1624892665_2.jpg', 'Kondisi: Baru\r\nBerat: 100 Gram\r\nKategori: Kemeja Batik Pria\r\nEtalase: Batik Pria Slimfit Panjang\r\nKemeja Batik Slimfit Pria Lengan Panjang Slim Fit Agrapana Abhitah\r\nDeskripsi\r\n- Premium Cotton 100%\r\n- Lengan Panjang\r\n- Kantong Depan\r\n- Kancing Depan\r\n- Slim Fit\r\n- Kerah formal (tulang kerah dipasang)\r\n- Kerah casual (tulang kerah dapat dilepas)\r\n- Back Yoke motif menyambung\r\n- Jahitan make up, jahitan lengan rantai\r\n- Model menggunakan size L, tinggi model 185 cm\r\n- Video Produk adalah Model Slim Fit Lengan Panjang\r\n\r\nKemeja Batik Lengan Panjang\r\nCare Label\r\n- Dapat dicuci menggunakan mesin cuci\r\n- Jangan menggunakan pemutih pakaian\r\n- Jemur secara terbalik terutama untuk bagian kerah', 15);

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `keranjang`
--

CREATE TABLE `keranjang` (
  `id` int(11) NOT NULL,
  `nama_barang` varchar(225) NOT NULL,
  `harga` int(11) NOT NULL,
  `file` varchar(225) NOT NULL,
  `jumlah` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_000000_create_users_table', 1),
(2, '2014_10_12_100000_create_password_resets_table', 1),
(3, '2019_08_19_000000_create_failed_jobs_table', 1),
(4, '2021_06_28_050751_barang', 1),
(5, '2021_06_28_080426_create_gambars_table', 2);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `remember_token` varchar(100) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `role` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `users`
--

INSERT INTO `users` (`id`, `name`, `email`, `email_verified_at`, `password`, `remember_token`, `role`, `created_at`, `updated_at`) VALUES
(1, 'admin', 'admin@example.com', NULL, '$2y$10$fPGzxqTA/85ZG3wkBV24GOEHPr4ii.WtPBYJH0dclPrB.L48.ElE2', NULL, 'admin', '2021-06-27 22:28:48', '2021-06-27 22:28:48'),
(2, 'gendi', 'gendi@example.com', NULL, '$2y$10$wm5Eow2zGjYeNU0SUPQxt.BmnsH3KlGIF/DUStMQ2rEPiXLCgzUpu', 'hdArBZAIAdfbjQei4LtKrhfdsCVxGY4cvVwEw9p6k7Zcbaq3iRRxDyyUa6fY', 'user', '2021-06-27 22:28:48', '2021-06-27 22:28:48'),
(3, 'asta', 'asta@example.com', NULL, '$2y$10$KoUjoF5xIud4ffPsL44t2OIdwCHqSfcr.ROB5FNwI64FIO7nleDIy', NULL, 'admin', '2021-06-28 06:35:59', '2021-06-28 06:35:59'),
(4, 'nugraha', 'nugraha@example.com', NULL, '$2y$10$Glp3Bfw2xnPgO.gaMQ0rfO.1GU3eH5iqYRAGjPUkqWuXeZxGgj40q', NULL, 'user', '2021-06-28 06:35:59', '2021-06-28 06:35:59'),
(5, 'aditya', 'aditya@example.com', NULL, '$2y$10$VgRak8/fTXyn4IRXb85QhOEXNTOczWAK9IhyN9odgom9zwWXjDeWq', NULL, 'user', '2021-06-28 06:37:13', '2021-06-28 06:37:13');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `barang`
--
ALTER TABLE `barang`
  ADD PRIMARY KEY (`kode_barang`);

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `barang`
--
ALTER TABLE `barang`
  MODIFY `kode_barang` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=126;

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `keranjang`
--
ALTER TABLE `keranjang`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
