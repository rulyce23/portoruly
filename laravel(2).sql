-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: May 13, 2024 at 09:25 AM
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
-- Database: `laravel`
--

-- --------------------------------------------------------

--
-- Table structure for table `biodatas`
--

CREATE TABLE `biodatas` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(255) NOT NULL,
  `foto` text NOT NULL,
  `tentang` text NOT NULL,
  `instagram` text NOT NULL,
  `twitter` text NOT NULL,
  `linkedin` text NOT NULL,
  `tgl_lahir` datetime NOT NULL,
  `nik` bigint(17) NOT NULL,
  `alamat` text NOT NULL,
  `no_telp` varchar(14) NOT NULL,
  `status_marital` varchar(255) NOT NULL,
  `hobby` varchar(255) NOT NULL,
  `goldar` varchar(2) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL,
  `email` varchar(155) NOT NULL,
  `website` varchar(155) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `biodatas`
--

INSERT INTO `biodatas` (`id`, `nama`, `foto`, `tentang`, `instagram`, `twitter`, `linkedin`, `tgl_lahir`, `nik`, `alamat`, `no_telp`, `status_marital`, `hobby`, `goldar`, `created_at`, `updated_at`, `email`, `website`) VALUES
(1, 'ruly rizki', 'me.jpg', 'Saya adalah seorang programmer dengan kemampuan yang cukup baik dan juga memiliki banyak pengalaman, teman-teman saya  memanggilku si tangan dewa apapun trouble codingan yang tidak diketahui dapat diketahui secara cepat dan solving dengan cepat seperti pesawat jet kata mereka sebagai teman saya. saya pun sangat senang membaca mengexplorasi berbagai macam keunikan dan juga hal-hal baru mengenai dunia IT', 'https://www.instagram.com/ruperzki23/', 'https://twitter.com/ruperzki23', 'https://id.linkedin.com/in/ruly-rizki-perdana-026a67134', '1996-05-23 10:39:43', 3204082307960001, 'gba 3 blok b1 no.10', '081328306288', 'single', 'main game,ngoding,belajar,baca buku dan suka renang', '0', NULL, NULL, 'rulyce23@gmail.com', 'rulzco.co.id');

-- --------------------------------------------------------

--
-- Table structure for table `cache`
--

