-- phpMyAdmin SQL Dump
-- version 4.5.1
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: Jan 05, 2017 at 12:44 AM
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
(2939, 2007, 'Kuala Lumpur', 'Malaysia', 1),
(2940, 2008, 'Kuala Lumpur', 'Malaysia', 2),
(2941, 2009, 'Kuala Lumpur', 'Malaysia', 3),
(2942, 2010, 'Kuala Lumpur', 'Malaysia', 4),
(2943, 2011, 'Kuala Lumpur', 'Malaysia', 5),
(2944, 2012, 'Kuala Lumpur', 'Malaysia', 7),
(2945, 2013, 'Kuala Lumpur', 'Malaysia', 8),
(2946, 2014, 'Kuala Lumpur', 'Malaysia', 9),
(2947, 2015, 'Kuala Lumpur', 'Malaysia', 11111),
(2948, 2007, 'Riyadh', 'Arab Saudi', 9),
(2949, 2008, 'Riyadh', 'Arab Saudi', 9),
(2950, 2009, 'Riyadh', 'Arab Saudi', 9),
(2951, 2010, 'Riyadh', 'Arab Saudi', NULL),
(2952, 2011, 'Riyadh', 'Arab Saudi', 9),
(2953, 2012, 'Riyadh', 'Arab Saudi', 9),
(2954, 2013, 'Riyadh', 'Arab Saudi', 9),
(2955, 2014, 'Riyadh', 'Arab Saudi', 9),
(2956, 2015, 'Riyadh', 'Arab Saudi', 9),
(2957, 2007, 'Hong Kong', 'Hong Kong', 89),
(2958, 2008, 'Hong Kong', 'Hong Kong', 89),
(2959, 2009, 'Hong Kong', 'Hong Kong', 89),
(2960, 2010, 'Hong Kong', 'Hong Kong', 9),
(2961, 2011, 'Hong Kong', 'Hong Kong', 9),
(2962, 2012, 'Hong Kong', 'Hong Kong', 13123),
(2963, 2013, 'Hong Kong', 'Hong Kong', 0),
(2964, 2014, 'Hong Kong', 'Hong Kong', 9),
(2965, 2015, 'Hong Kong', 'Hong Kong', 1);

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
(17, 'Cina', 2011, 123123),
(18, 'Cina', 2012, 33333),
(19, 'Cina', 2013, 99),
(20, 'Cina', 2014, 876),
(21, 'Cina', 2015, 2191255),
(22, 'Jepang', 2011, 1),
(23, 'Jepang', 2012, 8),
(24, 'Jepang', 2013, 9),
(25, 'Jepang', 2014, 1),
(26, 'Jepang', 2015, 8),
(27, 'Korea Selatan', 2011, 8),
(28, 'Korea Selatan', 2012, 9),
(29, 'Korea Selatan', 2013, 123),
(30, 'Korea Selatan', 2014, 9839),
(31, 'Korea Selatan', 2015, 98);

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
(16, 2011, 123123, 'Pertanian'),
(17, 2012, 33333, 'Pertanian'),
(18, 2013, 212312, 'Pertanian'),
(19, 2014, 339393, 'Pertanian'),
(20, 2015, 2191255, 'Pertanian'),
(21, 2011, 1, 'Industri'),
(22, 2012, 8, 'Industri'),
(23, 2013, 9, 'Industri'),
(24, 2014, 1, 'Industri'),
(25, 2015, 8, 'Industri'),
(26, 2011, 8, 'Perdagangan dan Jasa'),
(27, 2012, 9, 'Perdagangan dan Jasa'),
(28, 2013, 1902381290, 'Perdagangan dan Jasa'),
(29, 2014, 9839, 'Perdagangan dan Jasa'),
(30, 2015, 98, 'Perdagangan dan Jasa');

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

--
-- Dumping data for table `detailpkbyjeniskelamin`
--

