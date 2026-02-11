-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Feb 11, 2026 at 10:23 AM
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
-- Database: `db_aspirasi_22`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_aspirasi`
--

CREATE TABLE `tb_aspirasi` (
  `id_aspirasi` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_kategori` int(11) NOT NULL,
  `lokasi` varchar(50) NOT NULL,
  `isi_aspirasi` varchar(150) NOT NULL,
  `status` enum('menunggu','proses','selesai','ditolak') DEFAULT 'menunggu',
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `updated_at` timestamp NOT NULL DEFAULT current_timestamp() ON UPDATE current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_aspirasi`
--

INSERT INTO `tb_aspirasi` (`id_aspirasi`, `id_user`, `id_kategori`, `lokasi`, `isi_aspirasi`, `status`, `created_at`, `updated_at`) VALUES
(2, 3, 1, 'dfsfs', 'sdsadsa', 'menunggu', '2026-02-07 15:39:17', '2026-02-11 09:02:45'),
(3, 3, 1, 'dfsfs', 'kocak\r\n', 'ditolak', '2026-02-09 13:35:33', '2026-02-10 06:28:59'),
(4, 3, 2, 'ruang komputer', 'sdsad', 'ditolak', '2026-02-10 05:50:51', '2026-02-10 06:28:55'),
(5, 3, 2, 'ruang komputer', 'dfsdfsdfd', 'menunggu', '2026-02-10 06:30:06', '2026-02-10 06:30:06'),
(6, 6, 2, 'smk ala  ', 'toren air bocor', 'selesai', '2026-02-10 12:38:44', '2026-02-10 12:39:19'),
(7, 8, 2, 'lapangan', 'karpet sangat bau', 'selesai', '2026-02-10 13:05:55', '2026-02-10 13:06:32'),
(8, 6, 2, 'smk ala  ', 'xx', 'ditolak', '2026-02-10 13:29:44', '2026-02-10 13:31:31'),
(9, 11, 2, 'lapangan', 'pulang', 'selesai', '2026-02-11 02:44:01', '2026-02-11 02:44:28'),
(10, 11, 2, 'lapangan', 'xxx', 'proses', '2026-02-11 03:17:04', '2026-02-11 09:01:52'),
(11, 11, 1, 'lab', 'ada yang kentut', 'proses', '2026-02-11 03:18:23', '2026-02-11 03:18:53'),
(12, 11, 2, 'lapangan', 'kk', 'selesai', '2026-02-11 04:13:32', '2026-02-11 08:26:36'),
(13, 11, 2, 'lapangan', 'bjbb', 'selesai', '2026-02-11 04:50:10', '2026-02-11 08:19:28'),
(14, 6, 2, 'lab', 'yfyfs', 'selesai', '2026-02-11 06:57:31', '2026-02-11 08:16:57'),
(15, 11, 2, 'smk ala  ', 'cccsc', 'proses', '2026-02-11 08:21:26', '2026-02-11 09:01:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_feedback`
--

