-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 12, 2016 at 05:59 PM
-- Server version: 10.1.8-MariaDB
-- PHP Version: 5.6.14

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `binaperta_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `detailpkbyjeniskelamin`
--

CREATE TABLE `detailpkbyjeniskelamin` (
  `IDDETAILJENISKELAMIN` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `PRIA` int(11) DEFAULT NULL,
  `WANITA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detailpkbyprovinsi`
--

CREATE TABLE `detailpkbyprovinsi` (
  `IDDETAIL` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detailrekapjabatanbyprovinsi`
--

CREATE TABLE `detailrekapjabatanbyprovinsi` (
  `IDDETAILREKAPJABATANBYPROVINSI` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `IDGOLONGAN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `detailrekapjabatanpusat`
--

CREATE TABLE `detailrekapjabatanpusat` (
  `IDDETAILREKAPJABATANPUSAT` int(11) NOT NULL,
  `IDGOLONGAN` int(11) DEFAULT NULL,
  `IDUNITKERJAPUSAT` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `golongankerja`
--

CREATE TABLE `golongankerja` (
  `IDGOLONGAN` int(11) NOT NULL,
  `NAMAGOLONGAN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `items`
--

CREATE TABLE `items` (
  `id` int(10) UNSIGNED NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `description` text COLLATE utf8_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `items`
--

INSERT INTO `items` (`id`, `title`, `description`, `created_at`, `updated_at`) VALUES
(1, 'asu', 'tenan', NULL, NULL),
(3, 'jancok', 'kabeh', NULL, NULL),
(4, 'jancok2', 'kabeh', NULL, NULL),
(7, 'jancok25223456gdg', 'kabeh', NULL, NULL),
(8, 'testing lah', 'oke oke', NULL, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `lokerbyjeniskelamin`
--

CREATE TABLE `lokerbyjeniskelamin` (
  `IDLOKERJK` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `PRIA` int(11) DEFAULT NULL,
  `WANITA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lokerbyprovinsi`
--

CREATE TABLE `lokerbyprovinsi` (
  `IDLOKER` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `lptks`
--

CREATE TABLE `lptks` (
  `IDLPTKS` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `TAHUN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemenuhantkbyjk`
--

CREATE TABLE `pemenuhantkbyjk` (
  `IDPEMENUHANTKBYJK` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `PRIA` int(11) DEFAULT NULL,
  `WANITA` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `pemenuhantkbyprovinsi`
--

CREATE TABLE `pemenuhantkbyprovinsi` (
  `IDPEMENUHAN` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `penempatanakadperbulan`
--

CREATE TABLE `penempatanakadperbulan` (
  `IDPENEMPATANAKADPERBULAN` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `PRIA` int(11) DEFAULT NULL,
  `WANITA` int(11) DEFAULT NULL,
  `BULAN` char(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `posts`
--

CREATE TABLE `posts` (
  `id` int(11) NOT NULL,
  `title` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `content` text COLLATE utf8_unicode_ci NOT NULL,
  `created` datetime NOT NULL,
  `modified` datetime NOT NULL,
  `status` tinyint(1) NOT NULL DEFAULT '1' COMMENT '1=Active, 0=Inactive'
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `posts`
--

INSERT INTO `posts` (`id`, `title`, `content`, `created`, `modified`, `status`) VALUES
(1, 'title1', 'Isi1', '2016-12-07 00:00:00', '2016-12-28 00:00:00', 1),
(2, 'title2', 'isi2', '2016-12-05 00:00:00', '2016-12-08 00:00:00', 1),
(3, 'title3', 'isi3', '2016-12-27 00:00:00', '0000-00-00 00:00:00', 1),
(4, 'toitle4', 'asdf', '2016-12-02 00:00:00', '0000-00-00 00:00:00', 1);

-- --------------------------------------------------------

--
-- Table structure for table `provinsi`
--

CREATE TABLE `provinsi` (
  `IDPROVINSI` int(11) NOT NULL,
  `NAMAPROVINSI` varchar(50) DEFAULT NULL,
  `KETERANGAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `provinsi`
--

INSERT INTO `provinsi` (`IDPROVINSI`, `NAMAPROVINSI`, `KETERANGAN`) VALUES
(1, 'ACEH', NULL),
(2, 'Sumatera Utara', NULL),
(3, 'SUMATERA BARAT', NULL),
(4, 'RIAU', NULL),
(5, 'JAMBI', NULL),
(6, 'SUMATERA SELATAN', NULL);

-- --------------------------------------------------------

--
-- Table structure for table `rekapjabatanfungsionaldaerah`
--

CREATE TABLE `rekapjabatanfungsionaldaerah` (
  `IDREKAPJFD` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `2D` int(11) DEFAULT NULL,
  `3A` int(11) DEFAULT NULL,
  `3B` int(11) DEFAULT NULL,
  `3C` int(11) DEFAULT NULL,
  `3D` int(11) DEFAULT NULL,
  `4A` int(11) DEFAULT NULL,
  `4B` int(11) DEFAULT NULL,
  `4C` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekapjabatanfungsionaldaerah`
--

INSERT INTO `rekapjabatanfungsionaldaerah` (`IDREKAPJFD`, `IDPROVINSI`, `2D`, `3A`, `3B`, `3C`, `3D`, `4A`, `4B`, `4C`, `TOTAL`) VALUES
(1, 1, 0, 0, 4, 4, 3, 0, 0, 0, 11),
(2, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(3, 3, 0, 0, 4, 3, 2, 0, 0, 0, 9),
(4, 4, 0, 0, 1, 0, 0, 0, 0, 0, 1),
(5, 5, 0, 0, 0, 1, 0, 0, 0, 0, 1),
(6, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rekapjabatanfungsionalpusat`
--

CREATE TABLE `rekapjabatanfungsionalpusat` (
  `IDREKAP` int(11) NOT NULL,
  `NAMAPUSAT` varchar(1000) DEFAULT NULL,
  `2D` int(11) DEFAULT NULL,
  `3A` int(11) DEFAULT NULL,
  `3B` int(11) DEFAULT NULL,
  `3C` int(11) DEFAULT NULL,
  `3D` int(11) DEFAULT NULL,
  `4A` int(11) DEFAULT NULL,
  `4B` int(11) DEFAULT NULL,
  `4C` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekapjabatanfungsionalpusat`
--

INSERT INTO `rekapjabatanfungsionalpusat` (`IDREKAP`, `NAMAPUSAT`, `2D`, `3A`, `3B`, `3C`, `3D`, `4A`, `4B`, `4C`, `TOTAL`) VALUES
(7, 'DIREKTORAT PENGENDALIAN PENGGUNAAN TENAGA ASING', 0, 0, 4, 4, 3, 0, 0, 0, 11),
(8, 'DIREKTORAT PENEMPATAN TENAGA KERJA DALAM NEGERI', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 'DIREKTORAT PENEMPATAN DAN PERLINDUNGAN TENAGA KERJA LUAR NEGERI', 0, 0, 4, 3, 2, 0, 0, 0, 9),
(10, 'DIREKTORAT PENGEMBANGAN PASAR KERJA', 0, 0, 1, 0, 0, 0, 0, 0, 1),
(11, 'DIREKTORAT PENGEMBANGAN DAN PERLUASAN KESEMPATAN KERJA', 0, 0, 0, 1, 0, 0, 0, 0, 1),
(12, 'BALAI BESAR PENGEMBANGAN PASAR KERJA DAN PERLUASAN KESEMPATAN KERJA LEMBANG', 0, 0, 0, 0, 0, 0, 0, 0, 0);

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `IDTAHUN` int(11) NOT NULL,
  `TAHUN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `unitkerjapusat`
--

CREATE TABLE `unitkerjapusat` (
  `IDUNITKERJAPUSAT` int(11) NOT NULL,
  `NAMAUNITKERJA` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Table structure for table `user_login`
--

CREATE TABLE `user_login` (
  `id` int(11) NOT NULL,
  `user_name` varchar(255) NOT NULL,
  `user_email` varchar(255) NOT NULL,
  `user_password` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `user_login`
--

INSERT INTO `user_login` (`id`, `user_name`, `user_email`, `user_password`) VALUES
(1, 'admin', 'admin@admin.com', '32250170a0dca92d53ec9624f336ca24');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `detailpkbyjeniskelamin`
--
ALTER TABLE `detailpkbyjeniskelamin`
  ADD PRIMARY KEY (`IDDETAILJENISKELAMIN`),
  ADD KEY `FK_RELATIONSHIP_3` (`IDTAHUN`);

--
-- Indexes for table `detailpkbyprovinsi`
--
ALTER TABLE `detailpkbyprovinsi`
  ADD PRIMARY KEY (`IDDETAIL`),
  ADD KEY `FK_RELATIONSHIP_1` (`IDPROVINSI`),
  ADD KEY `FK_RELATIONSHIP_2` (`IDTAHUN`);

--
-- Indexes for table `detailrekapjabatanbyprovinsi`
--
ALTER TABLE `detailrekapjabatanbyprovinsi`
  ADD PRIMARY KEY (`IDDETAILREKAPJABATANBYPROVINSI`),
  ADD KEY `FK_RELATIONSHIP_13` (`IDPROVINSI`),
  ADD KEY `FK_RELATIONSHIP_14` (`IDGOLONGAN`);

--
-- Indexes for table `detailrekapjabatanpusat`
--
ALTER TABLE `detailrekapjabatanpusat`
  ADD PRIMARY KEY (`IDDETAILREKAPJABATANPUSAT`),
  ADD KEY `FK_RELATIONSHIP_11` (`IDGOLONGAN`),
  ADD KEY `FK_RELATIONSHIP_12` (`IDUNITKERJAPUSAT`);

--
-- Indexes for table `golongankerja`
--
ALTER TABLE `golongankerja`
  ADD PRIMARY KEY (`IDGOLONGAN`);

--
-- Indexes for table `items`
--
ALTER TABLE `items`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `lokerbyjeniskelamin`
--
ALTER TABLE `lokerbyjeniskelamin`
  ADD PRIMARY KEY (`IDLOKERJK`),
  ADD KEY `FK_RELATIONSHIP_7` (`IDTAHUN`);

--
-- Indexes for table `lokerbyprovinsi`
--
ALTER TABLE `lokerbyprovinsi`
  ADD PRIMARY KEY (`IDLOKER`),
  ADD KEY `FK_RELATIONSHIP_4` (`IDPROVINSI`),
  ADD KEY `FK_RELATIONSHIP_5` (`IDTAHUN`);

--
-- Indexes for table `lptks`
--
ALTER TABLE `lptks`
  ADD PRIMARY KEY (`IDLPTKS`),
  ADD KEY `FK_RELATIONSHIP_17` (`IDPROVINSI`);

--
-- Indexes for table `pemenuhantkbyjk`
--
ALTER TABLE `pemenuhantkbyjk`
  ADD PRIMARY KEY (`IDPEMENUHANTKBYJK`),
  ADD KEY `FK_RELATIONSHIP_10` (`IDTAHUN`);

--
-- Indexes for table `pemenuhantkbyprovinsi`
--
ALTER TABLE `pemenuhantkbyprovinsi`
  ADD PRIMARY KEY (`IDPEMENUHAN`),
  ADD KEY `FK_RELATIONSHIP_8` (`IDPROVINSI`),
  ADD KEY `FK_RELATIONSHIP_9` (`IDTAHUN`);

--
-- Indexes for table `penempatanakadperbulan`
--
ALTER TABLE `penempatanakadperbulan`
  ADD PRIMARY KEY (`IDPENEMPATANAKADPERBULAN`),
  ADD KEY `FK_RELATIONSHIP_15` (`IDTAHUN`);

--
-- Indexes for table `posts`
--
ALTER TABLE `posts`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `provinsi`
--
ALTER TABLE `provinsi`
  ADD PRIMARY KEY (`IDPROVINSI`);

--
-- Indexes for table `rekapjabatanfungsionaldaerah`
--
ALTER TABLE `rekapjabatanfungsionaldaerah`
  ADD PRIMARY KEY (`IDREKAPJFD`),
  ADD KEY `FK_RELATIONSHIP_16` (`IDPROVINSI`);

--
-- Indexes for table `rekapjabatanfungsionalpusat`
--
ALTER TABLE `rekapjabatanfungsionalpusat`
  ADD PRIMARY KEY (`IDREKAP`);

--
-- Indexes for table `tahun`
--
ALTER TABLE `tahun`
  ADD PRIMARY KEY (`IDTAHUN`);

--
-- Indexes for table `unitkerjapusat`
--
ALTER TABLE `unitkerjapusat`
  ADD PRIMARY KEY (`IDUNITKERJAPUSAT`);

--
-- Indexes for table `user_login`
--
ALTER TABLE `user_login`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lptks`
--
ALTER TABLE `lptks`
  MODIFY `IDLPTKS` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rekapjabatanfungsionaldaerah`
--
ALTER TABLE `rekapjabatanfungsionaldaerah`
  MODIFY `IDREKAPJFD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rekapjabatanfungsionalpusat`
--
ALTER TABLE `rekapjabatanfungsionalpusat`
  MODIFY `IDREKAP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `detailpkbyjeniskelamin`
--
ALTER TABLE `detailpkbyjeniskelamin`
  ADD CONSTRAINT `FK_RELATIONSHIP_3` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `detailpkbyprovinsi`
--
ALTER TABLE `detailpkbyprovinsi`
  ADD CONSTRAINT `FK_RELATIONSHIP_1` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`),
  ADD CONSTRAINT `FK_RELATIONSHIP_2` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `detailrekapjabatanbyprovinsi`
--
ALTER TABLE `detailrekapjabatanbyprovinsi`
  ADD CONSTRAINT `FK_RELATIONSHIP_13` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`),
  ADD CONSTRAINT `FK_RELATIONSHIP_14` FOREIGN KEY (`IDGOLONGAN`) REFERENCES `golongankerja` (`IDGOLONGAN`);

--
-- Constraints for table `detailrekapjabatanpusat`
--
ALTER TABLE `detailrekapjabatanpusat`
  ADD CONSTRAINT `FK_RELATIONSHIP_11` FOREIGN KEY (`IDGOLONGAN`) REFERENCES `golongankerja` (`IDGOLONGAN`),
  ADD CONSTRAINT `FK_RELATIONSHIP_12` FOREIGN KEY (`IDUNITKERJAPUSAT`) REFERENCES `unitkerjapusat` (`IDUNITKERJAPUSAT`);

--
-- Constraints for table `lokerbyjeniskelamin`
--
ALTER TABLE `lokerbyjeniskelamin`
  ADD CONSTRAINT `FK_RELATIONSHIP_7` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `lokerbyprovinsi`
--
ALTER TABLE `lokerbyprovinsi`
  ADD CONSTRAINT `FK_RELATIONSHIP_4` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`),
  ADD CONSTRAINT `FK_RELATIONSHIP_5` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `lptks`
--
ALTER TABLE `lptks`
  ADD CONSTRAINT `FK_RELATIONSHIP_17` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`);

--
-- Constraints for table `pemenuhantkbyjk`
--
ALTER TABLE `pemenuhantkbyjk`
  ADD CONSTRAINT `FK_RELATIONSHIP_10` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `pemenuhantkbyprovinsi`
--
ALTER TABLE `pemenuhantkbyprovinsi`
  ADD CONSTRAINT `FK_RELATIONSHIP_8` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`),
  ADD CONSTRAINT `FK_RELATIONSHIP_9` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `penempatanakadperbulan`
--
ALTER TABLE `penempatanakadperbulan`
  ADD CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `rekapjabatanfungsionaldaerah`
--
ALTER TABLE `rekapjabatanfungsionaldaerah`
  ADD CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