INSERT INTO `detailpkbyjeniskelamin` (`IDDETAILJENISKELAMIN`, `IDTAHUN`, `PRIA`, `WANITA`) VALUES
(1, 2010, 1927181, 201239120),
(2, 2011, 92512312, 123192309),
(3, 2012, 12312312, 122330),
(4, 2013, 1333333, 22012903),
(5, 2014, 12312312, 2209323),
(6, 2015, 12312312, 23333930);

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
(14, 1, 2010, 1091091),
(15, 1, 2011, 191919),
(16, 1, 2012, 989898),
(17, 1, 2013, 1010),
(18, 1, 2014, 101011),
(19, 1, 2015, 2015),
(20, 2, 2010, 2010),
(21, 2, 2011, 2011),
(22, 2, 2012, 12391),
(23, 2, 2013, 12098),
(24, 2, 2014, 98),
(25, 2, 2015, 98);

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
(17, 'Profesional', 2011, 123123),
(18, 'Profesional', 2012, 33333),
(19, 'Profesional', 2013, 212312),
(20, 'Profesional', 2014, 339393),
(21, 'Profesional', 2015, 2191255),
(22, 'Konsultan', 2011, 1),
(23, 'Konsultan', 2012, 8),
(24, 'Konsultan', 2013, 9),
(25, 'Konsultan', 2014, 1),
(26, 'Konsultan', 2015, 8),
(27, 'Manager', 2011, 8),
(28, 'Manager', 2012, 9),
(29, 'Manager', 2013, 2),
(30, 'Manager', 2014, 9839),
(31, 'Manager', 2015, 98);

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
(7, 2012, 123123),
(8, 2013, 33333),
(9, 2014, 222222);

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
(10, 2014, 1, 2, 3),
(11, 2015, 4, 9, 13),
(12, 2016, 3, 3, 6);

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
(109, 'Januari', 2011, 1),
(110, 'Januari', 2012, 3),
(111, 'Januari', 2013, 1),
(112, 'Januari', 2014, 5),
(113, 'Januari', 2015, 667),
(114, 'Februari', 2011, 2),
(115, 'Februari', 2012, 3),
(116, 'Februari', 2013, 1),
(117, 'Februari', 2014, 5),
(118, 'Februari', 2015, 45),
(119, 'Maret', 2011, 123),
(120, 'Maret', 2012, 3),
(121, 'Maret', 2013, 1),
(122, 'Maret', 2014, 5),
(123, 'Maret', 2015, 45),
(124, 'April', 2011, 131),
(125, 'April', 2012, 3),
(126, 'April', 2013, 1),
(127, 'April', 2014, 5),
(128, 'April', 2015, 43534),
(129, 'Mei', 2011, 231),
(130, 'Mei', 2012, 3),
(131, 'Mei', 2013, 1),
(132, 'Mei', 2014, 5),
(133, 'Mei', 2015, 775),
(134, 'Juni', 2011, 23),
(135, 'Juni', 2012, 3),
(136, 'Juni', 2013, 1),
(137, 'Juni', 2014, 5),
(138, 'Juni', 2015, 6),
(139, 'Juli', 2011, 4),
(140, 'Juli', 2012, 3),
(141, 'Juli', 2013, 1),
(142, 'Juli', 2014, 5),
(143, 'Juli', 2015, 9),
(144, 'Agustus', 2011, 32),
(145, 'Agustus', 2012, 3),
(146, 'Agustus', 2013, 1),
(147, 'Agustus', 2014, 5),
(148, 'Agustus', 2015, 9),
(149, 'September', 2011, 43),
(150, 'September', 2012, 3),
(151, 'September', 2013, 1),
(152, 'September', 2014, 5),
(153, 'September', 2015, 76),
(154, 'Oktober', 2011, 45345),
(155, 'Oktober', 2012, 3),
(156, 'Oktober', 2013, 1),
(157, 'Oktober', 2014, 5),
(158, 'Oktober', 2015, 545456),
(159, 'November', 2011, 45),
(160, 'November', 2012, 3),
(161, 'November', 2013, 1),
(162, 'November', 2014, 5),
(163, 'November', 2015, 879),
(164, 'Desember', 2011, 6),
(165, 'Desember', 2012, 3),
(166, 'Desember', 2013, 1),
(167, 'Desember', 2014, 5),
(168, 'Desember', 2015, 990);

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
(3, 1, 4, 0, 519640000, 2015),
(4, 2, 2, 12390909, 259820000, 2015);

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
(5, 1, 4, 0, 519640000, 2015),
(6, 2, 2, 12390909, 259820000, 2015);

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
(5, 1, 1, 20),
(6, 2, 1, 20),
(7, 3, 2, 40),
(8, 4, 3, 60);

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
(5, 1, 1, 20),
(6, 2, 1, 20),
(7, 3, 2, 40),
(8, 4, 3, 60);

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
(9, 1, 1, 'Dinas Sosial dan Tenaga Kerja', '2013'),
(10, 2, 2, 'Dinas Tenaga Kerja dan Transmigrasi', '2013'),
(11, 3, 3, 'Dinas Sosial dan tenaga Kerja Kota Padang', '2013'),
(12, 4, 4, 'Dinas Tenaga Kerja, Transmigrasi dan Kependudukan', '2013');

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

--
-- Dumping data for table `lokerbyjeniskelamin`
--

