-- phpMyAdmin SQL Dump
-- version 4.9.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 30 Sep 2019 pada 08.31
-- Versi server: 10.2.23-MariaDB
-- Versi PHP: 7.2.18

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `u218634996_sk`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `ADMIN`
--

CREATE TABLE `ADMIN` (
  `ADMIN_ID` int(11) NOT NULL,
  `ADMIN_USERNAME` varchar(15) DEFAULT NULL,
  `ADMIN_PASSWORD` char(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `ADMIN`
--

INSERT INTO `ADMIN` (`ADMIN_ID`, `ADMIN_USERNAME`, `ADMIN_PASSWORD`) VALUES
(3, 'admin', '21232F297A57A5A743894A0E4A801FC3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `GURU`
--

CREATE TABLE `GURU` (
  `GURU_ID` int(11) NOT NULL,
  `GURU_USERNAME` varchar(15) DEFAULT NULL,
  `GURU_PASSWORD` varchar(50) DEFAULT NULL,
  `GURU_NAMA` varchar(25) DEFAULT NULL,
  `GURU_NIP` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `GURU`
--

INSERT INTO `GURU` (`GURU_ID`, `GURU_USERNAME`, `GURU_PASSWORD`, `GURU_NAMA`, `GURU_NIP`) VALUES
(1, '196705241994122', 'f18945096d3e6fe958497eb86c3e172e', 'Dra. Ritawati Tanjung', '196705241994122'),
(2, '196211221987032', '02bdae1c60f9807ad026bb65cb7c0f5b', 'Puji Harti, S.Pd', '196211221987032'),
(3, '196503091993031', '947825935c50e42797d4ba5b6d83b669', 'Drs. Imrawardi', '196503091993031'),
(4, '197811012008012', 'b33e835a5b80f4ea050876f037f1e240', 'Tri Noviastuti, S.Pd', '197811012008012'),
(5, '197301281997022', 'cc379d015a1bbf82adc8c4ea78287cab', 'Hj. Tina Mailinda, S.Pd', '197301281997022'),
(6, '196707231994122', '173fb406411e49e115a5a7d75c74c0c4', 'Dra. Hj. Daflina', '196707231994122'),
(8, '196705111993032', 'ae8bd646c130d8dfcdb70aa5b2ad5df3', 'Dra. Syaprinawati', '196705111993032'),
(9, '196407011993032', 'c34c6313bc76daa89c517af0e736a0a2', 'Dra. Juliar', '196407011993032'),
(10, '196901151995122', 'c93c83173ea50620d924b00f8fe95ee6', 'Dra. Syari Andayani', '196901151995122'),
(11, '196904231994022', '78e30c11d0b83041608b459e6318bd3c', 'Hj. Apriani, S.Pd', '196904231994022'),
(12, '12', 'c20ad4d76fe97759aa27a0c99bff6710', 'Drs. Muhammad Arief', '12'),
(13, '196605051992032', '7e9f37e7f5b1f13af168af3e2fc89b2e', 'Zulfatni, MM', '196605051992032'),
(14, '196701051993032', 'd96189d60cabeb76f9821bb2187a8a69', 'Nursyawiyah, M.Pd', '196701051993032'),
(15, '196402101987032', '0e2c236574dff9e38ce814ae514a158f', 'Hj. Raihana, S.Pd', '196402101987032'),
(16, '196404131991032', '629b56daa34ffa47bec3721e124fbb82', 'Dra. Hj. Nurninawati', '196404131991032'),
(17, '196903011997022', 'a446688bbb27eb12a266e64d85137cb6', 'Dra. Hj. Suparti', '196903011997022'),
(18, '196705121994011', '1b3971209fba5dc8556d60c334bcadfb', 'Drs. Bambang Atlas W', '196705121994011'),
(19, '19', '1f0e3dad99908345f7439f8ffabdffc4', 'Syaelendra, S. Pd', '19'),
(20, '196912101995012', 'ae20e4cfff53be53c636e8e749f95818', 'Dewi Hastuti, M.Pd', '196912101995012'),
(21, '198109182009021', '28bf134955a2645c3a1f62605f902b30', 'Rochman Budi Wisaksono, S', '198109182009021'),
(22, '197707212010011', '7900d20a77886ddadf05c24ccf306389', 'Yayan Suarghana, S.Kom', '197707212010011'),
(23, '197403132014071', 'decb7c2d18b77e356cf264bdc63f04b2', 'Pince Utama, S.Kom', '197403132014071'),
(24, '197909052011021', 'd5409d250cea1c5bdce1cee0943989b0', 'Mismar, S.Kom', '197909052011021'),
(25, '198711182015031', 'ce9ede76f2a230a469c4d61c2cdbfb39', 'Gunarso, S.Pd', '198711182015031'),
(26, '198407162010012', '69f8bc8be265947d56a992ed3a25ebfe', 'Prin Stianingsih, ST', '198407162010012'),
(27, '197401251998032', '7fe9535beb0fe9d573c27e091c59d514', 'FITRIANI', '197401251998032'),
(28, '28', '33e75ff09dd601bbe69f351039152189', 'FIDRA YENI', '28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `JURUSAN`
--

CREATE TABLE `JURUSAN` (
  `JURUSAN_ID` int(11) NOT NULL,
  `JURUSAN` varchar(30) DEFAULT NULL,
  `JURUSAN_WARNA` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `JURUSAN`
--

INSERT INTO `JURUSAN` (`JURUSAN_ID`, `JURUSAN`, `JURUSAN_WARNA`) VALUES
(1, 'TEKNIK INFORMATIKA', '#d41818'),
(2, 'Administrasi Perkantoran', '#d5e052'),
(3, 'Penjualan', '#52e0a4'),
(4, 'Pariwisata', '#dd52e0'),
(5, 'Akuntansi', '#5271e0');

-- --------------------------------------------------------

--
-- Struktur dari tabel `JURUSAN_LOCATION`
--

CREATE TABLE `JURUSAN_LOCATION` (
  `JURUSAN_LOCATION_ID` int(15) NOT NULL,
  `JURUSAN_ID` int(15) NOT NULL,
  `LOCATION_ID` int(15) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `JURUSAN_LOCATION`
--

INSERT INTO `JURUSAN_LOCATION` (`JURUSAN_LOCATION_ID`, `JURUSAN_ID`, `LOCATION_ID`) VALUES
(1, 2, 3),
(2, 2, 4),
(3, 2, 5),
(4, 2, 6),
(5, 2, 7),
(6, 2, 8),
(7, 2, 9),
(8, 2, 10),
(9, 2, 11),
(10, 1, 11),
(11, 2, 12),
(12, 1, 12),
(13, 2, 13),
(14, 2, 14),
(15, 3, 14),
(16, 2, 15),
(17, 2, 16),
(18, 2, 17),
(19, 2, 18),
(20, 2, 19),
(21, 3, 19),
(22, 2, 20),
(23, 2, 21),
(24, 2, 22),
(25, 2, 23),
(26, 1, 23),
(27, 2, 24),
(28, 2, 25),
(29, 2, 26),
(30, 2, 27),
(31, 2, 28),
(32, 2, 29),
(33, 2, 30),
(34, 2, 31),
(35, 2, 32),
(36, 2, 33),
(37, 2, 34),
(38, 2, 35),
(39, 2, 36),
(40, 2, 37),
(41, 2, 38),
(42, 3, 39),
(43, 3, 40),
(44, 3, 41),
(45, 3, 42),
(46, 3, 43),
(47, 3, 44),
(48, 3, 45),
(49, 3, 46),
(50, 3, 47),
(51, 3, 48),
(52, 3, 49),
(53, 3, 50),
(54, 3, 51),
(55, 3, 52),
(56, 3, 53),
(57, 3, 54),
(58, 3, 55),
(59, 3, 56),
(60, 3, 57),
(61, 3, 58),
(62, 3, 59),
(63, 3, 60),
(64, 5, 61),
(65, 5, 62),
(66, 5, 63),
(67, 5, 64),
(68, 5, 65),
(69, 5, 66),
(70, 2, 66),
(71, 5, 67),
(72, 5, 68),
(73, 5, 69),
(74, 5, 70),
(75, 5, 71),
(76, 5, 72),
(77, 5, 73),
(78, 5, 74),
(79, 5, 75),
(80, 5, 76),
(81, 5, 77),
(82, 5, 78),
(83, 5, 79),
(84, 5, 80),
(85, 5, 81),
(86, 1, 82),
(87, 1, 83),
(88, 1, 84),
(89, 1, 85),
(90, 1, 86),
(91, 1, 87),
(92, 2, 87),
(93, 1, 88),
(94, 2, 88),
(95, 1, 89),
(96, 2, 89),
(97, 1, 90),
(98, 1, 91),
(99, 2, 91),
(100, 1, 92),
(101, 3, 92),
(102, 1, 93),
(103, 1, 94),
(104, 1, 95),
(105, 1, 96),
(106, 1, 97),
(107, 1, 98),
(108, 1, 99),
(109, 1, 100),
(110, 1, 101),
(111, 1, 102),
(112, 1, 103),
(113, 1, 104),
(114, 1, 105),
(115, 2, 105),
(116, 1, 106),
(117, 2, 106),
(118, 4, 107),
(119, 4, 108),
(120, 4, 109),
(121, 4, 110),
(122, 4, 111),
(123, 4, 112),
(124, 4, 113),
(125, 4, 114),
(126, 4, 115),
(127, 4, 116),
(128, 4, 117),
(129, 4, 118),
(130, 4, 119),
(131, 4, 120),
(132, 4, 121),
(133, 4, 122),
(134, 4, 123),
(135, 4, 124);

-- --------------------------------------------------------

--
-- Struktur dari tabel `LAPORAN`
--

CREATE TABLE `LAPORAN` (
  `LAPORAN_ID` int(11) NOT NULL,
  `SISWA_ID` int(11) NOT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `LAPORAN_TANGGAL` date NOT NULL,
  `LAPORAN_PENANGGUNG_JAWAB` varchar(50) NOT NULL,
  `LAPORAN` text NOT NULL,
  `LAPORAN_STATUS` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `LOCATION`
--

CREATE TABLE `LOCATION` (
  `LOCATION_ID` int(11) NOT NULL,
  `LOCATION_USERNAME` varchar(50) NOT NULL DEFAULT '0',
  `LOCATION_PASSWORD` varchar(50) NOT NULL DEFAULT '0',
  `LOCATION_NAME` varchar(60) DEFAULT NULL,
  `LOCATION_LAT` char(40) DEFAULT NULL,
  `LOCATION_LNG` char(40) DEFAULT NULL,
  `LOCATION_ADDRESS` text DEFAULT NULL,
  `LOCATION_KUOTA` int(11) DEFAULT NULL,
  `LOCATION_TOTAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `LOCATION`
--

INSERT INTO `LOCATION` (`LOCATION_ID`, `LOCATION_USERNAME`, `LOCATION_PASSWORD`, `LOCATION_NAME`, `LOCATION_LAT`, `LOCATION_LNG`, `LOCATION_ADDRESS`, `LOCATION_KUOTA`, `LOCATION_TOTAL`) VALUES
(1, '20190804025222', '61c1b00e5fe18ca18fa4a2c7a4d0f3bd', 'PT IKPP Perawang ', '0.6719103531624223', '101.6078984225169', 'Perawang', 6, 0),
(4, '20190804025416', '1819bcd1c775b65152bfa044f67edb58', 'Politeknik Caltex', '0.5720419765968408', '101.42566960304977', 'Jl. Umban Sari, Rumbai', 2, 2),
(5, '20190804025644', 'dcaf0be0a720f943eb04ebd5f1d590ef', 'PT Pertamina Unit Pemasaran', '0.5286651991306801', '101.45451914984734', 'Jl. Sisingamangaraja', 2, 0),
(6, '20190804025841', '588b0a570b832195d07031b7d4f4e577', 'Kantor Bea & Cukai ', '0.5377798726344892', '101.44724344834687', 'Jl. Jend. Sudirman', 2, 0),
(7, '20190804030240', 'bbff2b95dd121049028593b2f248c310', 'PT Sucofindo', '0.5191606230849541', '101.4443822647445', 'Jl. Jend.  A. Yani No. 79', 2, 0),
(9, '20190804030551', 'dba4fb190982b5a5f0b6990ea478da2b', 'PT Surya Dumai', '0.5122936708761185', '101.44890168216081', 'Jl. Jend. Sudirman', 2, 0),
(10, '20190804030902', '8853b8b079c02126bed53d3a99965bb2', 'PT Kimia Farma', '0.5281054375311022', '101.45850765751676', 'Jl. Sisingamangaraja', 3, 0),
(12, '20190804031130', '18ad556501ea3ff88060e4fdc0fd70d6', 'BPJS Ketenagakerjaan', '0.5298519840755659', '101.46127083571629', 'Jl. Zainal Abidin', 3, 0),
(13, '20190804031442', '0cfd00b6eb23f52f8ab387311a0840b5', 'Badan Kearsipan & Pustaka', '0.5195461538372134', '101.45805166102949', 'Jl. Sutomo', 2, 0),
(14, '20190804031753', '68e2a94fbce1a589d4b83615c7971ecf', 'PT. Panca EKa & Diamond Raya ', '0.5316261473098297', '101.45599419716747', 'Jl. Sutomo', 4, 0),
(15, '20190804032029', '583d24de6ce4db6f3b79bf3f21906430', 'PT. PLN Area Pekanbaru', '0.536294999897419', '101.45099363755436', 'Jl. Setia Budi', 2, 0),
(16, '20190804032213', 'b3f80cdeb83a6c087364324ff5b94758', 'Balitbang Provinsi Riau', '0.5181020111301039', '101.45185286644848', 'Jl. Diponegoro', 2, 0),
(17, '20190804032457', 'e915a7ce7b39a13a080c6cef748b4f80', 'BKN Regional XII Provinsi Riau', '0.5073439339131376', '101.50727815926075', 'Jl. Hangtuah ', 2, 1),
(18, '20190804032711', '7ece3399c38ef449ba27d1521394e5a5', 'Kantor Badan Ketahanan Pangan', '0.5322276067604921', '101.45976739469917', 'Jl. Kuantan Raya', 2, 0),
(19, '20190804032953', 'bc582c6cd5ff9207fc9fc5c113decf57', 'Perum Bulog Divre Riau & Kepri', '0.5189490515762158', '101.44499198533596', 'Jl. Kuantan Raya', 4, 0),
(21, '20190804033331', '8ee02d428f43cdd74c02bb755c71031d', 'Dinas Sosial Provinsi Riau', '0.5193567306106139', '101.44767178455369', 'Jl. Jendral Sudirman', 2, 0),
(24, '20190804034759', '186816e7bdf93b6addf1d5bf10efddc1', 'BPK', '0.4919256321366282', '101.45547982072459', 'Jl. Jend. Sudirman', 3, 0),
(25, '20190804035226', 'b8ce92408be84fef9e3d95760fd80e63', 'Bapedda Provinsi Riau', '0.5183778063719066', '101.45047228317709', 'Jl. Gajah Mada', 2, 0),
(26, '20190804035619', '2200670738016c7083a7ea344e35434e', 'Kantor BPTPM Kota Pekanbaru', '0.5136078796696404', '101.44657761091369', 'Jl. Cut Nyak Dien', 2, 0),
(27, '20190804035725', '4a9e139fdd67bd58872b3b44549c476c', 'Kantor DJKN ', '0.5102455715156347', '101.44741215510294', 'Jl. Pepaya', 2, 0),
(28, '20190804035903', '3f21f65911638c993d036c5780fcb15b', 'BPKP Perwakilan Riau ', '0.4811977067998541', '101.45380090456457', 'Jl. Jend. Sudirman', 2, 0),
(29, '20190804040106', '13db6c7fc824d793a58170fcdb91e16e', 'Badan Statistik Provinsi Riau', '0.5099877753465679', '101.45471331663431', 'Jl. Pattimura', 2, 0),
(30, '20190804040323', '2bc443ad1aa6c44c25729eca2160a485', 'DInas Kesehatan Provinsi RIau', '0.5138626164215573', '101.44553483929487', 'Jl. Cut Nyak Dien', 2, 0),
(31, '20190804040819', '0a090a8f7a16187a5fe2a1ca90b0127e', 'Kantor DPRD Kota Pekanbaru', '0.5057332046198703', '101.45111375022681', 'Jl. Jend. Sudirman', 2, 0),
(32, '20190804041217', '60f2fcb846d815ee8ed89df5c55fe252', 'Dinas Perhubungan Provinsi Riau', '0.5122408250888685', '101.4478817302734', 'Jl. Jend. Sudirman', 2, 0),
(33, '20190804041351', '1587fb667b02bb07ce304c1dd7f95636', 'Sekda Provinsi Riau', '0.507959225273067', '101.45074645522983', 'Jl. Jend. Sudirman', 2, 0),
(34, '20190804041521', 'da926c08aa891582ea3374f0cf675134', 'Sekda Kota Pekanbaru', '0.5080557810022117', '101.45076791290195', 'Jl. Jend. Sudirman', 2, 0),
(35, '20190804041803', '99aeaadbcc361e98a949cc98699cc3d2', 'Dinas Pekerjaan Umum ', '0.4762942341230199', '101.3950081402436', 'Jl. SM Amin', 3, 0),
(37, '20190804042237', 'dce6a476fffb63be50891dd1a9bf7902', 'PTPN V', '0.46956827933101186', '101.42539048567417', 'Jl. Rambutan', 2, 0),
(39, '20190804042719', '1011a746e18a953082fc68b91565b628', 'Matahari Dept. Store Mall SKA', '0.4995762212258062', '101.41810472588988', 'Jl. Soekarno Hatta', 14, 0),
(40, '20190804043246', '32410581f692ae7443ac872804372dd4', 'PT Surya Gemilang Riau Perkasa Hyundai', '0.5052611961134806', '101.43339243717494', 'Jl. Tuanku Tambusai', 2, 0),
(42, '20190804043455', 'f7f9a5508783b2b619df8198742b1201', 'Hypermart Mall SKA', '0.4996700949721515', '101.41805791296068', 'Jl. Soekarno Hatta', 14, 0),
(43, '20190804043537', '2ffb8adfe960eabc3d94c29775255882', 'Toko Buku Gramedia ', '0.5104018039934636', '101.44949822220953', 'Jl. Jend. Sudirman', 10, 0),
(44, '20190804043632', '24f4ba12eb54cde51ab4ccc0915ca6a6', 'Toko Buku Gramedia Mall Pekanbaru', '0.5317122676570029', '101.44824081100525', 'Jl. Teuku Umar', 4, 0),
(45, '20190804043840', '13a485a7b7630cdacea4492914767bce', 'Toko Toba Makmur', '0.5263575075402216', '101.44773684907705', 'Jl. Jend. Sudirman', 2, 0),
(46, '20190804044410', 'e9a2ea0a8fc200d68ca9aac3c224d737', 'Toko Urika', '0.4936383687913619', '101.4843354234472', 'Jl. Harapan raya', 1, 0),
(47, '20190804044519', '74955b918ae089f0ad77b74bbf50cf2c', 'Hypermart Mall Ciputra Seraya', '0.535783349011053', '101.43023015465589', 'Jl. Riau', 8, 0),
(48, '20190804044845', '6d56b13697fe2bf0eff9a8cd3e4a1876', 'PT Wahana Wirawan Riau', '0.4801364066132796', '101.41883688513191', 'Jl. Soekarno Hatta ', 3, 0),
(49, '20190804045050', '6b75b23366ca67f782213c7fe9a7d583', 'PT Agung Toyota Auto Mall ', '0.5077167044314091', '101.41919894143939', 'Jl. Soekarno Hatta ', 2, 0),
(50, '20190804045248', '3db60cd1b96c2d74f73ef618fb814287', 'CV Riau Berlian', '0.5169373093779035', '101.42686767037958', 'Jl. Durian', 1, 0),
(51, '20190804045401', 'f1851f487f0d16dbfe0f28b033ea2c54', 'Matahari Dept. Store Mall Ciputra Seraya', '0.5358476773048652', '101.43019880633801', 'Jl. Riau', 15, 0),
(52, '20190804045825', '2c626dfd37a9e6d9692f8eb928af5f0b', 'Toko Batam Jaya Elektronik', '0.5020345814231268', '101.42334152944389', 'Jl. Tuanku Tambusai', 2, 0),
(53, '20190804045959', '4ae5a1a714b17ca36d87b719dd3dd618', 'PT. Capella Nusantara', '0.5095266212861316', '101.41939172521235', 'Jl. Soekarno Hatta', 1, 0),
(54, '20190804050127', 'f1f3be50f9291f47c306e90356060b3f', 'PT Tribuana ', '0.5354823680208268', '101.43440731801094', 'Jl. Riau', 2, 0),
(55, '20190804050343', '99f444733e60963c2dcb51ee9256d17a', 'PT. Arista Auto Prima Honda ', '0.4835413924583515', '101.45381687209012', 'Jl. Jend. Sudirman', 2, 0),
(56, '20190804050513', 'f2c8f8c67085bb109b9fa3b954833f2c', 'CV. Citra Honda Nusantara', '0.5058702853045705', '101.45093793980779', 'Jl. Jend. Sudirman', 3, 0),
(57, '20190804050857', '38380776d7211c8542e002ca3122cacc', 'PT. Mahkota Motor', '0.42993058016532476', '101.44210236612709', 'Jl. Kaharuddin Nasution', 2, 0),
(58, '20190804051048', '1dc4bfe793d508f5b4b21cbc5492e2e6', 'Cv. Sumber Rezeki Motor', '0.5233532032688878', '101.47339588729665', 'Jl. Hangtuah', 2, 0),
(61, '20190804051649', '0f9df3cb6dd1bcc08141686be7dbb0e3', 'PT. JNE', '0.5286585777090482', '101.45052060484889', 'Jl. Sisingamangaraja', 2, 0),
(62, '20190804051742', 'fe444d250187ce71ad78bff078144e50', 'BTN Cabang Rumbai ', '0.5606079009661558', '101.44405191298577', 'Jl. Sekolah', 2, 0),
(63, '20190804052223', '6c6b4b623d2b8c32a808fa0c9f5c4ce9', 'UD Indoraya', '0.5319127960519813', '101.44612907432021', 'Jl. M Yamin', 1, 0),
(64, '20190804052405', '1cdd95d666efbe58bb0106051079aa6b', 'Pasar Buah Pekanbaru ', '0.5352053163054137', '101.44738053437324', 'Jl. Jend. Sudirman', 2, 0),
(65, '20190804052629', 'dbe92dd8a6c64bf2648ec2e30549e84a', 'PT. Riau Belia Karya Mandiri', '0.5411143183316877', '101.45562876714395', 'Jl. Tanjung Batu', 3, 0),
(66, '20190804052841', '22ed6b3e4ce7d99ccf21434d44702583', 'SMKN 1 Pekenbaru ', '0.5260025070019403', '101.45888913888486', 'Jl. Semeru No. 16 ', 2, 0),
(67, '20190804053114', 'b7ce8c7dec04551a692482624ee55938', 'Kantor Akuntan Hardi & Rekan', '0.5046004763442985', '101.4303641393781', 'Jl. Pembangunan', 3, 0),
(68, '20190804053324', 'cbc3bd5b5a2f4738939e5a1619b154f2', 'CV Vira Rimba Jaya ', '0.5045015737217919', '101.4312455803156', 'Jl. Tuanku Tambusai', 4, 0),
(69, '20190804053654', '6c8b3a2f22e77255cb610bbabe0d0fc7', 'PT. Hesa Pratama ', '0.5053760237209635', '101.43764566630126', 'Jl. Paus', 2, 0),
(70, '20190804054213', 'cc3209faeb5e259d71bc7d74dfff885c', 'PT. Lippo General Insurance ', '0.5205250359871573', '101.44360704347491', 'Jl. Ahmad Yani', 3, 0),
(71, '20190804054646', '1eaa3abcb3ac93f8534ab2b330d6fb64', 'PT. Sarana Pembangunan ', '0.5122012431329298', '101.45228916546331', 'Jl. Diponegoro', 2, 0),
(72, '20190804054751', 'e4d24cfae2d8b9c4feb08252edbd51cb', 'RS Eka Hospital', '0.48235160261585763', '101.41972534591333', 'Jl. Soekarno Hatta', 3, 1),
(73, '20190804054957', '74dcaea2be8aae94bb36c283385b1a13', 'Penerbit Erlangga ', '0.506146248704182', '101.43518323078753', 'Jl. Tuanku Tambusai ', 2, 0),
(74, '20190804055301', '1affabc069cd0eaba2d7535bb2401bca', 'Kantor Pelayanan Pajak ', '0.5157365457347655', '101.44775168504567', 'Jl. Jend. Sudirman', 8, 0),
(75, '20190804055456', '85528de04a86524aec5a786ade2d7a90', 'BPKP', '0.481957604253494', '101.45374281797561', 'Jl. Jend. Sudirman', 2, 0),
(76, '20190804055822', '5f12f5f36c718e52e9f00a338e8b003a', 'PT. Bina Konstruksi', '0.5095625363209235', '101.44486416131261', 'Jl. Tuanku Tambusai', 1, 0),
(77, '20190804060154', 'a734fcd176c7bd3d6d4aaf2b56da0803', 'BTN', '0.5123452594277352', '101.4489487046376', 'Jl. Jend. Sudirman', 6, 0),
(78, '20190804060454', '7cb610ce04fc415d7d53583b1efedd23', 'Kantor Pelayanan Pajak Tampan', '0.4892020744418694', '101.39509770087899', 'Jl. SM Amin', 7, 0),
(79, '20190804060649', '3edaf709d6bcb8805b63d7fb61f2440d', 'PT Ceria Makmur Nugraha ', '0.47266859859405347', '101.42733592540027', 'Jl. Rambutan', 3, 0),
(81, '20190804060933', '8c73e2431f5ee65fa23dd6ab8e81a4ef', 'PT Alfa Scorpy (Yamaha)', '0.5272439820578276', '101.44779066089542', 'Jl. Jend. Sudirman', 2, 0),
(82, '20190805044552', '0dc9243ef8bf0ed179d8ebba5a4c9079', 'Paragon Komputer', '0.5338314145265906', '101.45385720999911', 'Jl. Sultan Syarif Qasim', 2, 0),
(83, '20190805044831', '6816c796128cd0024eb7076f9568d7e8', 'Central Komputer ', '0.5360640466686359', '101.45132074132563', 'Jl. Setia Budi', 2, 0),
(84, '20190805045056', '076504e1d21ae1d90f8715b148966501', 'Dinas Komunikasi dan Informatik Provinsi Riau', '0.5161909731434935', '101.44555589882658', 'Jl. Cut Nyak Dien', 2, 0),
(85, '20190805045123', 'ef8f19ea2e33e202d5a7c82dab131477', 'Badan Arsip Perpustakaan Provinsi Riau', '0.51557878375179', '101.44638530910017', 'Jl. Cut Nyak Dien', 2, 0),
(86, '20190805045304', '4930d39372e87993bc521ec2460fb04d', 'Dash Net', '0.5141465419659206', '101.43384229391815', 'Jl. Rajawali ', 2, 0),
(89, '20190805045500', '2ae6681f07d3d2656371f270938200da', 'PT PLN Persero', '0.5340101089432175', '101.45745289977641', 'Jl. Dr. Sutomo', 8, 0),
(90, '20190805050020', '5bef25cf48ea7c0f0d4b2e259082f43f', 'Global Data SOlution', '0.46394680723408', '101.38925760984422', 'Jl. Soebrantas', 2, 0),
(91, '20190805050215', 'ed197878faed637756fb8ff8c3249c09', 'Dispenda ', '0.47414529284183654', '101.45294261863457', 'Jl. Jend. Sudirman', 4, 1),
(92, '20190805050356', '92624493bb73bb00ffbc093188c31238', 'PT Agung Auto Mall ', '0.5360953097990117', '101.45681667141618', 'Jl. Dr. Sutomo', 4, 0),
(93, '20190805050848', '88966dfa81a460ab322b28162d919089', 'Delta Computer ', '0.526131499054435', '101.44065573345871', 'Jl. Teratai', 2, 0),
(94, '20190805051034', 'edef3e3ca418c269f827e989e4bec2d0', 'Vicom Computer ', '0.5329867229315736', '101.45413982681931', 'Jl. Hasanuddin', 2, 0),
(95, '20190805051305', '175495b0ac89a3571f40244d61cb82c4', 'Pekanbaru Komputer Center ', '0.531805344682937', '101.44461555406451', 'Jl. Moh. Yamin', 2, 0),
(96, '20190805051729', '11528fd47215809b15d87648103bfb9e', 'Bait UIR', '0.44970665788031183', '101.45225729327652', 'Jl. Kaharuddin Nasution', 3, 0),
(97, '20190805051927', '8f73c3a88695093939be20ea4d7ba49b', 'My Computer ', '0.5167707677382629', '101.41402143985034', 'Jl. Dharma Bakti', 2, 0),
(98, '20190805052041', 'ccc08afe78235907ca796d45227cafeb', 'Bios Computer', '0.5169759274248261', '101.42333289608361', 'Jl. Durian', 2, 0),
(99, '20190805052212', 'c317ffd06b6f99a78baf6cc1fae432d5', 'Labor Pustekom UNRI', '0.4762000247859562', '101.3806859822944', 'Jl. Muchtar Lutfi', 3, 0),
(100, '20190805052524', '0e9d9c4a017fde308031bcfad5700d7f', 'Riau Pos ', '0.4636642415816453', '101.39895905507731', 'Jl. HR. Soebrantas', 2, 0),
(101, '20190805052645', '9785b9ece55f689f9475f1ffabcdc2a5', 'PT Telkom Indonesia', '0.52501277159697', '101.44777569919826', 'Jl. Jend. Sudirman', 3, 0),
(102, '20190805052714', 'a284c73fc535c980345ac9d9ee20890d', 'Kantor Polda Riau', '0.51825673473479', '101.44781668670477', 'Jl. Jend. Sudirman', 2, 0),
(103, '20190805052902', '2c9361e11673bce5ab8a80bca189e862', 'Dishub Kominfo', '0.5300653362939342', '101.45598568953575', 'Jl. DR. Soetomo', 4, 0),
(104, '20190805052959', 'ddbf5e60eaea56eb2a1ee130d58a2652', 'RS Awal Bros', '0.4967543506409342', '101.45619716495278', 'Jl. Jend. Sudirman', 2, 0),
(106, '20190805053133', '3571098e1ba69f8bfb42da39434e6a81', 'Dinas Pendidikan Provinsi Riau', '0.5182760123234108', '101.44449695013463', 'Jl. Cut Nyak Dien', 5, 0),
(107, '20190805053349', '84f0877ab6a9fc846bed4149071cd9d6', 'Aras Hijrah T&T', '0.5296613877446278', '101.44984569400552', 'Jl. Gatot Soebroto', 2, 0),
(108, '20190805053623', '573c0ee09a3a72c07378e2a6c38c6a2c', 'PT Aurora Dinamika T&T', '0.5316533454147414', '101.46349654532969', 'Jl. Kuantan Raya', 2, 0),
(109, '20190805053821', '844ec8e8882af4b0767f292893b99b53', 'PT. Prima Riau Holiday', '0.521015985685344', '101.44992980640383', 'Jl. Mustika', 2, 0),
(110, '20190805054005', '321c31b52753bfda3f0f135f8db19016', 'PT. Indoraya T&T', '0.5300809678743695', '101.44952978007498', 'Jl. Gatot Soebroto', 2, 0),
(111, '20190805054210', 'a19f8980b16bf9b00a0e8fb50b096a59', 'PT. Tigo Balai T&T', '0.5341455546139', '101.44383809063585', 'Jl. Samratulangi ', 2, 0),
(112, '20190805054322', '6b3a10866ac9d697a68a1cc18c22a301', 'PT. Mahkota Emas Wisata', '0.5375163572010525', '101.45091799087822', 'Jl. Tanjung Datuk', 2, 0),
(113, '20190805054442', '05c80a26c43e8b3b4201b48c539babf5', 'Modis Butik ', '0.5323495162810765', '101.44882280845195', 'Jl. Teuku Umar', 2, 0),
(114, '20190805054740', '73274f783a6e55f2508823555e528915', 'Kembang Wisata ', '0.4950218342367088', '101.49007526692004', 'Jl. Lumba Lumba', 2, 0),
(115, '20190805054932', 'd62965324bb00a6c31a34e7fc1bc1ae3', 'PT. Everest T&T', '0.5323490972039909', '101.45120901055635', 'Jl. Teuku Umar', 1, 0),
(116, '20190805055041', '4a45f72632e40f3db62778f4f0acc085', 'PT. Wahana Wira Wisata', '0.532039734503865', '101.45006672479214', 'Jl. Teuku Umar', 1, 0),
(117, '20190805055300', '1679f306dd63880a7378f9bea7052db7', 'PT. Riz Prima T&T', '0.5009284430767875', '101.44280902342872', 'Jl. Bandeng', 1, 0),
(118, '20190805055529', 'd5bb407c24baf71430ea58c90b079ed0', 'PT. Adibro T&T', '0.449151499603246', '101.46323121618481', 'Jl. Air Dingin', 2, 0),
(119, '20190805060019', '5851c9fe86c7db7437d47fe15c5b934c', 'PT. Blessing T&T', '0.5051533042592662', '101.44822976784782', 'Jl. Cempedak', 2, 0),
(120, '20190805060353', 'c2711840b193eb8b12976f8eb9ad4920', 'PT. Nova T&T', '0.5349622726672936', '101.4263403019868', 'Jl. Riau', 2, 0),
(121, '20190805060612', 'd1825d409c291f3b1854d41d54a07654', 'Star Global T&T', '0.5167670169891575', '101.42415149370211', 'Jl. Durian', 2, 0),
(122, '20190805060807', '6a39513ea1e0d0eb2000eba434ce0f37', 'PT. Smeva T&T', '0.5111221161302218', '101.446939855814', 'Jl. Pepaya', 2, 0),
(123, '20190805061014', '2314dff52edbda85837a074b62201b77', 'Cahaya Community T&T', '0.5160909601420973', '101.44445466343313', 'Jl. Pepaya', 2, 0),
(124, '20190805061152', '7b3e45513df48402c7ab0897927ea5c3', 'PT. Pakem Travel', '0.49840730438589526', '101.43882937962192', 'Jl. Paus', 1, 0);

-- --------------------------------------------------------

--
-- Struktur dari tabel `PENILAIAN`
--

CREATE TABLE `PENILAIAN` (
  `PENILAIAN_ID` int(11) NOT NULL,
  `SISWA_ID` int(11) NOT NULL DEFAULT 0,
  `PENILAIAN_1` varchar(10) NOT NULL DEFAULT '0',
  `PENILAIAN_2` varchar(10) NOT NULL DEFAULT '0',
  `PENILAIAN_3_KET` varchar(25) NOT NULL DEFAULT '0',
  `PENILAIAN_3` varchar(10) NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `PERMOHONAN`
--

CREATE TABLE `PERMOHONAN` (
  `PERMOHONAN_ID` int(11) NOT NULL,
  `SISWA_ID` int(11) DEFAULT NULL,
  `LOCATION_ID` int(11) DEFAULT NULL,
  `GURU_ID` int(11) DEFAULT NULL,
  `PERMOHONAN_STATUS` varchar(5) DEFAULT NULL,
  `PERMOHONAN_TANGGAL` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `PERMOHONAN`
--

INSERT INTO `PERMOHONAN` (`PERMOHONAN_ID`, `SISWA_ID`, `LOCATION_ID`, `GURU_ID`, `PERMOHONAN_STATUS`, `PERMOHONAN_TANGGAL`) VALUES
(1, 87, 4, 11, 'A', '2019-09-05 14:23:56'),
(2, 72, 4, 3, 'A', '2019-09-05 15:51:00'),
(3, 17, 91, 3, 'A', '2019-09-05 15:51:49'),
(4, 156, 72, 3, 'A', '2019-09-05 16:07:19'),
(5, 1, 17, 13, 'A', '2019-09-09 04:04:35');

-- --------------------------------------------------------

--
-- Struktur dari tabel `SISWA`
--

CREATE TABLE `SISWA` (
  `SISWA_ID` int(11) NOT NULL,
  `SISWA_USERNAME` varchar(15) DEFAULT NULL,
  `SISWA_PASSWORD` varchar(15) DEFAULT NULL,
  `SISWA_NAMA` varchar(30) DEFAULT NULL,
  `SISWA_NIS` varchar(15) DEFAULT NULL,
  `SISWA_JK` enum('Laki-Laki','perempuan') DEFAULT NULL,
  `SISWA_TEMPAT_LAHIR` varchar(25) DEFAULT NULL,
  `SISWA_TGL_LAHIR` date DEFAULT NULL,
  `JURUSAN_ID` int(11) DEFAULT NULL,
  `NAMA_ORTU` varchar(25) DEFAULT NULL,
  `USERNAME_ORTU` varchar(15) DEFAULT NULL,
  `PASSWORD_ORTU` varchar(15) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `SISWA`
--

INSERT INTO `SISWA` (`SISWA_ID`, `SISWA_USERNAME`, `SISWA_PASSWORD`, `SISWA_NAMA`, `SISWA_NIS`, `SISWA_JK`, `SISWA_TEMPAT_LAHIR`, `SISWA_TGL_LAHIR`, `JURUSAN_ID`, `NAMA_ORTU`, `USERNAME_ORTU`, `PASSWORD_ORTU`) VALUES
(1, '156189', '93a9d3af4f7c297', 'Fani Badriah', '156189', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156189', '93a9d3af4f7c297'),
(2, '156196', 'a97360f79c89895', 'Febby Khairani', '156196', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156196', 'a97360f79c89895'),
(3, '156182', '3f07ae3a79c7828', 'Endah Elfitri R.', '156182', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156182', '3f07ae3a79c7828'),
(4, '156149', 'a79f146eac21726', 'Dessy Fitriani', '156149', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156149', 'a79f146eac21726'),
(5, '156144', 'e6492dc4c8cce09', 'Della Maya', '156144', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156144', 'e6492dc4c8cce09'),
(6, '156219', 'bd67f68eb55875e', 'Helena Fitri Diana', '156219', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156219', 'bd67f68eb55875e'),
(7, '156199', '65f8bfa02a3b701', 'Febri Yuliani', '156199', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156199', '65f8bfa02a3b701'),
(8, '156399', 'dc0d2febb416565', 'Sonia Rahmadani', '156399', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156399', 'dc0d2febb416565'),
(9, '156342', 'c29caaf7c5569ed', 'Rachel Amadhea Bush', '156342', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156342', 'c29caaf7c5569ed'),
(10, '156360', 'edb39148b0c5a65', 'Reyhan Kirana Istianto', '156360', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156360', 'edb39148b0c5a65'),
(11, '156296', 'c97f9808337daa4', 'Nabila Meliana', '156296', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156296', 'c97f9808337daa4'),
(12, '156391', '013775eb9c001b7', 'Shakila Merza', '156391', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156391', '013775eb9c001b7'),
(13, '156311', '0a46aa42986ea34', 'Nora Dwi Rapika', '156311', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156311', '0a46aa42986ea34'),
(14, '156441', 'c9c4422afcc3645', 'Wella Afra Shakila', '156441', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156441', 'c9c4422afcc3645'),
(15, '156110', '5d6fc4673815e39', 'Afriandi Al Husaini', '156110', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156110', '5d6fc4673815e39'),
(16, '156120', 'a93d66dfd5fb155', 'Aulia Dela Rosa Auro Tifha', '156120', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156120', 'a93d66dfd5fb155'),
(17, '156084', 'f4271fee034d31c', 'Ahmad Ikhsan', '156084', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156084', 'f4271fee034d31c'),
(18, '156210', '4b46301e42249da', 'Fresli', '156210', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156210', '4b46301e42249da'),
(19, '156109', 'ee5cc619d37156d', 'Apri Candra Utama', '156109', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156109', 'ee5cc619d37156d'),
(20, '156449', '90388c2eb2fb04b', 'Winda Febriani', '156449', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156449', '90388c2eb2fb04b'),
(21, '156467', '9725748842fc9a3', 'Weny Nurhadi', '156467', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156467', '9725748842fc9a3'),
(22, '156421', '8043211226a028d', 'Tessa Amelia', '156421', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156421', '8043211226a028d'),
(23, '156450', '2f064e010db687f', 'Winda Ristika', '156450', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156450', '2f064e010db687f'),
(24, '156354', '5a438b9e9095c67', 'Regia Ananda Pasya', '156354', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156354', '5a438b9e9095c67'),
(25, '156367', '3c3afec7ff9aab1', 'Rifa Anggita', '156367', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156367', '3c3afec7ff9aab1'),
(26, '156372', '67bf2290b0b3f1b', 'Riski Saputra', '156372', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156372', '67bf2290b0b3f1b'),
(27, '156245', '71719be66967414', 'Lidya Nisa Tiwi', '156245', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156245', '71719be66967414'),
(28, '156462', '00f3076c41915cb', 'Yulia Wulansari', '156462', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156462', '00f3076c41915cb'),
(29, '156282', 'de2ea36e432e02b', 'Mitha Febri Berliani', '156282', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156282', 'de2ea36e432e02b'),
(30, '156314', '158693d35228f13', 'Novita Lia Tampubolon', '156314', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156314', '158693d35228f13'),
(31, '156361', '9bc294332df2055', 'Reza Mulya Putri', '156361', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156361', '9bc294332df2055'),
(32, '156397', 'd3761b28a7ef939', 'Silvia Indriani', '156397', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156397', 'd3761b28a7ef939'),
(33, '156307', '8dc8dbce5351180', 'Nela', '156307', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156307', '8dc8dbce5351180'),
(34, '156434', 'f2eb7494b7497dc', 'Urnilasari', '156434', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156434', 'f2eb7494b7497dc'),
(35, '156335', '66b2a9aa050c052', 'Putri Elsa Liani', '156335', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156335', '66b2a9aa050c052'),
(36, '156321', '7b5111cfbe0e2b6', 'Nurul Dinda Chirunnisa', '156321', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156321', '7b5111cfbe0e2b6'),
(37, '156326', '4ae54f51b11ea94', 'Okta Melly Yadira', '156326', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156326', '4ae54f51b11ea94'),
(38, '156263', '5a83235ea18d997', 'Marisa Quratulaini', '156263', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156263', '5a83235ea18d997'),
(39, '156357', '7c356064a122f5f', 'Retno Astari Hastuti', '156357', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156357', '7c356064a122f5f'),
(40, '156389', '01f602088ea732a', 'Siti Aisyah', '156389', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156389', '01f602088ea732a'),
(41, '156364', 'ff839ab6d51b3ef', 'Rezky Fahnella Putri', '156364', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156364', 'ff839ab6d51b3ef'),
(42, '156162', '0ca713b717cb842', 'Dian Desnita', '156162', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156162', '0ca713b717cb842'),
(43, '156283', '47d23d35ab19f03', 'Monalisa Irnawati', '156283', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156283', '47d23d35ab19f03'),
(44, '156428', 'a82f0f2a6049560', 'Tiya Eka Safitri', '156428', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156428', 'a82f0f2a6049560'),
(45, '156445', '64d81a21e6ea483', 'Wilda Vira Ningsih', '156445', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156445', '64d81a21e6ea483'),
(46, '156236', 'f948cb741921572', 'Junita  Jayanti Saputri', '156236', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156236', 'f948cb741921572'),
(47, '156380', '7300640719ec3c3', 'Romia Mungkur', '156380', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156380', '7300640719ec3c3'),
(48, '156145', 'b57ecc8c45fe95b', 'Della Widya Sari', '156145', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156145', 'b57ecc8c45fe95b'),
(49, '156209', '7afd5483981af03', 'Fitriyani Nasution', '156209', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156209', '7afd5483981af03'),
(50, '156115', 'be92a265dc49025', 'Arifah Ummuhani', '156115', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156115', 'be92a265dc49025'),
(51, '156382', '7e8d605adb6acad', 'Rosa  Oktavia Wirdanigsih', '156382', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156382', '7e8d605adb6acad'),
(52, '156317', '7c87f4c281f00cd', 'Nur Anisah', '156317', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156317', '7c87f4c281f00cd'),
(53, '156444', '17665aba9ae634f', 'Widya Syafitri', '156444', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156444', '17665aba9ae634f'),
(54, '156293', '4a51cdaee3573e3', 'Murniati J', '156293', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156293', '4a51cdaee3573e3'),
(55, '156338', 'ffbcb51fc6f7a87', 'Putri Nabila Mariza', '156338', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156338', 'ffbcb51fc6f7a87'),
(56, '156105', '47a2759a37e8e4c', 'Annisa Rahmawati', '156105', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156105', '47a2759a37e8e4c'),
(57, '156351', 'ac4789ccbf691fd', 'Raudhatul Hiifzah', '156351', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156351', 'ac4789ccbf691fd'),
(58, '156280', '58a77939ea4f073', 'Mifta Huljannah', '156280', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156280', '58a77939ea4f073'),
(59, '156430', '688b3fb7764fe32', 'Triwahyuni Adi Putri', '156430', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156430', '688b3fb7764fe32'),
(60, '156212', '908d44f584cd99c', 'Friska Wulandari', '156212', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156212', '908d44f584cd99c'),
(61, '156242', '644994b73cb1af4', 'Kurnia Fika Sari', '156242', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156242', '644994b73cb1af4'),
(62, '156363', '3b2bfbb9096fe09', 'Rezi Ferika Amelinda', '156363', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156363', '3b2bfbb9096fe09'),
(63, '156262', '7c68bb93a514426', 'Marina Syafera', '156262', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156262', '7c68bb93a514426'),
(64, '156308', '0d8431e0d7274c6', 'Nisa Rahmadani', '156308', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156308', '0d8431e0d7274c6'),
(65, '156358', 'f3c0448b8537733', 'Retno Ayuni', '156358', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156358', 'f3c0448b8537733'),
(66, '156276', 'c74c0b7168dae88', 'Mescutriza', '156276', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156276', 'c74c0b7168dae88'),
(67, '156181', '9f08eec6178b384', 'Elsi Maryani', '156181', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156181', '9f08eec6178b384'),
(68, '156299', '6a63adfb20d45b2', 'Nadia Putri', '156299', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156299', '6a63adfb20d45b2'),
(69, '156451', '9e26f6c2ef4d2f5', 'Windy Febriani', '156451', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156451', '9e26f6c2ef4d2f5'),
(70, '156383', 'f09ea002271fc6c', 'Ryan', '156383', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156383', 'f09ea002271fc6c'),
(71, '156359', 'e172f6a75382cb9', 'Revanza Vicansah Ramadhan', '156359', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156359', 'e172f6a75382cb9'),
(72, '156080', '23394973d9583eb', 'Adinsyah', '156080', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156080', '23394973d9583eb'),
(73, '156079', '625f4c74343e2c9', 'Adinda Ulan Riawan', '156079', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156079', '625f4c74343e2c9'),
(74, '156167', '03b2f744b51a4f0', 'Dinda Kasturi', '156167', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156167', '03b2f744b51a4f0'),
(75, '156269', '3d5782937fd3524', 'Meissy Triana Putri', '156269', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156269', '3d5782937fd3524'),
(76, '156298', '6a4ea83048810b8', 'Nada Dwi Dava Salsabila', '156298', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156298', '6a4ea83048810b8'),
(77, '156194', '27c67ddabd06b8c', 'Fazila Arista', '156194', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156194', '27c67ddabd06b8c'),
(78, '156137', '469854e193cd66c', 'Chusnul Shusmawati', '156137', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156137', '469854e193cd66c'),
(79, '156243', '996886fdb7bbc3c', 'Latifah Putri Rahayu', '156243', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156243', '996886fdb7bbc3c'),
(80, '156159', '1ce3d3ffd4ce945', 'Dea Hernita Gustin', '156159', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156159', '1ce3d3ffd4ce945'),
(81, '156442', 'd708171cac9096f', 'Welly Nasvatesia', '156442', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156442', 'd708171cac9096f'),
(82, '156425', 'd3e3a67dbd397d8', 'Tika Yesti Rahmi', '156425', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156425', 'd3e3a67dbd397d8'),
(83, '156135', '3f674575d121d52', 'Chindy Larasati Manurung', '156135', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156135', '3f674575d121d52'),
(84, '156273', 'a1f87b22a41713e', 'Melisa Putri', '156273', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156273', 'a1f87b22a41713e'),
(85, '156459', 'cc2d45259fb27d0', 'Yolla Silvia Maharani', '156459', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156459', 'cc2d45259fb27d0'),
(86, '156438', 'd487ae74352082b', 'Vindi Samsuri Ayuhan Nduru', '156438', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156438', 'd487ae74352082b'),
(87, '156059', '9237e7f0cda9716', 'Almira Devina Putri', '156059', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156059', '9237e7f0cda9716'),
(88, '156111', 'e0033450f3afca0', 'Aprilita Larasati', '156111', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156111', 'e0033450f3afca0'),
(89, '156256', '0599c7b9945a57c', 'Maharani Syafitri', '156256', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156256', '0599c7b9945a57c'),
(90, '156162', '0ca713b717cb842', 'Desy Selvia', '156162', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156162', '0ca713b717cb842'),
(91, '156085', 'e8b639b586e4c2a', 'Ahmad Junaidy', '156085', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156085', 'e8b639b586e4c2a'),
(92, '156093', '599168ddc3f61b8', 'Andi Pranata', '156093', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156093', '599168ddc3f61b8'),
(93, '156405', '8d80bff6fec8f6d', 'Sujanna Nasution', '156405', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156405', '8d80bff6fec8f6d'),
(94, '156232', '41b4605104b0355', 'Irma Gusnia Ayu Putri', '156232', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156232', '41b4605104b0355'),
(95, '156141', '81ae5ef3f8b5df3', 'Dandi Suhendra', '156141', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156141', '81ae5ef3f8b5df3'),
(96, '156281', 'c85ce60914639ce', 'Miftahul Jannah', '156281', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156281', 'c85ce60914639ce'),
(97, '156161', 'dc8cd50ec6f2e7b', 'Dhini Fadelina', '156161', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156161', 'dc8cd50ec6f2e7b'),
(98, '156377', 'd5961112acb3a65', 'Rizki Syafmulti', '156377', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156377', 'd5961112acb3a65'),
(99, '156238', 'c53284dccbb0540', 'Khaira Nabila', '156238', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156238', 'c53284dccbb0540'),
(100, '156411', 'bb4413f28f70d2e', 'Syafrina Karlia Afrizan', '156411', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156411', 'bb4413f28f70d2e'),
(101, '156237', 'fbc61f5447ff061', 'Kellen', '156237', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156237', 'fbc61f5447ff061'),
(102, '156165', '05c6ecdf57d64bd', 'Diki Chandra Kirana', '156165', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156165', '05c6ecdf57d64bd'),
(103, '156151', '38cfea09e10bd78', 'Desy Riandatari', '156151', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156151', '38cfea09e10bd78'),
(104, '156274', '317c635e6453535', 'Mellysa Agustine', '156274', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156274', '317c635e6453535'),
(105, '156272', 'f644bbf11e611ba', 'Melisa Kanaya Azura', '156272', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156272', 'f644bbf11e611ba'),
(106, '156331', '4f812f420504cc8', 'Pungki Krisna Subakti', '156331', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156331', '4f812f420504cc8'),
(107, '156260', '5221618c56d53dd', 'Margareth Romauli', '156260', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156260', '5221618c56d53dd'),
(108, '156180', '3359cdc20d49f36', 'Elsa Rohkyani Barutu', '156180', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156180', '3359cdc20d49f36'),
(109, '156249', '552dca6174f5ded', 'Luisa Afrina', '156249', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156249', '552dca6174f5ded'),
(110, '156350', '8e8b05d71d29271', 'Ratu Azhira', '156350', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156350', '8e8b05d71d29271'),
(111, '156100', '22e078482b2fc95', 'Anisa Riski Yulia', '156100', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156100', '22e078482b2fc95'),
(112, '156409', '072a9e9410d9287', 'Syafirah', '156409', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156409', '072a9e9410d9287'),
(113, '156146', 'ee35f3fe27bbc8c', 'Delvi Agustin Syafitri', '156146', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156146', 'ee35f3fe27bbc8c'),
(114, '156345', 'ed4254e7558e841', 'Rahmaini', '156345', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156345', 'ed4254e7558e841'),
(115, '156147', 'af39faf6dcfab7a', 'Deriyanto Rramadhan', '156147', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156147', 'af39faf6dcfab7a'),
(116, '156114', 'bdec8ff17686753', 'Arif  Yafi\'i', '156114', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156114', 'bdec8ff17686753'),
(117, '156323', 'f119555ebb5f248', 'Nury Ragil Lestari', '156323', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156323', 'f119555ebb5f248'),
(118, '156337', 'b7fbb1be4fc5ba3', 'Putri Husadana', '156337', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156337', 'b7fbb1be4fc5ba3'),
(119, '156154', 'a2de62673c73f76', 'Devi Susanti', '156154', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156154', 'a2de62673c73f76'),
(120, '156203', '11def325609138b', 'Felicia Julieta Halim', '156203', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156203', '11def325609138b'),
(121, '156174', '5daf47aabb183ab', 'Dwie Fatihani Izzati', '156174', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156174', '5daf47aabb183ab'),
(122, '156148', '5291332ea831bd1', 'Desi Katrina Simanjuntak', '156148', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156148', '5291332ea831bd1'),
(123, '156463', 'a17ccdb9e4e3331', 'Yunike Claudia Titania', '156463', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156463', 'a17ccdb9e4e3331'),
(124, '156259', '2621dd2120125e6', 'Mardhatillah Amdawa', '156259', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156259', '2621dd2120125e6'),
(125, '156304', '15ce458bd136f17', 'Nadya Putri Mulyadi', '156304', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156304', '15ce458bd136f17'),
(126, '156266', 'cef60fb3402e7f0', 'Mayang Sari', '156266', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156266', 'cef60fb3402e7f0'),
(127, '156305', 'c071735cbf81169', 'Nadya Selfira Hulhadi', '156305', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156305', 'c071735cbf81169'),
(128, '156453', 'f39a5f04a73054b', 'Wiwit Ananda', '156453', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156453', 'f39a5f04a73054b'),
(129, '156221', '604c5816f286e8c', 'Helmi Fitria', '156221', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156221', '604c5816f286e8c'),
(130, '156426', '77fe6e828924d44', 'Tika Yolanda Putri', '156426', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156426', '77fe6e828924d44'),
(131, '156278', 'cc7a9753f69e09e', 'Mia Elfitri Yanti', '156278', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156278', 'cc7a9753f69e09e'),
(132, '156076', '9e05e38ec965cba', 'Adinda Putri', '156076', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156076', '9e05e38ec965cba'),
(133, '156349', '75ae27f0f99ac62', 'Rati Dewi', '156349', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156349', '75ae27f0f99ac62'),
(134, '156466', '9f77e26754b3f82', 'Kevin Arridho', '156466', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156466', '9f77e26754b3f82'),
(135, '156381', 'bf0e29b7ba11a03', 'Romiz Aisya Taupiqurrahman', '156381', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156381', 'bf0e29b7ba11a03'),
(136, '156116', 'b70c2495ef6a933', 'Arya Bagas Dianugrah', '156116', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156116', 'b70c2495ef6a933'),
(137, '156255', '5b875bd5b3b4284', 'M. Yoga Amanda', '156255', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156255', '5b875bd5b3b4284'),
(138, '156313', '325fbf06fb683ed', 'Novia Magdalena', '156313', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156313', '325fbf06fb683ed'),
(139, '156208', 'dcb765ff50e9ce4', 'Fitri Valentine', '156208', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156208', 'dcb765ff50e9ce4'),
(140, '156324', 'b16ddb5e56693b7', 'Oharana Hutagalung', '156324', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156324', 'b16ddb5e56693b7'),
(141, '156204', '944d2f76bec41c2', 'Fellia Princesa', '156204', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156204', '944d2f76bec41c2'),
(142, '156440', '0ee3cb2aea055a5', 'Winda Tesalonika', '156440', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156440', '0ee3cb2aea055a5'),
(143, '156344', 'e97b7ff3606ac8b', 'Gustina Adinda Putri', '156344', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156344', 'e97b7ff3606ac8b'),
(144, '156163', '6fe8e9d530c94d6', 'Dian Mauliddia', '156163', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156163', '6fe8e9d530c94d6'),
(145, '156158', 'bb9b6e2916f3096', 'Dewi Risdayanti', '156158', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156158', 'bb9b6e2916f3096'),
(146, '156288', '01a48a39ef6612e', 'Muhammad Maulana', '156288', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156288', '01a48a39ef6612e'),
(147, '156223', '4d61e6f51607874', 'Ihsanul Ilham', '156223', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156223', '4d61e6f51607874'),
(148, '156264', '5f424f68dad8ad1', 'Maulana Hamdani', '156264', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156264', '5f424f68dad8ad1'),
(149, '156366', 'f0b03f97a645509', 'Ridavo Linkazner', '156366', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156366', 'f0b03f97a645509'),
(150, '156164', '5f0fa4a805615e3', 'Diana Safitri', '156164', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156164', '5f0fa4a805615e3'),
(151, '156374', '82eaa7bc7f2a1c8', 'Rismawati', '156374', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156374', '82eaa7bc7f2a1c8'),
(152, '156343', 'df781eb1eff31c8', 'Rahayu', '156343', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156343', 'df781eb1eff31c8'),
(153, '156456', '3d9572538726a83', 'Yefnira Ariska', '156456', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156456', '3d9572538726a83'),
(154, '156235', '9b78c9491a69347', 'Juli Yana', '156235', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156235', '9b78c9491a69347'),
(155, '156134', 'f8d0b8103de0ecc', 'Cecilia', '156134', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156134', 'f8d0b8103de0ecc'),
(156, '156096', '2e2a039250cf822', 'Anggelina', '156096', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156096', '2e2a039250cf822'),
(157, '156142', '4813b64b24b579d', 'Muhammad Khasyahrizal', '156142', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156142', '4813b64b24b579d'),
(158, '156287', 'c13c96de557be1f', 'Dea Aprila', '156287', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156287', 'c13c96de557be1f'),
(159, '156336', '4246d56b22acb68', 'Putri Handayani', '156336', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156336', '4246d56b22acb68'),
(160, '156081', 'b211555045d4468', 'Adzra Hanifah Suri', '156081', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156081', 'b211555045d4468'),
(161, '156410', '52461d160f95cae', 'Syafriansah Putri', '156410', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156410', '52461d160f95cae'),
(162, '156234', 'acd49bbac299359', 'Johan Kevin Andreas Lumbang', '156234', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156234', 'acd49bbac299359'),
(163, '156090', '5799eac560376ef', 'Aliva Nadya', '156090', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156090', '5799eac560376ef'),
(164, '156183', '6b6868854572d02', 'Erna Purnamasari', '156183', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156183', '6b6868854572d02'),
(165, '156303', 'b869330549d07e1', 'Nadra Pena Lisa MY', '156303', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156303', 'b869330549d07e1'),
(166, '156300', 'abe25c6f422ad97', 'Nadia Ridanti Eka Putri', '156300', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156300', 'abe25c6f422ad97'),
(167, '156228', '867a0dbb8bd4754', 'Intan Nuaini', '156228', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156228', '867a0dbb8bd4754'),
(168, '156229', 'efc8564dea77799', 'Intan Pratiwy. S', '156229', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156229', 'efc8564dea77799'),
(169, '156320', '560f205b3f8a22b', 'Nur Rahmawati', '156320', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156320', '560f205b3f8a22b'),
(170, '156420', 'a1d70ec62f32f1b', 'Tenny Adilla Justika', '156420', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156420', 'a1d70ec62f32f1b'),
(171, '156103', '02862ed6932b1c7', 'Anita Royi', '156103', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156103', '02862ed6932b1c7'),
(172, '156101', 'b62701c46b9344e', 'Anisa Balkis', '156101', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156101', 'b62701c46b9344e'),
(173, '156406', 'ec9dde118ea0159', 'Suryani', '156406', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156406', 'ec9dde118ea0159'),
(174, '156217', '1129cb8ba466518', 'Hanna Bella Pesta Saragih', '156217', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156217', '1129cb8ba466518'),
(175, '156246', '493ba08d202e389', 'Liliyani Gustivon', '156246', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156246', '493ba08d202e389'),
(176, '156160', '442653c60066605', 'Dhea Ofiyana', '156160', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156160', '442653c60066605'),
(177, '156322', '86eaca7527df0ed', 'Nurul Hikmah Putri', '156322', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156322', '86eaca7527df0ed'),
(178, '156083', '7f5f309d8f6ccc9', 'Agung Maulana zen', '156083', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156083', '7f5f309d8f6ccc9'),
(179, '156384', '6766bee9802f263', 'Said Muhammad Dhiya Ulhaq', '156384', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156384', '6766bee9802f263'),
(180, '156107', 'accc7b05ee70c77', 'Annisa Siregar', '156107', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156107', 'accc7b05ee70c77'),
(181, '156291', '855f5c5538335c6', 'Muhammad Ridho', '156291', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156291', '855f5c5538335c6'),
(182, '156400', '97ace8ab7da54df', 'Sonia Wulandari', '156400', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156400', '97ace8ab7da54df'),
(183, '156318', '1f88c7ecfba8ac1', 'Nur Fitria Ramadhani', '156318', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156318', '1f88c7ecfba8ac1'),
(184, '156352', 'ce32db888ba7e04', 'Recky Ficeroy', '156352', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156352', 'ce32db888ba7e04'),
(185, '156416', '65e0f76f9f8f9de', 'Syopyan Gusriadi', '156416', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156416', '65e0f76f9f8f9de'),
(186, '156277', '697bf2c3e499fd7', 'Mesi', '156277', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156277', '697bf2c3e499fd7'),
(187, '156385', '14a869b1b7fdf2d', 'Salsalia Putri Sabrina', '156385', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156385', '14a869b1b7fdf2d'),
(188, '156395', '597d9aff7b934c8', 'Silvia', '156395', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156395', '597d9aff7b934c8'),
(189, '156250', '9455fca9a3214f8', 'Luthfi Ismayeni', '156250', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156250', '9455fca9a3214f8'),
(190, '156198', 'dce50652cff1281', 'Febri Yollanda', '156198', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156198', 'dce50652cff1281'),
(191, '156432', 'f322a85ea1df034', 'Triana Savira', '156432', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156432', 'f322a85ea1df034'),
(192, '156184', '1e2900ee649e739', 'Ersa Lestari', '156184', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156184', '1e2900ee649e739'),
(193, '156121', 'a622f038c0e745f', 'Aulia Fransiska', '156121', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156121', 'a622f038c0e745f'),
(194, '156265', '1b818390e7ce0b0', 'Maulana Nugraha', '156265', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156265', '1b818390e7ce0b0'),
(195, '156177', '29d7087894a3c4e', 'El Muhammad Rizki', '156177', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156177', '29d7087894a3c4e'),
(196, '156169', '36ac13d22071404', 'Dirham Syahputra', '156169', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156169', '36ac13d22071404'),
(197, '156303', 'b869330549d07e1', 'Nadira Nurul Pratiwi', '156303', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156303', 'b869330549d07e1'),
(198, '156213', 'cf133b9c0bf44b0', 'Ghozi Ferdiansyah P', '156213', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156213', 'cf133b9c0bf44b0'),
(199, '156458', '55d9057dcb2bed6', 'Yola Nofrianti', '156458', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156458', '55d9057dcb2bed6'),
(200, '156226', '60bc1a5e24e2bf9', 'Indra Saputra', '156226', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156226', '60bc1a5e24e2bf9'),
(201, '156427', '4c5027355f12825', 'Tiona Elia Ananda', '156427', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156427', '4c5027355f12825'),
(202, '156347', '539d5f646c9f7a6', 'Ramadhani Putri', '156347', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156347', '539d5f646c9f7a6'),
(203, '156128', '11ae77fcbf1243e', 'Azizah Fadillah', '156128', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156128', '11ae77fcbf1243e'),
(204, '156436', 'ea1026696cadc48', 'Vera Nurjannah', '156436', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156436', 'ea1026696cadc48'),
(205, '156192', '15b926207df9d1f', 'Fauzan Yahya', '156192', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156192', '15b926207df9d1f'),
(206, '156239', 'fd6e7fa5dc19cf6', 'Khairun Annisa', '156239', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156239', 'fd6e7fa5dc19cf6'),
(207, '156433', 'e98185568dd17c6', 'Tri Maidayanti', '156433', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156433', 'e98185568dd17c6'),
(208, '156286', '6cd2a759be6d746', 'Muhammad Ilham', '156286', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156286', '6cd2a759be6d746'),
(209, '156368', 'b453c41559c6728', 'Rifqi Rivaldi Safin', '156368', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156368', 'b453c41559c6728'),
(210, '156254', 'a5a4baac0e160aa', 'Muhammad Rizki Rarmadhan', '156254', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156254', 'a5a4baac0e160aa'),
(211, '156407', '2a9cab12025fd26', 'Suryawati', '156407', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156407', '2a9cab12025fd26'),
(212, '156207', 'a283ff7946fb697', 'Fildza Batrisyia', '156207', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156207', 'a283ff7946fb697'),
(213, '156139', '760eb5cba918a30', 'Cindy Karunia Illahi Putri', '156139', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156139', '760eb5cba918a30'),
(214, '156138', 'bce35ac03d2f984', 'Cici Ariska', '156138', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156138', 'bce35ac03d2f984'),
(215, '156339', 'db4c3bf00068ad8', 'Putri Rahmawati', '156339', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156339', 'db4c3bf00068ad8'),
(216, '156205', '9ce26bc14bb4a12', 'Fetti Fajrianti', '156205', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156205', '9ce26bc14bb4a12'),
(217, '156289', 'f36d0c89a9f8356', 'Muhammad Nur Hardianto', '156289', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156289', 'f36d0c89a9f8356'),
(218, '156375', 'b492bc76d0ef136', 'Rizki Amelia', '156375', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156375', 'b492bc76d0ef136'),
(219, '156341', '80fd338cfd273b3', 'Putri Yolandari', '156341', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156341', '80fd338cfd273b3'),
(220, '156094', '68697de1f40f4cc', 'Andra Safitri', '156094', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156094', '68697de1f40f4cc'),
(221, '156443', '8c5bacc6cd18085', 'Widya Setyanela', '156443', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156443', '8c5bacc6cd18085'),
(222, '156216', '71ff465903253ce', 'Hana Afifah Zahra', '156216', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156216', '71ff465903253ce'),
(223, '156211', '7394c5dd067ffe1', 'Fretty Carmelita', '156211', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156211', '7394c5dd067ffe1'),
(224, '156171', '9787ee584b6e9d6', 'Dora Erica', '156171', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156171', '9787ee584b6e9d6'),
(225, '156166', 'a9d87e75d45edc1', 'Dewi', '156166', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156166', 'a9d87e75d45edc1'),
(226, '156220', '384bfb88e267f29', 'Helmalia', '156220', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156220', '384bfb88e267f29'),
(227, '156200', '07590ee7bd26ca6', 'Febrian Falenza', '156200', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156200', '07590ee7bd26ca6'),
(228, '156435', '4f5c5420365bfa2', 'Utamie Apradelia Putri R', '156435', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156435', '4f5c5420365bfa2'),
(229, '156301', 'c69afad452432c3', 'Nadia Sukmaawati', '156301', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156301', 'c69afad452432c3'),
(230, '156195', 'dbeb67a68c0cb51', 'Febby Aznisonia', '156195', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156195', 'dbeb67a68c0cb51'),
(231, '156179', '16f7d3c295518ab', 'Elizabet Bongmini', '156179', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156179', '16f7d3c295518ab'),
(232, '156412', '4fb3b86b87fe62e', 'Syakilah', '156412', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156412', '4fb3b86b87fe62e'),
(233, '156464', '39a8629d9342b0f', 'Yunita Suryati', '156464', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156464', '39a8629d9342b0f'),
(234, '156319', '958d393c8827078', 'Nur Hasikin', '156319', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156319', '958d393c8827078'),
(235, '156175', '8ff16c35cd05d19', 'Eka Pratiwi', '156175', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156175', '8ff16c35cd05d19'),
(236, '156244', '7d7edc7ecf0c4d5', 'Lia Oktaviani', '156244', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156244', '7d7edc7ecf0c4d5'),
(237, '156403', '5e26c937f98be14', 'Steven Widjaya', '156403', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156403', '5e26c937f98be14'),
(238, '156077', 'af38c9bdc681b67', 'Ade Noviardi', '156077', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156077', 'af38c9bdc681b67'),
(239, '156404', 'dfcafcd9de3a858', 'Suci Agustina', '156404', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156404', 'dfcafcd9de3a858'),
(240, '156316', 'ca4ed8c656107fe', 'Nungki Khoiriyah', '156316', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156316', 'ca4ed8c656107fe'),
(241, '156129', '97dd5d8b0880d8d', 'Azriel Novelin Sinaga', '156129', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156129', '97dd5d8b0880d8d'),
(242, '156310', 'eab2de80cf43aaa', 'Nofty Yoni', '156310', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156310', 'eab2de80cf43aaa'),
(243, '156127', '4ec2ace40e96ede', 'Ayuni Fitri', '156127', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156127', '4ec2ace40e96ede'),
(244, '156422', '41d9918b0704e4b', 'Tessalonika Napitupulu', '156422', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156422', '41d9918b0704e4b'),
(245, '156206', 'a4ef5a1dff5a8e4', 'Fia Helmiyati', '156206', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156206', 'a4ef5a1dff5a8e4'),
(246, '156240', '4fedd7d52b9f00d', 'Khatimah Zullaiila', '156240', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156240', '4fedd7d52b9f00d'),
(247, '156390', '680b344197727db', 'Sekar Endah Pangesti', '156390', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156390', '680b344197727db'),
(248, '156214', '363d54dd0356522', 'Giovanni Illena', '156214', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156214', '363d54dd0356522'),
(249, '156333', '05985e2ab26401e', 'Putri', '156333', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156333', '05985e2ab26401e'),
(250, '156418', 'af177b6b793af23', 'Tasya Rezki Febriyana', '156418', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156418', 'af177b6b793af23'),
(251, '156429', '0184e219238691f', 'Toyibatul Zahro', '156429', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156429', '0184e219238691f'),
(252, '156309', 'c2b1b1066f90f9d', 'Nisrina Siti Nur Halizah', '156309', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156309', 'c2b1b1066f90f9d'),
(253, '156168', '3f30fc5746e61eb', 'Dinda Mutia Pertiwi', '156168', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156168', '3f30fc5746e61eb'),
(254, '156176', '989a5a61a9749ed', 'Eka Saprafti', '156176', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156176', '989a5a61a9749ed'),
(255, '156402', 'e8109a03890b7b1', 'Stephen Chen', '156402', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156402', 'e8109a03890b7b1'),
(256, '156095', '9f4b076afc7aa37', 'Andrian Juifan', '156095', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156095', '9f4b076afc7aa37'),
(257, '156295', '313ea9f428c566a', 'Mutiara Salsabila Awan', '156295', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156295', '313ea9f428c566a'),
(258, '156086', '1d1ceedb74e07d0', 'Aidiya Putri Ibnu', '156086', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156086', '1d1ceedb74e07d0'),
(259, '156401', '2523d762d99e2ea', 'Sri Wahyuly Ningsih M', '156401', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156401', '2523d762d99e2ea'),
(260, '156082', 'dd9ecf274e31683', 'Agnes Elika Fortuna', '156082', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156082', 'dd9ecf274e31683'),
(261, '156267', '27699cd4bfa943e', 'Mayer Fero B', '156267', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156267', '27699cd4bfa943e'),
(262, '156284', '4328e3fca43276f', 'Mufru Adli', '156284', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156284', '4328e3fca43276f'),
(263, '156354', '5a438b9e9095c67', 'Regia Ananda Fasya', '156354', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156354', '5a438b9e9095c67'),
(264, '156367', '3c3afec7ff9aab1', 'Rifa Anggita', '156367', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156367', '3c3afec7ff9aab1'),
(265, '156372', '67bf2290b0b3f1b', 'Riski Saputra', '156372', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156372', '67bf2290b0b3f1b'),
(266, '156253', '9a3ab76caf8f18e', 'M. Firdian', '156253', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156253', '9a3ab76caf8f18e'),
(267, '156230', '4950b267e3069ba', 'Iqbal Assegaf', '156230', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156230', '4950b267e3069ba'),
(268, '156099', '130b38e4090f934', 'Annisa Aprilia', '156099', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156099', '130b38e4090f934'),
(269, '156340', 'eda3d05996f7407', 'Putri Sion', '156340', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156340', 'eda3d05996f7407'),
(270, '156424', '2220c077bb9abf9', 'Tiara Lasya Azzarar', '156424', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156424', '2220c077bb9abf9'),
(271, '156258', '6cb32825372f0ca', 'Mangasi Simanjuntak', '156258', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156258', '6cb32825372f0ca'),
(272, '156447', 'e0f4585108cbed4', 'William Febrianto Sinaga', '156447', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156447', 'e0f4585108cbed4'),
(273, '156446', '884a3b327b812ea', 'William Antony', '156446', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156446', '884a3b327b812ea'),
(274, '156233', 'fbeb1450b11849f', 'Jeffry', '156233', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156233', 'fbeb1450b11849f'),
(275, '156332', '11eef8782d53e80', 'Permatasari Rosayang', '156332', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156332', '11eef8782d53e80'),
(276, '156190', 'e3b0c737cc7a90d', 'Farahdilla Anisa Putri', '156190', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156190', 'e3b0c737cc7a90d'),
(277, '156133', '8ca96e2c78962c1', 'Bima Dwi Anggara', '156133', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156133', '8ca96e2c78962c1'),
(278, '156325', '143ded654a34878', 'Oje Sukma Jaya', '156325', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156325', '143ded654a34878'),
(279, '156437', 'a914c664781187c', 'Very Kurniawan', '156437', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156437', 'a914c664781187c'),
(280, '156419', 'da838feef62f47c', 'Tengku Hafiz Casena', '156419', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156419', 'da838feef62f47c'),
(281, '156193', '48a4f295a93606d', 'Fauzi Abdurrahman', '156193', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156193', '48a4f295a93606d'),
(282, '156292', 'fcb1189f581aac9', 'Muhammad Yunus', '156292', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156292', 'fcb1189f581aac9'),
(283, '156191', 'f14ff5a5d3281e1', 'Fauzan Agdi', '156191', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156191', 'f14ff5a5d3281e1'),
(284, '156104', '1cf4788c0ef9541', 'Annisa Afri Yeni', '156104', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156104', '1cf4788c0ef9541'),
(285, '156087', 'edc534160b96dfa', 'Alex', '156087', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156087', 'edc534160b96dfa'),
(286, '156122', 'b7ee14c9761fd6f', 'Ayu Juance Putri', '156122', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156122', 'b7ee14c9761fd6f'),
(287, '156454', '9a8e564f5c7a8ea', 'Wulan Anggraini', '156454', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156454', '9a8e564f5c7a8ea'),
(288, '156132', '9c37cf02a7de64d', 'Beta Lamretta', '156132', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156132', '9c37cf02a7de64d'),
(289, '156366', 'f0b03f97a645509', 'Reni Widiawati', '156366', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156366', 'f0b03f97a645509'),
(290, '156126', '02fa1f764617c06', 'Ayu Wandira', '156126', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156126', '02fa1f764617c06'),
(291, '156130', 'f171f5e99b46dfe', 'Bayu Widianto', '156130', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156130', 'f171f5e99b46dfe'),
(292, '156261', '9f5e02bde822bc0', 'Maria Afrida Kurnia', '156261', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156261', '9f5e02bde822bc0'),
(293, '156224', 'f6d6cb690ccbb8c', 'Ilham', '156224', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156224', 'f6d6cb690ccbb8c'),
(294, '156294', '71e683e487807a3', 'Musa Robbani', '156294', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156294', '71e683e487807a3'),
(295, '156355', '10d291b21696da3', 'Rela Irawan', '156355', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156355', '10d291b21696da3'),
(296, '156257', 'aeb064a9e49491b', 'Maisarah Masyanti', '156257', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156257', 'aeb064a9e49491b'),
(297, '156370', '06ef2b204f4b19e', 'Rina Septiana', '156370', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156370', '06ef2b204f4b19e'),
(298, '156285', '22fed2317a4f3ae', 'Muhammad Rizky Sza k', '156285', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156285', '22fed2317a4f3ae'),
(299, '156185', '64a1976bfe30182', 'Eva Ningsih', '156185', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156185', '64a1976bfe30182'),
(300, '156227', '80b2d3722070976', 'Indrawan', '156227', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156227', '80b2d3722070976'),
(301, '156332', '11eef8782d53e80', 'Putra Ragil Sitinjak', '156332', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156332', '11eef8782d53e80'),
(302, '156113', '7931a3ba6a51e1d', 'Arief Hanan Uspano', '156113', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156113', '7931a3ba6a51e1d'),
(303, '156170', 'a53237a1fee2b8b', 'Doni Novrialdi', '156170', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156170', 'a53237a1fee2b8b'),
(304, '145871', 'a5b7343f3b6103b', 'M. Fadlah', '145871', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '145871', 'a5b7343f3b6103b'),
(305, '156106', '6c25ab72d3501d7', 'Annisa Seprianti', '156106', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156106', '6c25ab72d3501d7'),
(306, '156108', '94d92276faf9ae5', 'Anri Jaquestro', '156108', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156108', '94d92276faf9ae5'),
(307, '156413', 'f288bc0dd27bcc4', 'SYARIFAH NUR AFIFAH', '156413', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156413', 'f288bc0dd27bcc4'),
(308, '156362', '3164c07eba7ec5e', 'REZA OKTAVIANI', '156362', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156362', '3164c07eba7ec5e'),
(309, '156306', '8c4b09062482ef6', 'NANDA WIKA THESINDA', '156306', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156306', '8c4b09062482ef6'),
(310, '156275', 'cc7b319776f774b', 'MERI ANDANI', '156275', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156275', 'cc7b319776f774b'),
(311, '156312', 'cd67fce5acb501a', 'NOVA TRIDIARTI', '156312', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156312', 'cd67fce5acb501a'),
(312, '156157', 'f798d251cc123e0', 'DEWI NUR AZIZAH', '156157', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156157', 'f798d251cc123e0'),
(313, '156393', '52386b349542191', 'SHEILA SAHFIERA', '156393', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156393', '52386b349542191'),
(314, '156241', 'a0964dc80fc111a', 'KUMALA DARMAWAN', '156241', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156241', 'a0964dc80fc111a'),
(315, '156247', '3e671b3f7939c25', 'LINDA RAHMI', '156247', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156247', '3e671b3f7939c25'),
(316, '156150', '94aa35b4cf23fbc', 'DESTIRA DWI PRATIWI', '156150', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156150', '94aa35b4cf23fbc'),
(317, '156396', 'ff65a4a1258c4a6', 'SILVIA', '156396', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156396', 'ff65a4a1258c4a6'),
(318, '156125', '65cd105288b7fde', 'AYU WAHYUNI', '156125', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156125', '65cd105288b7fde'),
(319, '156102', '6d3d6226ab7ffca', 'ANISYAH FILZA RAHMAH', '156102', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156102', '6d3d6226ab7ffca'),
(320, '156155', '40e48da4df0dc54', 'DEVINA SHALSABILLA', '156155', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156155', '40e48da4df0dc54'),
(321, '156460', '9b35c3e6f10acb5', 'Yuha Ramadhani Nasution', '156460', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156460', '9b35c3e6f10acb5'),
(322, '156231', 'e7b7ef7041ef010', 'IRFAN PUTRA AZMI', '156231', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156231', 'e7b7ef7041ef010'),
(323, '156461', 'e27b6411c0caca6', 'YULIA PUTRI', '156461', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156461', 'e27b6411c0caca6'),
(324, '156197', '6ebef27427048cc', 'FEBIANA PUTRI', '156197', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156197', '6ebef27427048cc'),
(325, '156448', '2fc71b71dc90b47', 'WINDA AULIA ASSHAFA', '156448', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156448', '2fc71b71dc90b47'),
(326, '156092', 'c772fbce85ed28c', 'AMMAR ARIF JOELISEF', '156092', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156092', 'c772fbce85ed28c'),
(327, '156124', '4aafac84fd11db3', 'AYU MERLIA', '156124', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156124', '4aafac84fd11db3'),
(328, '156153', 'a70a5298149f6ce', 'DEVI CRISTIAN', '156153', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156153', 'a70a5298149f6ce'),
(329, '156271', 'c920c1595dcdb71', 'MELFITRIANA', '156271', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156271', 'c920c1595dcdb71'),
(330, '156268', 'c21bfff3a2fc9a4', 'MEILIN', '156268', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156268', 'c21bfff3a2fc9a4'),
(331, '156270', 'afbc57f0bb3aa55', 'MELA KIRANTI', '156270', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156270', 'afbc57f0bb3aa55'),
(332, '156202', '8bed7e5f0f2ca41', 'FEBY ARUM', '156202', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156202', '8bed7e5f0f2ca41'),
(333, '156334', 'c4bcd7e43fa445e', 'PUTRI ARISKA', '156334', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156334', 'c4bcd7e43fa445e'),
(334, '156118', '5d5a7cb55990893', 'ATESSA YOZANTI', '156118', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156118', '5d5a7cb55990893'),
(335, '156143', 'b32cd1c846edc67', 'DEDE KURNIAWAN', '156143', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156143', 'b32cd1c846edc67'),
(336, '156415', 'c65aab80f789533', 'SYOFIA ZULIAWATI', '156415', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156415', 'c65aab80f789533'),
(337, '156166', 'a9d87e75d45edc1', 'DINA RAHAYU', '156166', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156166', 'a9d87e75d45edc1'),
(338, '156201', '132e6a519b7ce2b', 'FEBY ANGGRAINI PUTRI', '156201', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156201', '132e6a519b7ce2b');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `ADMIN`
--
ALTER TABLE `ADMIN`
  ADD PRIMARY KEY (`ADMIN_ID`);

--
-- Indeks untuk tabel `GURU`
--
ALTER TABLE `GURU`
  ADD PRIMARY KEY (`GURU_ID`);

--
-- Indeks untuk tabel `JURUSAN`
--
ALTER TABLE `JURUSAN`
  ADD PRIMARY KEY (`JURUSAN_ID`);

--
-- Indeks untuk tabel `JURUSAN_LOCATION`
--
ALTER TABLE `JURUSAN_LOCATION`
  ADD PRIMARY KEY (`JURUSAN_LOCATION_ID`);

--
-- Indeks untuk tabel `LAPORAN`
--
ALTER TABLE `LAPORAN`
  ADD PRIMARY KEY (`LAPORAN_ID`);

--
-- Indeks untuk tabel `LOCATION`
--
ALTER TABLE `LOCATION`
  ADD PRIMARY KEY (`LOCATION_ID`);

--
-- Indeks untuk tabel `PENILAIAN`
--
ALTER TABLE `PENILAIAN`
  ADD PRIMARY KEY (`PENILAIAN_ID`);

--
-- Indeks untuk tabel `PERMOHONAN`
--
ALTER TABLE `PERMOHONAN`
  ADD PRIMARY KEY (`PERMOHONAN_ID`);

--
-- Indeks untuk tabel `SISWA`
--
ALTER TABLE `SISWA`
  ADD PRIMARY KEY (`SISWA_ID`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `ADMIN`
--
ALTER TABLE `ADMIN`
  MODIFY `ADMIN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=4;

--
-- AUTO_INCREMENT untuk tabel `GURU`
--
ALTER TABLE `GURU`
  MODIFY `GURU_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT untuk tabel `JURUSAN`
--
ALTER TABLE `JURUSAN`
  MODIFY `JURUSAN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `JURUSAN_LOCATION`
--
ALTER TABLE `JURUSAN_LOCATION`
  MODIFY `JURUSAN_LOCATION_ID` int(15) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=136;

--
-- AUTO_INCREMENT untuk tabel `LAPORAN`
--
ALTER TABLE `LAPORAN`
  MODIFY `LAPORAN_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `LOCATION`
--
ALTER TABLE `LOCATION`
  MODIFY `LOCATION_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=125;

--
-- AUTO_INCREMENT untuk tabel `PENILAIAN`
--
ALTER TABLE `PENILAIAN`
  MODIFY `PENILAIAN_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `PERMOHONAN`
--
ALTER TABLE `PERMOHONAN`
  MODIFY `PERMOHONAN_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `SISWA`
--
ALTER TABLE `SISWA`
  MODIFY `SISWA_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