CREATE TABLE `tb_feedback` (
  `id_feedback` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_aspirasi` int(11) NOT NULL,
  `isi_feedback` varchar(150) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp(),
  `is_read` tinyint(1) DEFAULT 0
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_feedback`
--

INSERT INTO `tb_feedback` (`id_feedback`, `id_user`, `id_aspirasi`, `isi_feedback`, `created_at`, `is_read`) VALUES
(1, 11, 10, 'za', '2026-02-11 03:42:00', 0),
(2, 11, 9, 'kuranng puas pak ', '2026-02-11 04:00:03', 0),
(3, 11, 12, 'admin gc min benerin', '2026-02-11 04:17:02', 0),
(4, 1, 12, 'sabarya', '2026-02-11 04:47:59', 0),
(5, 1, 13, 'sabarya', '2026-02-11 04:50:59', 0),
(6, 11, 13, 'sabarya', '2026-02-11 06:26:30', 0),
(7, 1, 13, 'ya', '2026-02-11 06:33:07', 0),
(8, 1, 15, 'sabarya', '2026-02-11 08:59:01', 0),
(9, 11, 15, 'ya', '2026-02-11 08:59:29', 0),
(10, 1, 11, 'bau', '2026-02-11 09:02:07', 0);

-- --------------------------------------------------------

--
-- Table structure for table `tb_kategori`
--

CREATE TABLE `tb_kategori` (
  `id_kategori` int(11) NOT NULL,
  `nama_kategori` varchar(50) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kategori`
--

INSERT INTO `tb_kategori` (`id_kategori`, `nama_kategori`, `created_at`) VALUES
(1, 'sarana', '2026-02-07 14:53:02'),
(2, 'prasarana', '2026-02-07 14:53:12');

-- --------------------------------------------------------

--
-- Table structure for table `tb_kelas`
--

CREATE TABLE `tb_kelas` (
  `id_kelas` int(11) NOT NULL,
  `nama_kelas` varchar(50) NOT NULL,
  `tahun_ajaran` varchar(10) NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_kelas`
--

INSERT INTO `tb_kelas` (`id_kelas`, `nama_kelas`, `tahun_ajaran`, `created_at`) VALUES
(2, 'REKAYASA PERANGKAT LUNAK 2', '2023/2026', '2026-02-07 08:27:14'),
(3, 'REKAYASA PERANGKAT LUNAK 1', '2025/2026', '2026-02-07 08:56:41'),
(4, 'BDPM', '2023/2026', '2026-02-07 09:13:31'),
(5, 'AKL', '2023/2026', '2026-02-10 09:04:46'),
(6, 'OTKP', '2023/2026', '2026-02-10 09:05:02');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `nis` varchar(20) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `email` varchar(50) NOT NULL,
  `password` text NOT NULL,
  `jenis_kelamin` enum('L','P') NOT NULL,
  `id_kelas` int(11) DEFAULT NULL,
  `role` enum('admin','user') NOT NULL,
  `created_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `nis`, `nama`, `email`, `password`, `jenis_kelamin`, `id_kelas`, `role`, `created_at`) VALUES
(1, '1', 'admin', 'admin@gmail.com', '0192023a7bbd73250516f069df18b500', 'L', NULL, 'admin', '2026-02-07 07:53:38'),
(3, '3', 'gagah', 'gagah@gmail.com', '202cb962ac59075b964b07152d234b70', 'L', 2, 'user', '2026-02-07 09:08:32'),
(5, '4', 'fatur', 'fatur@gmail.com', '698d51a19d8a121ce581499d7b701668', 'L', 2, 'user', '2026-02-10 07:24:21'),
(6, '6', 'ridho', 'ridho@gmail.com', '202cb962ac59075b964b07152d234b70', 'L', 2, 'user', '2026-02-10 09:35:45'),
(8, '36', 'raden', 'raden@gmail.com', '202cb962ac59075b964b07152d234b70', 'L', 2, 'user', '2026-02-10 12:35:48'),
(9, '43', 'sahal', 'sahal@gmail.com', '$2y$10$55goXzmVHaozSpx44mZNbejb162IkPyL1hKaev6zOONbtAqq3fKf.', 'L', 2, 'user', '2026-02-10 13:03:38'),
(10, '34', 'onyo', 'onyo@gmail.com', ' ,?b?Y[?K-#Kp', 'L', 2, 'user', '2026-02-11 02:20:44'),
(11, '35', 'rehan', 'rehan@gmail.com', '202cb962ac59075b964b07152d234b70', 'L', 2, 'user', '2026-02-11 02:42:47'),
(12, '4443', 'ojan', 'oja@gmail.com', '202cb962ac59075b964b07152d234b70', '', 2, 'user', '2026-02-11 09:09:52');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_aspirasi`
--
ALTER TABLE `tb_aspirasi`
  ADD PRIMARY KEY (`id_aspirasi`),
  ADD KEY `fk_user_aspirasi` (`id_user`),
  ADD KEY `fk_kategori_aspirasi` (`id_kategori`);

--
-- Indexes for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD PRIMARY KEY (`id_feedback`),
  ADD KEY `fk_user_feedback` (`id_user`),
  ADD KEY `fk_aspirasi_feedback` (`id_aspirasi`);

--
-- Indexes for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  ADD PRIMARY KEY (`id_kategori`);

--
-- Indexes for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  ADD PRIMARY KEY (`id_kelas`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`),
  ADD UNIQUE KEY `nis` (`nis`),
  ADD KEY `fk_kelas` (`id_kelas`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_aspirasi`
--
ALTER TABLE `tb_aspirasi`
  MODIFY `id_aspirasi` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  MODIFY `id_feedback` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tb_kategori`
--
ALTER TABLE `tb_kategori`
  MODIFY `id_kategori` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tb_kelas`
--
ALTER TABLE `tb_kelas`
  MODIFY `id_kelas` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_aspirasi`
--
ALTER TABLE `tb_aspirasi`
  ADD CONSTRAINT `fk_kategori_aspirasi` FOREIGN KEY (`id_kategori`) REFERENCES `tb_kategori` (`id_kategori`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_aspirasi` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `tb_feedback`
--
ALTER TABLE `tb_feedback`
  ADD CONSTRAINT `fk_aspirasi_feedback` FOREIGN KEY (`id_aspirasi`) REFERENCES `tb_aspirasi` (`id_aspirasi`) ON DELETE CASCADE,
  ADD CONSTRAINT `fk_user_feedback` FOREIGN KEY (`id_user`) REFERENCES `tb_user` (`id_user`) ON DELETE CASCADE;

--
-- Constraints for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD CONSTRAINT `fk_kelas` FOREIGN KEY (`id_kelas`) REFERENCES `tb_kelas` (`id_kelas`) ON DELETE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