INSERT INTO `lokerbyjeniskelamin` (`IDLOKERJK`, `IDTAHUN`, `JUMLAH`, `PRIA`, `WANITA`) VALUES
(1, 2010, NULL, 1927181, 201239120),
(2, 2011, NULL, 92512312, 123192309),
(3, 2012, NULL, 12312312, 122330),
(4, 2013, NULL, 1333333, 22012903),
(5, 2014, NULL, 12312312, 2209323),
(6, 2015, NULL, 12312312, 23333930);

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

--
-- Dumping data for table `lokerbyprovinsi`
--

INSERT INTO `lokerbyprovinsi` (`IDLOKER`, `IDTAHUN`, `IDPROVINSI`, `JUMLAH`) VALUES
(1, 2010, 1, 1091091),
(2, 2011, 1, 191919),
(3, 2012, 1, 989898),
(4, 2013, 1, 1010),
(5, 2014, 1, 101011),
(6, 2015, 1, 2015),
(7, 2010, 2, 2010),
(8, 2011, 2, 2011),
(9, 2012, 2, 12391),
(10, 2013, 2, 12098),
(11, 2014, 2, 98),
(12, 2015, 2, 98);

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
(9, 1, 2, '2015'),
(10, 2, 2, '2015'),
(11, 3, 2, '2015'),
(12, 4, 5, '2015');

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
(4, 1, 18, 13, 3, 16, 2, 2015),
(5, 2, 22, 0, 22, 22, 0, 2015),
(6, 3, 23, 23, 0, 23, 0, 2015);

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
(4, 1, 1, 30, '2015-01-01', '2015-01-21', 'a'),
(5, 2, 2, 30, '2015-01-01', '2015-02-01', 'b'),
(6, 3, 1, 30, '2015-01-01', '2015-03-01', 'v');

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
(4, 1, 1, 30, '2015-01-01', '2015-01-21'),
(5, 2, 2, 30, '2015-01-01', '2015-02-01'),
(6, 3, 1, 30, '2015-01-01', '2015-03-01');

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
(8, 1, 1, 30, '2015-12-21', '2015-01-01', 'Test'),
(9, 2, 1, 30, '2015-01-01', '2015-01-01', 'Test2');

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

--
-- Dumping data for table `pemenuhantkbyjk`
--

INSERT INTO `pemenuhantkbyjk` (`IDPEMENUHANTKBYJK`, `IDTAHUN`, `JUMLAH`, `PRIA`, `WANITA`) VALUES
(2, 2010, NULL, 1927181, 201239120),
(3, 2011, NULL, 92512312, 123192309),
(4, 2012, NULL, 12312312, 122330),
(5, 2013, NULL, 1333333, 22012903),
(6, 2014, NULL, 12312312, 2209323),
(7, 2015, NULL, 12312312, 23333930);

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

--
-- Dumping data for table `pemenuhantkbyprovinsi`
--