CREATE TABLE `cache` (
  `key` varchar(255) NOT NULL,
  `value` mediumtext NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `cache_locks`
--

CREATE TABLE `cache_locks` (
  `key` varchar(255) NOT NULL,
  `owner` varchar(255) NOT NULL,
  `expiration` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `contacts`
--

CREATE TABLE `contacts` (
  `id` int(11) NOT NULL,
  `firstname` varchar(75) NOT NULL,
  `lastname` varchar(75) NOT NULL,
  `emails` varchar(155) NOT NULL,
  `subject` varchar(55) NOT NULL,
  `message` text NOT NULL,
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp(),
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `contacts`
--

INSERT INTO `contacts` (`id`, `firstname`, `lastname`, `emails`, `subject`, `message`, `updated_at`, `created_at`) VALUES
(1, 're', 're', 're@gmail.com', 'test', 'test', '2024-05-13 00:01:27', '2024-05-13 00:01:27'),
(2, 'rul', 'rizki', 'rul@gmail.com', 'test', 'test', '2024-05-13 00:12:02', '2024-05-13 00:12:02'),
(3, 't', 't', 't@gmail.com', 'tere', 'te', '2024-05-13 00:12:44', '2024-05-13 00:12:44'),
(4, 'car', 'car', 'car@gmail.com', 'vsts', 'carloy', '2024-05-13 00:14:37', '2024-05-13 00:14:37'),
(5, 'carte', 'carh', 'carte@gmail.com', 'tester', 'test', '2024-05-13 00:17:02', '2024-05-13 00:17:02'),
(13, 'carteet', 'carhrx', 'carte@gmail.com', 'tester', 'testrw', '2024-05-13 00:19:45', '2024-05-13 00:19:45'),
(14, 'teqgeq', 'tere', 'tere2@gmail.com', 'tereerr', 'rwteq', '2024-05-13 00:21:28', '2024-05-13 00:21:28'),
(15, 're', 'reafda', 'feate@gmail.com', '423tes', 'test353', '2024-05-13 00:25:00', '2024-05-13 00:25:00');

-- --------------------------------------------------------

--
-- Table structure for table `education`
--

CREATE TABLE `education` (
  `id` int(11) NOT NULL,
  `id_biodata` int(11) NOT NULL,
  `pendidikan` varchar(155) NOT NULL,
  `nama_institusi` varchar(155) NOT NULL,
  `jurusan` varchar(155) NOT NULL,
  `deskripsi_jurusan` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `education`
--

INSERT INTO `education` (`id`, `id_biodata`, `pendidikan`, `nama_institusi`, `jurusan`, `deskripsi_jurusan`) VALUES
(1, 1, 'S1 SISTEM INFORMASI', 'STMIK LPKIA BANDUNG', 'SISTEM INFORMASI', 'Saya Sekolah dengan jurusan Sistem Informasi untuk Degree S1nya untuk menguasai sistem informasi yang diterapkan pada sistem aplikasi selama menjadi programmer dan dalam pengembangan perangkat aplikasinya baik aplikasi web ,mobile apps dan juga desktop application'),
(2, 1, 'D3 Teknik Informatika', 'PKN & STMIK LPKIA', 'Teknik Informatika', 'Saya sebelum Meneruskan ke semester selanjutnya di Degree S1 awal mula mulai kuliah saya mengambil jurusan Teknik Informatika dalam mengambil ilmu pendidikan diperkuliahan swasta,mengapa ilmu ini? karena saya sebelumnya sudah hobby dalam mengenal dunia IT apalagi base programming,smknya saya sebelumnya sekolah di SMK Medikacom RPL');

-- --------------------------------------------------------

--
-- Table structure for table `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) NOT NULL,
  `connection` text NOT NULL,
  `queue` text NOT NULL,
  `payload` longtext NOT NULL,
  `exception` longtext NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `jobs`
--

CREATE TABLE `jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `queue` varchar(255) NOT NULL,
  `payload` longtext NOT NULL,
  `attempts` tinyint(3) UNSIGNED NOT NULL,
  `reserved_at` int(10) UNSIGNED DEFAULT NULL,
  `available_at` int(10) UNSIGNED NOT NULL,
  `created_at` int(10) UNSIGNED NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `job_batches`
--

CREATE TABLE `job_batches` (
  `id` varchar(255) NOT NULL,
  `name` varchar(255) NOT NULL,
  `total_jobs` int(11) NOT NULL,
  `pending_jobs` int(11) NOT NULL,
  `failed_jobs` int(11) NOT NULL,
  `failed_job_ids` longtext NOT NULL,
  `options` mediumtext DEFAULT NULL,
  `cancelled_at` int(11) DEFAULT NULL,
  `created_at` int(11) NOT NULL,
  `finished_at` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '0001_01_01_000000_create_users_table', 1),
(2, '0001_01_01_000001_create_cache_table', 1),
(3, '0001_01_01_000002_create_jobs_table', 1),
(4, '2024_05_13_011552_create_biodatas_table', 1),
(5, '2024_05_13_011600_create_skills_table', 1);

-- --------------------------------------------------------

--
-- Table structure for table `password_reset_tokens`
--

CREATE TABLE `password_reset_tokens` (
  `email` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `id` int(11) NOT NULL,
  `id_biodata` int(11) NOT NULL,
  `nama_project` text NOT NULL,
  `foto` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`id`, `id_biodata`, `nama_project`, `foto`) VALUES
(1, 1, 'PT Tolong Nusantara Gemilang', 'kliktolong.png\r\n'),
(2, 1, 'BPJSTK', 'bpjstk.png'),
(3, 1, 'Jurnal Repository LPKIA', 'jurnal.png\r\n'),
(4, 1, 'UI/UX Uji Berkala Sistem Dinas', 'dinas.png');

-- --------------------------------------------------------

--
-- Table structure for table `sessions`
--

CREATE TABLE `sessions` (
  `id` varchar(255) NOT NULL,
  `user_id` bigint(20) UNSIGNED DEFAULT NULL,
  `ip_address` varchar(45) DEFAULT NULL,
  `user_agent` text DEFAULT NULL,
  `payload` longtext NOT NULL,
  `last_activity` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `sessions`
--

INSERT INTO `sessions` (`id`, `user_id`, `ip_address`, `user_agent`, `payload`, `last_activity`) VALUES
('MsN8tNLEoesyIwARKQUzIswGzKKDKcz5f2T5Ec23', NULL, '127.0.0.1', 'Mozilla/5.0 (Windows NT 10.0; Win64; x64; rv:125.0) Gecko/20100101 Firefox/125.0', 'YTozOntzOjY6Il90b2tlbiI7czo0MDoiNk9HT3lOWktkOWZYU3lJa2RDQnBRaDJUMHY2M2xxTlhnOVJ6NVBZdiI7czo5OiJfcHJldmlvdXMiO2E6MTp7czozOiJ1cmwiO3M6MjE6Imh0dHA6Ly8xMjcuMC4wLjE6ODAwMCI7fXM6NjoiX2ZsYXNoIjthOjI6e3M6Mzoib2xkIjthOjA6e31zOjM6Im5ldyI7YTowOnt9fX0=', 1715585101);

-- --------------------------------------------------------

--
-- Table structure for table `skills`
--

CREATE TABLE `skills` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `id_biodata` int(11) NOT NULL,
  `nama_skill` varchar(255) NOT NULL,
  `deskripsi_skill` text NOT NULL,
  `kemahiran_skill` int(11) NOT NULL DEFAULT 0,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data for table `skills`
--

INSERT INTO `skills` (`id`, `id_biodata`, `nama_skill`, `deskripsi_skill`, `kemahiran_skill`, `created_at`, `updated_at`) VALUES
(1, 1, 'Desktop Java,VB,Visual Studio,Delphi', 'Desktop behavior skillset ', 80, NULL, NULL),
(2, 1, 'Customer Service,Customer Care,Customer Relation,Customers Enterprise', 'Customer Attention ', 100, NULL, NULL),
(3, 1, 'Human Relation,Management Team Work,Integrity', 'Public Speaking', 100, NULL, NULL),
(4, 1, 'HTML,CSS,PHP,CI,Laravel,YII', 'Web Developer', 90, NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `email_verified_at` timestamp NULL DEFAULT NULL,
  `password` varchar(255) NOT NULL,
  `remember_token` varchar(100) DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Table structure for table `works`
--

CREATE TABLE `works` (
  `id` int(11) NOT NULL,
  `id_biodata` int(11) NOT NULL,
  `nama_kantor` varchar(155) NOT NULL,
  `jabatan` varchar(155) NOT NULL,
  `tahun_mulai` date NOT NULL,
  `deskripsi_pekerjaan` text NOT NULL,
  `tahun_berakhir` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `works`
--

INSERT INTO `works` (`id`, `id_biodata`, `nama_kantor`, `jabatan`, `tahun_mulai`, `deskripsi_pekerjaan`, `tahun_berakhir`) VALUES
(1, 1, 'PT.Tolong Nusantara Gemilang', 'Junior Entry Web Developer Programmer', '2019-01-21', '        - Maintenance the Official Already Have (Recent Program)\r\n        - Create new functional & design for web Codeigniter\r\n        - Create new material ui/ux and implementing to web recent program\r\n        - Troubleshooting + problem solving API like tracing log in network web element inspection\r\n        - Create annual per month reporting + progress what\'s new', '2020-01-21'),
(2, 1, 'PT Waditra', 'Software Engineer', '2020-03-12', '- Create Dasawisma Web Apps From 0 As New Application Project From Head Manager\r\n- Create Ui/Ux Dasawisma Apps \r\n- Create Functional & Component with Teamwork \r\n- Debugging + Controlling Quality Of Application', '2020-06-18');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `biodatas`
--
ALTER TABLE `biodatas`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `cache`
--
ALTER TABLE `cache`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `cache_locks`
--
ALTER TABLE `cache_locks`
  ADD PRIMARY KEY (`key`);

--
-- Indexes for table `contacts`
--
ALTER TABLE `contacts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `education`
--
ALTER TABLE `education`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indexes for table `jobs`
--
ALTER TABLE `jobs`
  ADD PRIMARY KEY (`id`),
  ADD KEY `jobs_queue_index` (`queue`);

--
-- Indexes for table `job_batches`
--
ALTER TABLE `job_batches`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `password_reset_tokens`
--
ALTER TABLE `password_reset_tokens`
  ADD PRIMARY KEY (`email`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `sessions`
--
ALTER TABLE `sessions`
  ADD PRIMARY KEY (`id`),
  ADD KEY `sessions_user_id_index` (`user_id`),
  ADD KEY `sessions_last_activity_index` (`last_activity`);

--
-- Indexes for table `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `users_email_unique` (`email`);

--
-- Indexes for table `works`
--
ALTER TABLE `works`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `biodatas`
--
ALTER TABLE `biodatas`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `contacts`
--
ALTER TABLE `contacts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `education`
--
ALTER TABLE `education`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `jobs`
--
ALTER TABLE `jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `skills`
--
ALTER TABLE `skills`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `works`
--
ALTER TABLE `works`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
