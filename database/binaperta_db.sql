-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Dec 27, 2016 at 08:35 AM
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
-- Table structure for table `anggaranatase`
--

CREATE TABLE `anggaranatase` (
  `IDANGGARANATASE` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `ATASE` varchar(100) DEFAULT NULL,
  `NEGARA` varchar(100) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `anggaranatase`
--

INSERT INTO `anggaranatase` (`IDANGGARANATASE`, `IDTAHUN`, `ATASE`, `NEGARA`, `JUMLAH`) VALUES
(2912, 2007, 'Kuala Lumpur', 'Malaysia', 1),
(2913, 2008, 'Kuala Lumpur', 'Malaysia', 2),
(2914, 2009, 'Kuala Lumpur', 'Malaysia', 3),
(2915, 2010, 'Kuala Lumpur', 'Malaysia', 4),
(2916, 2011, 'Kuala Lumpur', 'Malaysia', 5),
(2917, 2012, 'Kuala Lumpur', 'Malaysia', 7),
(2918, 2013, 'Kuala Lumpur', 'Malaysia', 8),
(2919, 2014, 'Kuala Lumpur', 'Malaysia', 9),
(2920, 2015, 'Kuala Lumpur', 'Malaysia', 11111),
(2921, 2007, 'Riyadh', 'Arab Saudi', 9),
(2922, 2008, 'Riyadh', 'Arab Saudi', 9),
(2923, 2009, 'Riyadh', 'Arab Saudi', 9),
(2924, 2010, 'Riyadh', 'Arab Saudi', NULL),
(2925, 2011, 'Riyadh', 'Arab Saudi', 9),
(2926, 2012, 'Riyadh', 'Arab Saudi', 9),
(2927, 2013, 'Riyadh', 'Arab Saudi', 9),
(2928, 2014, 'Riyadh', 'Arab Saudi', 9),
(2929, 2015, 'Riyadh', 'Arab Saudi', 9),
(2930, 2007, 'Hong Kong', 'Hong Kong', 89),
(2931, 2008, 'Hong Kong', 'Hong Kong', 89),
(2932, 2009, 'Hong Kong', 'Hong Kong', 89),
(2933, 2010, 'Hong Kong', 'Hong Kong', 9),
(2934, 2011, 'Hong Kong', 'Hong Kong', 9),
(2935, 2012, 'Hong Kong', 'Hong Kong', 13123),
(2936, 2013, 'Hong Kong', 'Hong Kong', 0),
(2937, 2014, 'Hong Kong', 'Hong Kong', 9),
(2938, 2015, 'Hong Kong', 'Hong Kong', 1);

-- --------------------------------------------------------

--
-- Table structure for table `daftarizinmempekerjakantkakategorinegara`
--

CREATE TABLE `daftarizinmempekerjakantkakategorinegara` (
  `IDDAFTARIZIN2` int(11) NOT NULL,
  `NEGARA` varchar(100) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftarizinmempekerjakantkakategorinegara`
--

INSERT INTO `daftarizinmempekerjakantkakategorinegara` (`IDDAFTARIZIN2`, `NEGARA`, `TAHUN`, `JUMLAH`) VALUES
(2, 'Cina', 2011, 123123),
(3, 'Cina', 2012, 33333),
(4, 'Cina', 2013, 99),
(5, 'Cina', 2014, 876),
(6, 'Cina', 2015, 2191255),
(7, 'Jepang', 2011, 1),
(8, 'Jepang', 2012, 8),
(9, 'Jepang', 2013, 9),
(10, 'Jepang', 2014, 1),
(11, 'Jepang', 2015, 8),
(12, 'Korea Selatan', 2011, 8),
(13, 'Korea Selatan', 2012, 9),
(14, 'Korea Selatan', 2013, 123),
(15, 'Korea Selatan', 2014, 9839),
(16, 'Korea Selatan', 2015, 98);

-- --------------------------------------------------------

--
-- Table structure for table `daftarizinmempekerjakantkakategorisektor`
--

CREATE TABLE `daftarizinmempekerjakantkakategorisektor` (
  `IDDAFTARIZIN` int(11) NOT NULL,
  `TAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `SEKTORKATEGORI` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `daftarizinmempekerjakantkakategorisektor`
--

INSERT INTO `daftarizinmempekerjakantkakategorisektor` (`IDDAFTARIZIN`, `TAHUN`, `JUMLAH`, `SEKTORKATEGORI`) VALUES
(1, 2011, 123123, 'Pertanian'),
(2, 2012, 33333, 'Pertanian'),
(3, 2013, 212312, 'Pertanian'),
(4, 2014, 339393, 'Pertanian'),
(5, 2015, 2191255, 'Pertanian'),
(6, 2011, 1, 'Industri'),
(7, 2012, 8, 'Industri'),
(8, 2013, 9, 'Industri'),
(9, 2014, 1, 'Industri'),
(10, 2015, 8, 'Industri'),
(11, 2011, 8, 'Perdagangan dan Jasa'),
(12, 2012, 9, 'Perdagangan dan Jasa'),
(13, 2013, 1902381290, 'Perdagangan dan Jasa'),
(14, 2014, 9839, 'Perdagangan dan Jasa'),
(15, 2015, 98, 'Perdagangan dan Jasa');

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

--
-- Dumping data for table `detailpkbyprovinsi`
--

INSERT INTO `detailpkbyprovinsi` (`IDDETAIL`, `IDPROVINSI`, `IDTAHUN`, `JUMLAH`) VALUES
(2, 1, 2010, 1091091),
(3, 1, 2011, 191919),
(4, 1, 2012, 989898),
(5, 1, 2013, 1010),
(6, 1, 2014, 101011),
(7, 1, 2015, 2015),
(8, 2, 2010, 2010),
(9, 2, 2011, 2011),
(10, 2, 2012, 12391),
(11, 2, 2013, 12098),
(12, 2, 2014, 98),
(13, 2, 2015, 98);

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
-- Table structure for table `izinmempekerjakantkaberdasarkanjabatan`
--

CREATE TABLE `izinmempekerjakantkaberdasarkanjabatan` (
  `IDIZINJABATAN` int(11) NOT NULL,
  `LEVELJABATAN` varchar(100) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `izinmempekerjakantkaberdasarkanjabatan`
--

INSERT INTO `izinmempekerjakantkaberdasarkanjabatan` (`IDIZINJABATAN`, `LEVELJABATAN`, `TAHUN`, `JUMLAH`) VALUES
(2, 'Profesional', 2011, 123123),
(3, 'Profesional', 2012, 33333),
(4, 'Profesional', 2013, 212312),
(5, 'Profesional', 2014, 339393),
(6, 'Profesional', 2015, 2191255),
(7, 'Konsultan', 2011, 1),
(8, 'Konsultan', 2012, 8),
(9, 'Konsultan', 2013, 9),
(10, 'Konsultan', 2014, 1),
(11, 'Konsultan', 2015, 8),
(12, 'Manager', 2011, 8),
(13, 'Manager', 2012, 9),
(14, 'Manager', 2013, 2),
(15, 'Manager', 2014, 9839),
(16, 'Manager', 2015, 98);

-- --------------------------------------------------------

--
-- Table structure for table `jumlahpenempatantki`
--

CREATE TABLE `jumlahpenempatantki` (
  `IDJUMLAHPENEMPATANTKI` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `JUMLAHTKI` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jumlahpenempatantki`
--

INSERT INTO `jumlahpenempatantki` (`IDJUMLAHPENEMPATANTKI`, `IDTAHUN`, `JUMLAHTKI`) VALUES
(4, 2012, 123123),
(5, 2013, 33333),
(6, 2014, 222222);

-- --------------------------------------------------------

--
-- Table structure for table `jumlahpptkis`
--

CREATE TABLE `jumlahpptkis` (
  `IDJUMLAHPPTKIS` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `CABUT` int(11) DEFAULT NULL,
  `AKTIF` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jumlahpptkis`
--

INSERT INTO `jumlahpptkis` (`IDJUMLAHPPTKIS`, `IDTAHUN`, `CABUT`, `AKTIF`, `TOTAL`) VALUES
(7, 2014, 1, 2, 3),
(8, 2015, 4, 9, 13),
(9, 2016, 3, 3, 6);

-- --------------------------------------------------------

--
-- Table structure for table `jumlahrencanapenggunaantka`
--

CREATE TABLE `jumlahrencanapenggunaantka` (
  `IDJUMLAHRENCANA` int(11) NOT NULL,
  `BULAN` varchar(30) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `jumlahrencanapenggunaantka`
--

INSERT INTO `jumlahrencanapenggunaantka` (`IDJUMLAHRENCANA`, `BULAN`, `TAHUN`, `JUMLAH`) VALUES
(49, 'Januari', 2011, 1),
(50, 'Januari', 2012, 3),
(51, 'Januari', 2013, 1),
(52, 'Januari', 2014, 5),
(53, 'Januari', 2015, 667),
(54, 'Februari', 2011, 2),
(55, 'Februari', 2012, 3),
(56, 'Februari', 2013, 1),
(57, 'Februari', 2014, 5),
(58, 'Februari', 2015, 45),
(59, 'Maret', 2011, 123),
(60, 'Maret', 2012, 3),
(61, 'Maret', 2013, 1),
(62, 'Maret', 2014, 5),
(63, 'Maret', 2015, 45),
(64, 'April', 2011, 131),
(65, 'April', 2012, 3),
(66, 'April', 2013, 1),
(67, 'April', 2014, 5),
(68, 'April', 2015, 43534),
(69, 'Mei', 2011, 231),
(70, 'Mei', 2012, 3),
(71, 'Mei', 2013, 1),
(72, 'Mei', 2014, 5),
(73, 'Mei', 2015, 775),
(74, 'Juni', 2011, 23),
(75, 'Juni', 2012, 3),
(76, 'Juni', 2013, 1),
(77, 'Juni', 2014, 5),
(78, 'Juni', 2015, 6),
(79, 'Juli', 2011, 4),
(80, 'Juli', 2012, 3),
(81, 'Juli', 2013, 1),
(82, 'Juli', 2014, 5),
(83, 'Juli', 2015, 9),
(84, 'Agustus', 2011, 32),
(85, 'Agustus', 2012, 3),
(86, 'Agustus', 2013, 1),
(87, 'Agustus', 2014, 5),
(88, 'Agustus', 2015, 9),
(89, 'September', 2011, 43),
(90, 'September', 2012, 3),
(91, 'September', 2013, 1),
(92, 'September', 2014, 5),
(93, 'September', 2015, 76),
(94, 'Oktober', 2011, 45345),
(95, 'Oktober', 2012, 3),
(96, 'Oktober', 2013, 1),
(97, 'Oktober', 2014, 5),
(98, 'Oktober', 2015, 545456),
(99, 'November', 2011, 45),
(100, 'November', 2012, 3),
(101, 'November', 2013, 1),
(102, 'November', 2014, 5),
(103, 'November', 2015, 879),
(104, 'Desember', 2011, 6),
(105, 'Desember', 2012, 3),
(106, 'Desember', 2013, 1),
(107, 'Desember', 2014, 5),
(108, 'Desember', 2015, 990);

-- --------------------------------------------------------

--
-- Table structure for table `kabupaten`
--

CREATE TABLE `kabupaten` (
  `IDKABUPATEN` int(11) NOT NULL,
  `NAMAKABUPATEN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `kabupaten`
--

INSERT INTO `kabupaten` (`IDKABUPATEN`, `NAMAKABUPATEN`) VALUES
(1, 'Kota Banda Aceh'),
(2, 'Kabupaten Langkat'),
(3, 'Kota padang'),
(4, 'Kota Jambi'),
(5, 'Kabupaten Muara Enim'),
(6, 'Kabupaten Kaur');

-- --------------------------------------------------------

--
-- Table structure for table `lokasidanadroppingsektorjasadanindustrikreatif`
--

CREATE TABLE `lokasidanadroppingsektorjasadanindustrikreatif` (
  `IDSEKTORJASA` int(11) NOT NULL,
  `IDKABUPATEN` int(11) DEFAULT NULL,
  `JUMLAHPAKET` int(11) DEFAULT NULL,
  `TOTALDANAPERPAKET` int(11) DEFAULT NULL,
  `TOTALDANA` int(11) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasidanadroppingsektorjasadanindustrikreatif`
--

INSERT INTO `lokasidanadroppingsektorjasadanindustrikreatif` (`IDSEKTORJASA`, `IDKABUPATEN`, `JUMLAHPAKET`, `TOTALDANAPERPAKET`, `TOTALDANA`, `TAHUN`) VALUES
(1, 1, 4, 0, 519640000, 2015),
(2, 2, 2, 12390909, 259820000, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `lokasidanadroppingsektorpertaniandanmaritim`
--

CREATE TABLE `lokasidanadroppingsektorpertaniandanmaritim` (
  `IDLOKASIDANADROPPING` int(11) NOT NULL,
  `IDKABUPATEN` int(11) DEFAULT NULL,
  `JUMLAHPAKET` int(11) DEFAULT NULL,
  `TOTALDANAPERPAKET` int(11) DEFAULT NULL,
  `TOTALDANA` int(11) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasidanadroppingsektorpertaniandanmaritim`
--

INSERT INTO `lokasidanadroppingsektorpertaniandanmaritim` (`IDLOKASIDANADROPPING`, `IDKABUPATEN`, `JUMLAHPAKET`, `TOTALDANAPERPAKET`, `TOTALDANA`, `TAHUN`) VALUES
(3, 1, 4, 0, 519640000, 2015),
(4, 2, 2, 12390909, 259820000, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `lokasipemberdayaantkklansia`
--

CREATE TABLE `lokasipemberdayaantkklansia` (
  `IDTKKLANSIA` int(11) NOT NULL,
  `IDKABUPATEN` int(11) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasipemberdayaantkklansia`
--

INSERT INTO `lokasipemberdayaantkklansia` (`IDTKKLANSIA`, `IDKABUPATEN`, `QTY`, `JUMLAH`) VALUES
(1, 1, 1, 20),
(2, 2, 1, 20),
(3, 3, 2, 40),
(4, 4, 3, 60);

-- --------------------------------------------------------

--
-- Table structure for table `lokasipemberdayaantkkmuda`
--

CREATE TABLE `lokasipemberdayaantkkmuda` (
  `IDLOKASIPEMBERDAYAANTKK` int(11) NOT NULL,
  `IDKABUPATEN` int(11) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasipemberdayaantkkmuda`
--

INSERT INTO `lokasipemberdayaantkkmuda` (`IDLOKASIPEMBERDAYAANTKK`, `IDKABUPATEN`, `QTY`, `JUMLAH`) VALUES
(1, 1, 1, 20),
(2, 2, 1, 20),
(3, 3, 2, 40),
(4, 4, 3, 60);

-- --------------------------------------------------------

--
-- Table structure for table `lokasipengembanganruangpelayanan`
--

CREATE TABLE `lokasipengembanganruangpelayanan` (
  `IDRINCIAN` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `IDKABUPATEN` int(11) DEFAULT NULL,
  `SKPD` varchar(1000) DEFAULT NULL,
  `TAHUN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `lokasipengembanganruangpelayanan`
--

INSERT INTO `lokasipengembanganruangpelayanan` (`IDRINCIAN`, `IDPROVINSI`, `IDKABUPATEN`, `SKPD`, `TAHUN`) VALUES
(5, 1, 1, 'Dinas Sosial dan Tenaga Kerja', '2013'),
(6, 2, 2, 'Dinas Tenaga Kerja dan Transmigrasi', '2013'),
(7, 3, 3, 'Dinas Sosial dan tenaga Kerja Kota Padang', '2013'),
(8, 4, 4, 'Dinas Tenaga Kerja, Transmigrasi dan Kependudukan', '2013');

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

--
-- Dumping data for table `lptks`
--

INSERT INTO `lptks` (`IDLPTKS`, `IDPROVINSI`, `JUMLAH`, `TAHUN`) VALUES
(5, 1, 2, '2015'),
(6, 2, 2, '2015'),
(7, 3, 2, '2015'),
(8, 4, 5, '2015');

-- --------------------------------------------------------

--
-- Table structure for table `pembekalanmotivator`
--

CREATE TABLE `pembekalanmotivator` (
  `IDPEMBEKALANMOTIVATOR` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `KUOTA` int(11) DEFAULT NULL,
  `ANGKATAN1` int(11) DEFAULT NULL,
  `ANGKATAN2` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `SELISIHORANG` int(11) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembekalanmotivator`
--

INSERT INTO `pembekalanmotivator` (`IDPEMBEKALANMOTIVATOR`, `IDPROVINSI`, `KUOTA`, `ANGKATAN1`, `ANGKATAN2`, `JUMLAH`, `SELISIHORANG`, `TAHUN`) VALUES
(1, 1, 18, 13, 3, 16, 2, 2015),
(2, 2, 22, 0, 22, 22, 0, 2015),
(3, 3, 23, 23, 0, 23, 0, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `pembekalantenagakerjadisabilitas`
--

CREATE TABLE `pembekalantenagakerjadisabilitas` (
  `IDPEMBEKALAN` int(11) NOT NULL,
  `IDKABUPATEN` int(11) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `TGLAWAL` date DEFAULT NULL,
  `TGLAKHIR` date DEFAULT NULL,
  `KETERANGAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembekalantenagakerjadisabilitas`
--

INSERT INTO `pembekalantenagakerjadisabilitas` (`IDPEMBEKALAN`, `IDKABUPATEN`, `QTY`, `JUMLAH`, `TGLAWAL`, `TGLAKHIR`, `KETERANGAN`) VALUES
(1, 1, 1, 30, '2015-01-01', '2015-01-21', 'a'),
(2, 2, 2, 30, '2015-01-01', '2015-02-01', 'b'),
(3, 3, 1, 30, '2015-01-01', '2015-03-01', 'v');

-- --------------------------------------------------------

--
-- Table structure for table `pembekalantklansia`
--

CREATE TABLE `pembekalantklansia` (
  `IDPEMBEKALANTKLANSIA` int(11) NOT NULL,
  `IDKABUPATEN` int(11) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `TGLAWAL` date DEFAULT NULL,
  `TGLAKHIR` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pembekalantklansia`
--

INSERT INTO `pembekalantklansia` (`IDPEMBEKALANTKLANSIA`, `IDKABUPATEN`, `QTY`, `JUMLAH`, `TGLAWAL`, `TGLAKHIR`) VALUES
(1, 1, 1, 30, '2015-01-01', '2015-01-21'),
(2, 2, 2, 30, '2015-01-01', '2015-02-01'),
(3, 3, 1, 30, '2015-01-01', '2015-03-01');

-- --------------------------------------------------------

--
-- Table structure for table `pemberdayaantenagakerjamuda`
--

CREATE TABLE `pemberdayaantenagakerjamuda` (
  `IDPEMBERDAYAANTKM` int(11) NOT NULL,
  `IDKABUPATEN` int(11) DEFAULT NULL,
  `QTY` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL,
  `TGLAWAL` date DEFAULT NULL,
  `TGLAKHIR` date DEFAULT NULL,
  `KETERANGAN` varchar(100) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pemberdayaantenagakerjamuda`
--

INSERT INTO `pemberdayaantenagakerjamuda` (`IDPEMBERDAYAANTKM`, `IDKABUPATEN`, `QTY`, `JUMLAH`, `TGLAWAL`, `TGLAKHIR`, `KETERANGAN`) VALUES
(6, 1, 1, 30, '2015-12-21', '2015-01-01', 'Test'),
(7, 2, 1, 30, '2015-01-01', '2015-01-01', 'Test2');

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
-- Table structure for table `pendayagunaantks`
--

CREATE TABLE `pendayagunaantks` (
  `IDPENDAYAGUNAATKS` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `PAKET` int(11) DEFAULT NULL,
  `TARGET` int(11) DEFAULT NULL,
  `REALISASI` int(11) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pendayagunaantks`
--

INSERT INTO `pendayagunaantks` (`IDPENDAYAGUNAATKS`, `IDPROVINSI`, `PAKET`, `TARGET`, `REALISASI`, `TAHUN`) VALUES
(16, 1, 2, 40, 40, 2013),
(17, 2, 2, 40, 40, 2014),
(18, 1, 2, 40, 40, 2013),
(19, 2, 1, 20, 20, 2014);

-- --------------------------------------------------------

--
-- Table structure for table `penempatanakad`
--

CREATE TABLE `penempatanakad` (
  `IDPENEMPATANAKAD` int(11) NOT NULL,
  `BULAN` varchar(30) DEFAULT NULL,
  `JUMLAHLAKI` int(11) DEFAULT NULL,
  `JUMLAHPEREMPUAN` int(11) DEFAULT NULL,
  `TOTAL` int(11) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penempatanakad`
--

INSERT INTO `penempatanakad` (`IDPENEMPATANAKAD`, `BULAN`, `JUMLAHLAKI`, `JUMLAHPEREMPUAN`, `TOTAL`, `TAHUN`) VALUES
(121, 'Januari', 1, 123, 124, 2012),
(122, 'Februari', 2, 12, 14, 2012),
(123, 'Maret', 3, 312, 315, 2012),
(124, 'April', 4, 312, 316, 2012),
(125, 'Mei', 2, 4, 6, 2012),
(126, 'Juni', 2, 3, 5, 2012),
(127, 'Juli', 2, 4, 6, 2012),
(128, 'Agustus', 2, 3, 5, 2012),
(129, 'September', 2, 43, 45, 2012),
(130, 'Oktober', 2, 900, 902, 2012),
(131, 'November', 90, 3, 93, 2012),
(132, 'Desember', 2, 3, 5, 2012);

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
-- Table structure for table `penerimaanremitansitki`
--

CREATE TABLE `penerimaanremitansitki` (
  `IDPENERIMAANREMITANSI` int(11) NOT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `REMITANSI` float DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `penerimaanremitansitki`
--

INSERT INTO `penerimaanremitansitki` (`IDPENERIMAANREMITANSI`, `IDTAHUN`, `REMITANSI`) VALUES
(2, 2012, 6.74),
(3, 2013, 6.73),
(4, 2014, 7.4);

-- --------------------------------------------------------

--
-- Table structure for table `pengadaansaranabursakerjaonline`
--

CREATE TABLE `pengadaansaranabursakerjaonline` (
  `IDBKO` int(11) NOT NULL,
  `TAHUN` int(11) DEFAULT NULL,
  `KAB1` int(11) DEFAULT NULL,
  `KOTA1` int(11) DEFAULT NULL,
  `PROV1` int(11) DEFAULT NULL,
  `JUM1` int(11) DEFAULT NULL,
  `KAB2` int(11) DEFAULT NULL,
  `KOTA2` int(11) DEFAULT NULL,
  `PROV2` int(11) DEFAULT NULL,
  `JUM2` int(11) DEFAULT NULL,
  `KAB3` int(11) DEFAULT NULL,
  `KOTA3` int(11) DEFAULT NULL,
  `PROV3` int(11) DEFAULT NULL,
  `JUM3` int(11) DEFAULT NULL,
  `KAB4` int(11) DEFAULT NULL,
  `KOTA4` int(11) DEFAULT NULL,
  `PROV4` int(11) DEFAULT NULL,
  `JUM4` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengadaansaranabursakerjaonline`
--

INSERT INTO `pengadaansaranabursakerjaonline` (`IDBKO`, `TAHUN`, `KAB1`, `KOTA1`, `PROV1`, `JUM1`, `KAB2`, `KOTA2`, `PROV2`, `JUM2`, `KAB3`, `KOTA3`, `PROV3`, `JUM3`, `KAB4`, `KOTA4`, `PROV4`, `JUM4`) VALUES
(19, 2003, 2, 5, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(20, 2005, 2, 15, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(21, 2006, 2, 5, 9, 1, 8, 9, 9, 9, 9, 19, 9, 9, 9, 9, 9, 9),
(22, 2007, 2, 5, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 19, 9, 9, 9),
(23, 2008, 2, 5, 29, 1, 8, 9, 9, 19, 9, 9, 9, 9, 9, 9, 9, 9),
(24, 2009, 2, 5, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(25, 2011, 2, 5, 9, 1, 48, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(26, 2012, 2, 5, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(27, 2013, 2, 5, 9, 1, 8, 9, 9, 9, 9, 19, 9, 9, 9, 9, 9, 9);

-- --------------------------------------------------------

--
-- Table structure for table `pengembangantenagakerjarentan`
--

CREATE TABLE `pengembangantenagakerjarentan` (
  `IDPENGEMBANGAN` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `JUMLAHPAKET` int(11) DEFAULT NULL,
  `JUMLAHOUTPUT` int(11) DEFAULT NULL,
  `JUMLAHPENDAMPING` int(11) DEFAULT NULL,
  `TAHUN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `pengembangantenagakerjarentan`
--

INSERT INTO `pengembangantenagakerjarentan` (`IDPENGEMBANGAN`, `IDPROVINSI`, `JUMLAHPAKET`, `JUMLAHOUTPUT`, `JUMLAHPENDAMPING`, `TAHUN`) VALUES
(4, 1, 18, 13, 3, 2015),
(5, 2, 22, 0, 22, 2015),
(6, 3, 23, 23, 0, 2015);

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
-- Table structure for table `rekapitulasijobfairnasional`
--

CREATE TABLE `rekapitulasijobfairnasional` (
  `IDREKAPJOBFAIR` int(11) NOT NULL,
  `TANGGAL` varchar(100) DEFAULT NULL,
  `LOKASIPAMERAN` varchar(100) DEFAULT NULL,
  `JUMLAHPESERTA` int(11) DEFAULT NULL,
  `JUMLAHSTAND` int(11) DEFAULT NULL,
  `JUMLAHLOWONGAN` int(11) DEFAULT NULL,
  `JABATANYANGDITAWARKAN` int(11) DEFAULT NULL,
  `TARGETPENGUNJUNG` int(11) DEFAULT NULL,
  `REALISASI` int(11) DEFAULT NULL,
  `PENEMPATAN` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekapitulasijobfairnasional`
--

INSERT INTO `rekapitulasijobfairnasional` (`IDREKAPJOBFAIR`, `TANGGAL`, `LOKASIPAMERAN`, `JUMLAHPESERTA`, `JUMLAHSTAND`, `JUMLAHLOWONGAN`, `JABATANYANGDITAWARKAN`, `TARGETPENGUNJUNG`, `REALISASI`, `PENEMPATAN`) VALUES
(3, '27 - 28 Mei 2004', 'Hall C1 PRJ', 49, 49, 10250, 300, 20000, 15132, 0),
(4, '20 - 21 Des 2004', 'Hall C1 PRJ', 59, 61, 9835, 450, 20000, 18214, 0);

-- --------------------------------------------------------

--
-- Table structure for table `rekapitulasi_pengadaan_sarana_bursa_kerja_online`
--

CREATE TABLE `rekapitulasi_pengadaan_sarana_bursa_kerja_online` (
  `IDREKAPITULASI` int(11) NOT NULL,
  `IDPROVINSI` int(11) DEFAULT NULL,
  `IDTAHUN` int(11) DEFAULT NULL,
  `JUMLAH` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `rekapitulasi_pengadaan_sarana_bursa_kerja_online`
--

INSERT INTO `rekapitulasi_pengadaan_sarana_bursa_kerja_online` (`IDREKAPITULASI`, `IDPROVINSI`, `IDTAHUN`, `JUMLAH`) VALUES
(10, 1, 2009, 0),
(11, 1, 2011, 0),
(12, 1, 2012, 0),
(13, 1, 2013, 0),
(14, 1, 2015, 0),
(15, 2, 2009, 1),
(16, 2, 2011, 0),
(17, 2, 2012, 0),
(18, 2, 2013, 0),
(19, 2, 2015, 0),
(20, 3, 2009, 0),
(21, 3, 2011, 0),
(22, 3, 2012, 1),
(23, 3, 2013, 0),
(24, 3, 2015, 1),
(25, 4, 2009, 0),
(26, 4, 2011, 0),
(27, 4, 2012, 0),
(28, 4, 2013, 0),
(29, 4, 2015, 0);

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
(13, '2', 2015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015),
(14, '2', 2015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015),
(15, '5', 2015, NULL, NULL, NULL, NULL, NULL, NULL, NULL, 2015);

-- --------------------------------------------------------

--
-- Table structure for table `tahun`
--

CREATE TABLE `tahun` (
  `IDTAHUN` int(11) NOT NULL,
  `TAHUN` varchar(10) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tahun`
--

INSERT INTO `tahun` (`IDTAHUN`, `TAHUN`) VALUES
(2007, '2007'),
(2008, '2008'),
(2009, '2009'),
(2010, '2010'),
(2011, '2011'),
(2012, '2012'),
(2013, '2013'),
(2014, '2014'),
(2015, '2015'),
(2016, '2016');

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
-- Indexes for table `anggaranatase`
--
ALTER TABLE `anggaranatase`
  ADD PRIMARY KEY (`IDANGGARANATASE`),
  ADD KEY `FK_RELATIONSHIP_30` (`IDTAHUN`);

--
-- Indexes for table `daftarizinmempekerjakantkakategorinegara`
--
ALTER TABLE `daftarizinmempekerjakantkakategorinegara`
  ADD PRIMARY KEY (`IDDAFTARIZIN2`);

--
-- Indexes for table `daftarizinmempekerjakantkakategorisektor`
--
ALTER TABLE `daftarizinmempekerjakantkakategorisektor`
  ADD PRIMARY KEY (`IDDAFTARIZIN`);

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
-- Indexes for table `izinmempekerjakantkaberdasarkanjabatan`
--
ALTER TABLE `izinmempekerjakantkaberdasarkanjabatan`
  ADD PRIMARY KEY (`IDIZINJABATAN`);

--
-- Indexes for table `jumlahpenempatantki`
--
ALTER TABLE `jumlahpenempatantki`
  ADD PRIMARY KEY (`IDJUMLAHPENEMPATANTKI`),
  ADD KEY `FK_RELATIONSHIP_27` (`IDTAHUN`);

--
-- Indexes for table `jumlahpptkis`
--
ALTER TABLE `jumlahpptkis`
  ADD PRIMARY KEY (`IDJUMLAHPPTKIS`),
  ADD KEY `FK_RELATIONSHIP_29` (`IDTAHUN`);

--
-- Indexes for table `jumlahrencanapenggunaantka`
--
ALTER TABLE `jumlahrencanapenggunaantka`
  ADD PRIMARY KEY (`IDJUMLAHRENCANA`);

--
-- Indexes for table `kabupaten`
--
ALTER TABLE `kabupaten`
  ADD PRIMARY KEY (`IDKABUPATEN`);

--
-- Indexes for table `lokasidanadroppingsektorjasadanindustrikreatif`
--
ALTER TABLE `lokasidanadroppingsektorjasadanindustrikreatif`
  ADD PRIMARY KEY (`IDSEKTORJASA`),
  ADD KEY `FK_RELATIONSHIP_33` (`IDKABUPATEN`);

--
-- Indexes for table `lokasidanadroppingsektorpertaniandanmaritim`
--
ALTER TABLE `lokasidanadroppingsektorpertaniandanmaritim`
  ADD PRIMARY KEY (`IDLOKASIDANADROPPING`),
  ADD KEY `FK_RELATIONSHIP_32` (`IDKABUPATEN`);

--
-- Indexes for table `lokasipemberdayaantkklansia`
--
ALTER TABLE `lokasipemberdayaantkklansia`
  ADD PRIMARY KEY (`IDTKKLANSIA`),
  ADD KEY `FK_RELATIONSHIP_23` (`IDKABUPATEN`);

--
-- Indexes for table `lokasipemberdayaantkkmuda`
--
ALTER TABLE `lokasipemberdayaantkkmuda`
  ADD PRIMARY KEY (`IDLOKASIPEMBERDAYAANTKK`),
  ADD KEY `FK_RELATIONSHIP_22` (`IDKABUPATEN`);

--
-- Indexes for table `lokasipengembanganruangpelayanan`
--
ALTER TABLE `lokasipengembanganruangpelayanan`
  ADD PRIMARY KEY (`IDRINCIAN`);

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
-- Indexes for table `pembekalanmotivator`
--
ALTER TABLE `pembekalanmotivator`
  ADD PRIMARY KEY (`IDPEMBEKALANMOTIVATOR`);

--
-- Indexes for table `pembekalantenagakerjadisabilitas`
--
ALTER TABLE `pembekalantenagakerjadisabilitas`
  ADD PRIMARY KEY (`IDPEMBEKALAN`),
  ADD KEY `FK_RELATIONSHIP_25` (`IDKABUPATEN`);

--
-- Indexes for table `pembekalantklansia`
--
ALTER TABLE `pembekalantklansia`
  ADD PRIMARY KEY (`IDPEMBEKALANTKLANSIA`),
  ADD KEY `FK_RELATIONSHIP_26` (`IDKABUPATEN`);

--
-- Indexes for table `pemberdayaantenagakerjamuda`
--
ALTER TABLE `pemberdayaantenagakerjamuda`
  ADD PRIMARY KEY (`IDPEMBERDAYAANTKM`),
  ADD KEY `FK_RELATIONSHIP_24` (`IDKABUPATEN`);

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
-- Indexes for table `pendayagunaantks`
--
ALTER TABLE `pendayagunaantks`
  ADD PRIMARY KEY (`IDPENDAYAGUNAATKS`),
  ADD KEY `FK_RELATIONSHIP_31` (`IDPROVINSI`);

--
-- Indexes for table `penempatanakad`
--
ALTER TABLE `penempatanakad`
  ADD PRIMARY KEY (`IDPENEMPATANAKAD`);

--
-- Indexes for table `penempatanakadperbulan`
--
ALTER TABLE `penempatanakadperbulan`
  ADD PRIMARY KEY (`IDPENEMPATANAKADPERBULAN`),
  ADD KEY `FK_RELATIONSHIP_15` (`IDTAHUN`);

--
-- Indexes for table `penerimaanremitansitki`
--
ALTER TABLE `penerimaanremitansitki`
  ADD PRIMARY KEY (`IDPENERIMAANREMITANSI`),
  ADD KEY `FK_RELATIONSHIP_28` (`IDTAHUN`);

--
-- Indexes for table `pengadaansaranabursakerjaonline`
--
ALTER TABLE `pengadaansaranabursakerjaonline`
  ADD PRIMARY KEY (`IDBKO`);

--
-- Indexes for table `pengembangantenagakerjarentan`
--
ALTER TABLE `pengembangantenagakerjarentan`
  ADD PRIMARY KEY (`IDPENGEMBANGAN`);

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
-- Indexes for table `rekapitulasijobfairnasional`
--
ALTER TABLE `rekapitulasijobfairnasional`
  ADD PRIMARY KEY (`IDREKAPJOBFAIR`);

--
-- Indexes for table `rekapitulasi_pengadaan_sarana_bursa_kerja_online`
--
ALTER TABLE `rekapitulasi_pengadaan_sarana_bursa_kerja_online`
  ADD PRIMARY KEY (`IDREKAPITULASI`),
  ADD KEY `FK_RELATIONSHIP_20` (`IDTAHUN`),
  ADD KEY `FK_RELATIONSHIP_21` (`IDPROVINSI`);

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
-- AUTO_INCREMENT for table `anggaranatase`
--
ALTER TABLE `anggaranatase`
  MODIFY `IDANGGARANATASE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2939;
--
-- AUTO_INCREMENT for table `daftarizinmempekerjakantkakategorinegara`
--
ALTER TABLE `daftarizinmempekerjakantkakategorinegara`
  MODIFY `IDDAFTARIZIN2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `daftarizinmempekerjakantkakategorisektor`
--
ALTER TABLE `daftarizinmempekerjakantkakategorisektor`
  MODIFY `IDDAFTARIZIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `detailpkbyjeniskelamin`
--
ALTER TABLE `detailpkbyjeniskelamin`
  MODIFY `IDDETAILJENISKELAMIN` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detailpkbyprovinsi`
--
ALTER TABLE `detailpkbyprovinsi`
  MODIFY `IDDETAIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=14;
--
-- AUTO_INCREMENT for table `detailrekapjabatanbyprovinsi`
--
ALTER TABLE `detailrekapjabatanbyprovinsi`
  MODIFY `IDDETAILREKAPJABATANBYPROVINSI` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `detailrekapjabatanpusat`
--
ALTER TABLE `detailrekapjabatanpusat`
  MODIFY `IDDETAILREKAPJABATANPUSAT` int(11) NOT NULL AUTO_INCREMENT;
--
-- AUTO_INCREMENT for table `items`
--
ALTER TABLE `items`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `izinmempekerjakantkaberdasarkanjabatan`
--
ALTER TABLE `izinmempekerjakantkaberdasarkanjabatan`
  MODIFY `IDIZINJABATAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;
--
-- AUTO_INCREMENT for table `jumlahpenempatantki`
--
ALTER TABLE `jumlahpenempatantki`
  MODIFY `IDJUMLAHPENEMPATANTKI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `jumlahpptkis`
--
ALTER TABLE `jumlahpptkis`
  MODIFY `IDJUMLAHPPTKIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jumlahrencanapenggunaantka`
--
ALTER TABLE `jumlahrencanapenggunaantka`
  MODIFY `IDJUMLAHRENCANA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=109;
--
-- AUTO_INCREMENT for table `lokasidanadroppingsektorjasadanindustrikreatif`
--
ALTER TABLE `lokasidanadroppingsektorjasadanindustrikreatif`
  MODIFY `IDSEKTORJASA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;
--
-- AUTO_INCREMENT for table `lokasidanadroppingsektorpertaniandanmaritim`
--
ALTER TABLE `lokasidanadroppingsektorpertaniandanmaritim`
  MODIFY `IDLOKASIDANADROPPING` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lokasipemberdayaantkklansia`
--
ALTER TABLE `lokasipemberdayaantkklansia`
  MODIFY `IDTKKLANSIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lokasipemberdayaantkkmuda`
--
ALTER TABLE `lokasipemberdayaantkkmuda`
  MODIFY `IDLOKASIPEMBERDAYAANTKK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lokasipengembanganruangpelayanan`
--
ALTER TABLE `lokasipengembanganruangpelayanan`
  MODIFY `IDRINCIAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lptks`
--
ALTER TABLE `lptks`
  MODIFY `IDLPTKS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `pembekalanmotivator`
--
ALTER TABLE `pembekalanmotivator`
  MODIFY `IDPEMBEKALANMOTIVATOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pembekalantenagakerjadisabilitas`
--
ALTER TABLE `pembekalantenagakerjadisabilitas`
  MODIFY `IDPEMBEKALAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pembekalantklansia`
--
ALTER TABLE `pembekalantklansia`
  MODIFY `IDPEMBEKALANTKLANSIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;
--
-- AUTO_INCREMENT for table `pemberdayaantenagakerjamuda`
--
ALTER TABLE `pemberdayaantenagakerjamuda`
  MODIFY `IDPEMBERDAYAANTKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pendayagunaantks`
--
ALTER TABLE `pendayagunaantks`
  MODIFY `IDPENDAYAGUNAATKS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=20;
--
-- AUTO_INCREMENT for table `penempatanakad`
--
ALTER TABLE `penempatanakad`
  MODIFY `IDPENEMPATANAKAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=133;
--
-- AUTO_INCREMENT for table `penerimaanremitansitki`
--
ALTER TABLE `penerimaanremitansitki`
  MODIFY `IDPENERIMAANREMITANSI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `pengadaansaranabursakerjaonline`
--
ALTER TABLE `pengadaansaranabursakerjaonline`
  MODIFY `IDBKO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=28;
--
-- AUTO_INCREMENT for table `pengembangantenagakerjarentan`
--
ALTER TABLE `pengembangantenagakerjarentan`
  MODIFY `IDPENGEMBANGAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `posts`
--
ALTER TABLE `posts`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rekapitulasijobfairnasional`
--
ALTER TABLE `rekapitulasijobfairnasional`
  MODIFY `IDREKAPJOBFAIR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `rekapitulasi_pengadaan_sarana_bursa_kerja_online`
--
ALTER TABLE `rekapitulasi_pengadaan_sarana_bursa_kerja_online`
  MODIFY `IDREKAPITULASI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=30;
--
-- AUTO_INCREMENT for table `rekapjabatanfungsionaldaerah`
--
ALTER TABLE `rekapjabatanfungsionaldaerah`
  MODIFY `IDREKAPJFD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `rekapjabatanfungsionalpusat`
--
ALTER TABLE `rekapjabatanfungsionalpusat`
  MODIFY `IDREKAP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;
--
-- AUTO_INCREMENT for table `user_login`
--
ALTER TABLE `user_login`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
--
-- Constraints for dumped tables
--

--
-- Constraints for table `anggaranatase`
--
ALTER TABLE `anggaranatase`
  ADD CONSTRAINT `FK_RELATIONSHIP_30` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

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
-- Constraints for table `jumlahpenempatantki`
--
ALTER TABLE `jumlahpenempatantki`
  ADD CONSTRAINT `FK_RELATIONSHIP_27` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `jumlahpptkis`
--
ALTER TABLE `jumlahpptkis`
  ADD CONSTRAINT `FK_RELATIONSHIP_29` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `lokasidanadroppingsektorjasadanindustrikreatif`
--
ALTER TABLE `lokasidanadroppingsektorjasadanindustrikreatif`
  ADD CONSTRAINT `FK_RELATIONSHIP_33` FOREIGN KEY (`IDKABUPATEN`) REFERENCES `kabupaten` (`IDKABUPATEN`);

--
-- Constraints for table `lokasidanadroppingsektorpertaniandanmaritim`
--
ALTER TABLE `lokasidanadroppingsektorpertaniandanmaritim`
  ADD CONSTRAINT `FK_RELATIONSHIP_32` FOREIGN KEY (`IDKABUPATEN`) REFERENCES `kabupaten` (`IDKABUPATEN`);

--
-- Constraints for table `lokasipemberdayaantkklansia`
--
ALTER TABLE `lokasipemberdayaantkklansia`
  ADD CONSTRAINT `FK_RELATIONSHIP_23` FOREIGN KEY (`IDKABUPATEN`) REFERENCES `kabupaten` (`IDKABUPATEN`);

--
-- Constraints for table `lokasipemberdayaantkkmuda`
--
ALTER TABLE `lokasipemberdayaantkkmuda`
  ADD CONSTRAINT `FK_RELATIONSHIP_22` FOREIGN KEY (`IDKABUPATEN`) REFERENCES `kabupaten` (`IDKABUPATEN`);

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
-- Constraints for table `pembekalantenagakerjadisabilitas`
--
ALTER TABLE `pembekalantenagakerjadisabilitas`
  ADD CONSTRAINT `FK_RELATIONSHIP_25` FOREIGN KEY (`IDKABUPATEN`) REFERENCES `kabupaten` (`IDKABUPATEN`);

--
-- Constraints for table `pembekalantklansia`
--
ALTER TABLE `pembekalantklansia`
  ADD CONSTRAINT `FK_RELATIONSHIP_26` FOREIGN KEY (`IDKABUPATEN`) REFERENCES `kabupaten` (`IDKABUPATEN`);

--
-- Constraints for table `pemberdayaantenagakerjamuda`
--
ALTER TABLE `pemberdayaantenagakerjamuda`
  ADD CONSTRAINT `FK_RELATIONSHIP_24` FOREIGN KEY (`IDKABUPATEN`) REFERENCES `kabupaten` (`IDKABUPATEN`);

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
-- Constraints for table `pendayagunaantks`
--
ALTER TABLE `pendayagunaantks`
  ADD CONSTRAINT `FK_RELATIONSHIP_31` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`);

--
-- Constraints for table `penempatanakadperbulan`
--
ALTER TABLE `penempatanakadperbulan`
  ADD CONSTRAINT `FK_RELATIONSHIP_15` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `penerimaanremitansitki`
--
ALTER TABLE `penerimaanremitansitki`
  ADD CONSTRAINT `FK_RELATIONSHIP_28` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`);

--
-- Constraints for table `rekapitulasi_pengadaan_sarana_bursa_kerja_online`
--
ALTER TABLE `rekapitulasi_pengadaan_sarana_bursa_kerja_online`
  ADD CONSTRAINT `FK_RELATIONSHIP_20` FOREIGN KEY (`IDTAHUN`) REFERENCES `tahun` (`IDTAHUN`),
  ADD CONSTRAINT `FK_RELATIONSHIP_21` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`);

--
-- Constraints for table `rekapjabatanfungsionaldaerah`
--
ALTER TABLE `rekapjabatanfungsionaldaerah`
  ADD CONSTRAINT `FK_RELATIONSHIP_16` FOREIGN KEY (`IDPROVINSI`) REFERENCES `provinsi` (`IDPROVINSI`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