INSERT INTO `pemenuhantkbyprovinsi` (`IDPEMENUHAN`, `IDPROVINSI`, `IDTAHUN`, `JUMLAH`) VALUES
(2, 1, 2010, 106693),
(3, 1, 2011, 9808),
(4, 1, 2012, 14395),
(5, 1, 2013, 19194),
(6, 1, 2014, 22256),
(7, 1, 2015, 12628),
(8, 2, 2010, 13112312),
(9, 2, 2011, 1233132),
(10, 2, 2012, 987),
(11, 2, 2013, 987),
(12, 2, 2014, 987),
(13, 2, 2015, 7777),
(14, 3, 2010, 33123),
(15, 3, 2011, 33),
(16, 3, 2012, 2222),
(17, 3, 2013, 222),
(18, 3, 2014, 1233123),
(19, 3, 2015, 44589),
(20, 4, 2010, 33444),
(21, 4, 2011, 333),
(22, 4, 2012, 33),
(23, 4, 2013, 111),
(24, 4, 2014, 12),
(25, 4, 2015, 99),
(26, 5, 2010, 1123),
(27, 5, 2011, 333),
(28, 5, 2012, 33),
(29, 5, 2013, 33),
(30, 5, 2014, 77),
(31, 5, 2015, 88),
(32, 6, 2010, 86767),
(33, 6, 2011, 67088),
(34, 6, 2012, 30912),
(35, 6, 2013, 66560),
(36, 6, 2014, 90344),
(37, 6, 2015, 334060);

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
(20, 1, 2, 40, 40, 2013),
(21, 2, 2, 40, 40, 2014),
(22, 1, 2, 40, 40, 2013),
(23, 2, 1, 20, 20, 2014);

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
(133, 'Januari', 1, 123, 124, 2012),
(134, 'Februari', 2, 12, 14, 2012),
(135, 'Maret', 3, 312, 315, 2012),
(136, 'April', 4, 312, 316, 2012),
(137, 'Mei', 2, 4, 6, 2012),
(138, 'Juni', 2, 3, 5, 2012),
(139, 'Juli', 2, 4, 6, 2012),
(140, 'Agustus', 2, 3, 5, 2012),
(141, 'September', 2, 43, 45, 2012),
(142, 'Oktober', 2, 900, 902, 2012),
(143, 'November', 90, 3, 93, 2012),
(144, 'Desember', 2, 3, 5, 2012);

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
(5, 2012, 6.74),
(6, 2013, 6.73),
(7, 2014, 7.4);

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
(28, 2003, 2, 5, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(29, 2005, 2, 15, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(30, 2006, 2, 5, 9, 1, 8, 9, 9, 9, 9, 19, 9, 9, 9, 9, 9, 9),
(31, 2007, 2, 5, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 19, 9, 9, 9),
(32, 2008, 2, 5, 29, 1, 8, 9, 9, 19, 9, 9, 9, 9, 9, 9, 9, 9),
(33, 2009, 2, 5, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(34, 2011, 2, 5, 9, 1, 48, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(35, 2012, 2, 5, 9, 1, 8, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9, 9),
(36, 2013, 2, 5, 9, 1, 8, 9, 9, 9, 9, 19, 9, 9, 9, 9, 9, 9);

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
(7, 1, 18, 13, 3, 2015),
(8, 2, 22, 0, 22, 2015),
(9, 3, 23, 23, 0, 2015);

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
(30, 1, 2009, 0),
(31, 1, 2011, 0),
(32, 1, 2012, 0),
(33, 1, 2013, 0),
(34, 1, 2015, 0),
(35, 2, 2009, 1),
(36, 2, 2011, 0),
(37, 2, 2012, 0),
(38, 2, 2013, 0),
(39, 2, 2015, 0),
(40, 3, 2009, 0),
(41, 3, 2011, 0),
(42, 3, 2012, 1),
(43, 3, 2013, 0),
(44, 3, 2015, 1),
(45, 4, 2009, 0),
(46, 4, 2011, 0),
(47, 4, 2012, 0),
(48, 4, 2013, 0),
(49, 4, 2015, 0);

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
(7, 1, 0, 0, 4, 4, 3, 0, 0, 0, 11),
(8, 2, 0, 0, 0, 0, 0, 0, 0, 0, 0),
(9, 3, 0, 0, 4, 3, 2, 0, 0, 0, 9),
(10, 4, 0, 0, 1, 0, 0, 0, 0, 0, 1),
(11, 5, 0, 0, 0, 1, 0, 0, 0, 0, 1),
(12, 6, 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
(16, 'DIREKTORAT PENGENDALIAN PENGGUNAAN TENAGA ASING', 0, 0, 4, 4, 3, 0, 0, 0, 11),
(17, 'DIREKTORAT PENEMPATAN TENAGA KERJA DALAM NEGERI', 0, 0, 0, 0, 0, 0, 0, 0, 0),
(18, 'DIREKTORAT PENEMPATAN DAN PERLINDUNGAN TENAGA KERJA LUAR NEGERI', 0, 0, 4, 3, 2, 0, 0, 0, 9),
(19, 'DIREKTORAT PENGEMBANGAN PASAR KERJA', 0, 0, 1, 0, 0, 0, 0, 0, 1),
(20, 'DIREKTORAT PENGEMBANGAN DAN PERLUASAN KESEMPATAN KERJA', 0, 0, 0, 1, 0, 0, 0, 0, 1),
(21, 'BALAI BESAR PENGEMBANGAN PASAR KERJA DAN PERLUASAN KESEMPATAN KERJA LEMBANG', 0, 0, 0, 0, 0, 0, 0, 0, 0);

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
  MODIFY `IDANGGARANATASE` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2966;
--
-- AUTO_INCREMENT for table `daftarizinmempekerjakantkakategorinegara`
--
ALTER TABLE `daftarizinmempekerjakantkakategorinegara`
  MODIFY `IDDAFTARIZIN2` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `daftarizinmempekerjakantkakategorisektor`
--
ALTER TABLE `daftarizinmempekerjakantkakategorisektor`
  MODIFY `IDDAFTARIZIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=31;
--
-- AUTO_INCREMENT for table `detailpkbyjeniskelamin`
--
ALTER TABLE `detailpkbyjeniskelamin`
  MODIFY `IDDETAILJENISKELAMIN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `detailpkbyprovinsi`
--
ALTER TABLE `detailpkbyprovinsi`
  MODIFY `IDDETAIL` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=26;
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
  MODIFY `IDIZINJABATAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=32;
--
-- AUTO_INCREMENT for table `jumlahpenempatantki`
--
ALTER TABLE `jumlahpenempatantki`
  MODIFY `IDJUMLAHPENEMPATANTKI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `jumlahpptkis`
--
ALTER TABLE `jumlahpptkis`
  MODIFY `IDJUMLAHPPTKIS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `jumlahrencanapenggunaantka`
--
ALTER TABLE `jumlahrencanapenggunaantka`
  MODIFY `IDJUMLAHRENCANA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=169;
--
-- AUTO_INCREMENT for table `lokasidanadroppingsektorjasadanindustrikreatif`
--
ALTER TABLE `lokasidanadroppingsektorjasadanindustrikreatif`
  MODIFY `IDSEKTORJASA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;
--
-- AUTO_INCREMENT for table `lokasidanadroppingsektorpertaniandanmaritim`
--
ALTER TABLE `lokasidanadroppingsektorpertaniandanmaritim`
  MODIFY `IDLOKASIDANADROPPING` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lokasipemberdayaantkklansia`
--
ALTER TABLE `lokasipemberdayaantkklansia`
  MODIFY `IDTKKLANSIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lokasipemberdayaantkkmuda`
--
ALTER TABLE `lokasipemberdayaantkkmuda`
  MODIFY `IDLOKASIPEMBERDAYAANTKK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;
--
-- AUTO_INCREMENT for table `lokasipengembanganruangpelayanan`
--
ALTER TABLE `lokasipengembanganruangpelayanan`
  MODIFY `IDRINCIAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lokerbyjeniskelamin`
--
ALTER TABLE `lokerbyjeniskelamin`
  MODIFY `IDLOKERJK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `lokerbyprovinsi`
--
ALTER TABLE `lokerbyprovinsi`
  MODIFY `IDLOKER` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `lptks`
--
ALTER TABLE `lptks`
  MODIFY `IDLPTKS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `pembekalanmotivator`
--
ALTER TABLE `pembekalanmotivator`
  MODIFY `IDPEMBEKALANMOTIVATOR` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pembekalantenagakerjadisabilitas`
--
ALTER TABLE `pembekalantenagakerjadisabilitas`
  MODIFY `IDPEMBEKALAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pembekalantklansia`
--
ALTER TABLE `pembekalantklansia`
  MODIFY `IDPEMBEKALANTKLANSIA` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;
--
-- AUTO_INCREMENT for table `pemberdayaantenagakerjamuda`
--
ALTER TABLE `pemberdayaantenagakerjamuda`
  MODIFY `IDPEMBERDAYAANTKM` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
--
-- AUTO_INCREMENT for table `pemenuhantkbyjk`
--
ALTER TABLE `pemenuhantkbyjk`
  MODIFY `IDPEMENUHANTKBYJK` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pemenuhantkbyprovinsi`
--
ALTER TABLE `pemenuhantkbyprovinsi`
  MODIFY `IDPEMENUHAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=38;
--
-- AUTO_INCREMENT for table `pendayagunaantks`
--
ALTER TABLE `pendayagunaantks`
  MODIFY `IDPENDAYAGUNAATKS` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=24;
--
-- AUTO_INCREMENT for table `penempatanakad`
--
ALTER TABLE `penempatanakad`
  MODIFY `IDPENEMPATANAKAD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=145;
--
-- AUTO_INCREMENT for table `penerimaanremitansitki`
--
ALTER TABLE `penerimaanremitansitki`
  MODIFY `IDPENERIMAANREMITANSI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;
--
-- AUTO_INCREMENT for table `pengadaansaranabursakerjaonline`
--
ALTER TABLE `pengadaansaranabursakerjaonline`
  MODIFY `IDBKO` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=37;
--
-- AUTO_INCREMENT for table `pengembangantenagakerjarentan`
--
ALTER TABLE `pengembangantenagakerjarentan`
  MODIFY `IDPENGEMBANGAN` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;
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
  MODIFY `IDREKAPITULASI` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=50;
--
-- AUTO_INCREMENT for table `rekapjabatanfungsionaldaerah`
--
ALTER TABLE `rekapjabatanfungsionaldaerah`
  MODIFY `IDREKAPJFD` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
--
-- AUTO_INCREMENT for table `rekapjabatanfungsionalpusat`
--
ALTER TABLE `rekapjabatanfungsionalpusat`
  MODIFY `IDREKAP` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;
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
