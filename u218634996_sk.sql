-- phpMyAdmin SQL Dump
-- version 4.8.5
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1:3306
-- Waktu pembuatan: 06 Agu 2019 pada 03.14
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
  `ADMIN_USERNAME` varchar(50) DEFAULT NULL,
  `ADMIN_PASSWORD` varchar(50) DEFAULT NULL
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
  `GURU_USERNAME` varchar(50) DEFAULT NULL,
  `GURU_PASSWORD` varchar(50) DEFAULT NULL,
  `GURU_NAMA` varchar(50) DEFAULT NULL,
  `GURU_NIP` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `GURU`
--

INSERT INTO `GURU` (`GURU_ID`, `GURU_USERNAME`, `GURU_PASSWORD`, `GURU_NAMA`, `GURU_NIP`) VALUES
(1, '196705241994122003', 'f18945096d3e6fe958497eb86c3e172e', 'Dra. Ritawati Tanjung', '196705241994122003'),
(2, '196211221987032004', '02bdae1c60f9807ad026bb65cb7c0f5b', 'Puji Harti, S.Pd', '196211221987032004'),
(3, '196503091993031004', '947825935c50e42797d4ba5b6d83b669', 'Drs. Imrawardi', '196503091993031004'),
(4, '197811012008012014', 'b33e835a5b80f4ea050876f037f1e240', 'Tri Noviastuti, S.Pd', '197811012008012014'),
(5, '197301281997022001', 'cc379d015a1bbf82adc8c4ea78287cab', 'Hj. Tina Mailinda, S.Pd', '197301281997022001'),
(6, '196707231994122001', '173fb406411e49e115a5a7d75c74c0c4', 'Dra. Hj. Daflina', '196707231994122001'),
(7, '7', '8f14e45fceea167a5a36dedd4bea2543', 'Budianti Muhklis, S.Pd', '7'),
(8, '196705111993032004', 'ae8bd646c130d8dfcdb70aa5b2ad5df3', 'Dra. Syaprinawati', '196705111993032004'),
(9, '196407011993032005', 'c34c6313bc76daa89c517af0e736a0a2', 'Dra. Juliar', '196407011993032005'),
(10, '196901151995122002', 'c93c83173ea50620d924b00f8fe95ee6', 'Dra. Syari Andayani', '196901151995122002'),
(11, '196904231994022001', '78e30c11d0b83041608b459e6318bd3c', 'Hj. Apriani, S.Pd', '196904231994022001'),
(12, '12', 'c20ad4d76fe97759aa27a0c99bff6710', 'Drs. Muhammad Arief', '12'),
(13, '196605051992032004', '7e9f37e7f5b1f13af168af3e2fc89b2e', 'Zulfatni, MM', '196605051992032004'),
(14, '196701051993032004', 'd96189d60cabeb76f9821bb2187a8a69', 'Nursyawiyah, M.Pd', '196701051993032004'),
(15, '196402101987032007', '0e2c236574dff9e38ce814ae514a158f', 'Hj. Raihana, S.Pd', '196402101987032007'),
(16, '196404131991032003', '629b56daa34ffa47bec3721e124fbb82', 'Dra. Hj. Nurninawati', '196404131991032003'),
(17, '196903011997022002', 'a446688bbb27eb12a266e64d85137cb6', 'Dra. Hj. Suparti', '196903011997022002'),
(18, '196705121994011002', '1b3971209fba5dc8556d60c334bcadfb', 'Drs. Bambang Atlas W', '196705121994011002'),
(19, '19', '1f0e3dad99908345f7439f8ffabdffc4', 'Syaelendra, S. Pd', '19'),
(20, '196912101995012001', 'ae20e4cfff53be53c636e8e749f95818', 'Dewi Hastuti, M.Pd', '196912101995012001'),
(21, '198109182009021004', '28bf134955a2645c3a1f62605f902b30', 'Rochman Budi Wisaksono, S.Kom', '198109182009021004'),
(22, '197707212010011006', '7900d20a77886ddadf05c24ccf306389', 'Yayan Suarghana, S.Kom', '197707212010011006'),
(23, '197403132014071003', 'decb7c2d18b77e356cf264bdc63f04b2', 'Pince Utama, S.Kom', '197403132014071003'),
(24, '197909052011021001', 'd5409d250cea1c5bdce1cee0943989b0', 'Mismar, S.Kom', '197909052011021001'),
(25, '198711182015031004', 'ce9ede76f2a230a469c4d61c2cdbfb39', 'Gunarso, S.Pd', '198711182015031004'),
(26, '198407162010012007', '69f8bc8be265947d56a992ed3a25ebfe', 'Prin Stianingsih, ST', '198407162010012007'),
(27, '197401251998032001', '7fe9535beb0fe9d573c27e091c59d514', 'FITRIANI', '197401251998032001'),
(28, '28', '33e75ff09dd601bbe69f351039152189', 'FIDRA YENI', '28');

-- --------------------------------------------------------

--
-- Struktur dari tabel `JURUSAN`
--

CREATE TABLE `JURUSAN` (
  `JURUSAN_ID` int(11) NOT NULL,
  `JURUSAN` text DEFAULT NULL,
  `JURUSAN_WARNA` varchar(50) DEFAULT NULL
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
  `LOCATION_NAME` text DEFAULT NULL,
  `LOCATION_LAT` text DEFAULT NULL,
  `LOCATION_LNG` text DEFAULT NULL,
  `LOCATION_ADDRESS` text DEFAULT NULL,
  `LOCATION_KUOTA` int(11) DEFAULT NULL,
  `LOCATION_TOTAL` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `LOCATION`
--

INSERT INTO `LOCATION` (`LOCATION_ID`, `LOCATION_USERNAME`, `LOCATION_PASSWORD`, `LOCATION_NAME`, `LOCATION_LAT`, `LOCATION_LNG`, `LOCATION_ADDRESS`, `LOCATION_KUOTA`, `LOCATION_TOTAL`) VALUES
(1, '20190804025222', '61c1b00e5fe18ca18fa4a2c7a4d0f3bd', 'PT IKPP Perawang ', '0.6719103531624223', '101.6078984225169', 'Perawang', 6, 0),
(4, '20190804025416', '1819bcd1c775b65152bfa044f67edb58', 'Politeknik Caltex', '0.5720419765968408', '101.42566960304977', 'Jl. Umban Sari, Rumbai', 2, 0),
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
(17, '20190804032457', 'e915a7ce7b39a13a080c6cef748b4f80', 'BKN Regional XII Provinsi Riau', '0.5073439339131376', '101.50727815926075', 'Jl. Hangtuah ', 2, 0),
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
(72, '20190804054751', 'e4d24cfae2d8b9c4feb08252edbd51cb', 'RS Eka Hospital', '0.48235160261585763', '101.41972534591333', 'Jl. Soekarno Hatta', 3, 0),
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
(91, '20190805050215', 'ed197878faed637756fb8ff8c3249c09', 'Dispenda ', '0.47414529284183654', '101.45294261863457', 'Jl. Jend. Sudirman', 4, 0),
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
  `PENILAIAN_1` varchar(50) NOT NULL DEFAULT '0',
  `PENILAIAN_2` varchar(50) NOT NULL DEFAULT '0',
  `PENILAIAN_3_KET` varchar(50) NOT NULL DEFAULT '0',
  `PENILAIAN_3` varchar(50) NOT NULL DEFAULT '0'
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
  `PERMOHONAN_STATUS` varchar(50) DEFAULT NULL,
  `PERMOHONAN_TANGGAL` timestamp NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

-- --------------------------------------------------------

--
-- Struktur dari tabel `SISWA`
--

CREATE TABLE `SISWA` (
  `SISWA_ID` int(11) NOT NULL,
  `SISWA_USERNAME` varchar(50) DEFAULT NULL,
  `SISWA_PASSWORD` varchar(50) DEFAULT NULL,
  `SISWA_NAMA` varchar(50) DEFAULT NULL,
  `SISWA_NIS` varchar(50) DEFAULT NULL,
  `SISWA_JK` varchar(50) DEFAULT NULL,
  `SISWA_TEMPAT_LAHIR` varchar(50) DEFAULT NULL,
  `SISWA_TGL_LAHIR` date DEFAULT NULL,
  `JURUSAN_ID` int(11) DEFAULT NULL,
  `NAMA_ORTU` varchar(50) DEFAULT NULL,
  `USERNAME_ORTU` varchar(50) DEFAULT NULL,
  `PASSWORD_ORTU` varchar(50) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `SISWA`
--

INSERT INTO `SISWA` (`SISWA_ID`, `SISWA_USERNAME`, `SISWA_PASSWORD`, `SISWA_NAMA`, `SISWA_NIS`, `SISWA_JK`, `SISWA_TEMPAT_LAHIR`, `SISWA_TGL_LAHIR`, `JURUSAN_ID`, `NAMA_ORTU`, `USERNAME_ORTU`, `PASSWORD_ORTU`) VALUES
(1, '156189', '93a9d3af4f7c2977632a3da13be3736b', 'Fani Badriah', '156189', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156189', '93a9d3af4f7c2977632a3da13be3736b'),
(2, '156196', 'a97360f79c89895bce5b750c4e7d2ee6', 'Febby Khairani', '156196', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156196', 'a97360f79c89895bce5b750c4e7d2ee6'),
(3, '156182', '3f07ae3a79c782846767e99ec3713a0d', 'Endah Elfitri R.', '156182', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156182', '3f07ae3a79c782846767e99ec3713a0d'),
(4, '156149', 'a79f146eac21726fe73ecbba9d3303c1', 'Dessy Fitriani', '156149', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156149', 'a79f146eac21726fe73ecbba9d3303c1'),
(5, '156144', 'e6492dc4c8cce0953e992c39500b220a', 'Della Maya', '156144', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156144', 'e6492dc4c8cce0953e992c39500b220a'),
(6, '156219', 'bd67f68eb55875e83038d951a001245b', 'Helena Fitri Diana', '156219', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156219', 'bd67f68eb55875e83038d951a001245b'),
(7, '156199', '65f8bfa02a3b701bbf8bf9ff62d7e265', 'Febri Yuliani', '156199', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156199', '65f8bfa02a3b701bbf8bf9ff62d7e265'),
(8, '156399', 'dc0d2febb41656537cd27f24992d4b5c', 'Sonia Rahmadani', '156399', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156399', 'dc0d2febb41656537cd27f24992d4b5c'),
(9, '156342', 'c29caaf7c5569ed822b2ac3d08bd42eb', 'Rachel Amadhea Bush', '156342', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156342', 'c29caaf7c5569ed822b2ac3d08bd42eb'),
(10, '156360', 'edb39148b0c5a658df2de0d93d62e7d5', 'Reyhan Kirana Istianto', '156360', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156360', 'edb39148b0c5a658df2de0d93d62e7d5'),
(11, '156296', 'c97f9808337daa4b4ad047577db3f2d4', 'Nabila Meliana', '156296', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156296', 'c97f9808337daa4b4ad047577db3f2d4'),
(12, '156391', '013775eb9c001b79a182869dfc599ff5', 'Shakila Merza', '156391', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156391', '013775eb9c001b79a182869dfc599ff5'),
(13, '156311', '0a46aa42986ea3487d48f1456883e640', 'Nora Dwi Rapika', '156311', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156311', '0a46aa42986ea3487d48f1456883e640'),
(14, '156441', 'c9c4422afcc3645bdbfa2968eaff1dd3', 'Wella Afra Shakila', '156441', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156441', 'c9c4422afcc3645bdbfa2968eaff1dd3'),
(15, '156110', '5d6fc4673815e39cb1053de8acaf4e54', 'Afriandi Al Husaini', '156110', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156110', '5d6fc4673815e39cb1053de8acaf4e54'),
(16, '156120', 'a93d66dfd5fb1553fc12e30d6943db71', 'Aulia Dela Rosa Auro Tifha', '156120', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156120', 'a93d66dfd5fb1553fc12e30d6943db71'),
(17, '156084', 'f4271fee034d31ce23c885eae52283ee', 'Ahmad Ikhsan', '156084', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156084', 'f4271fee034d31ce23c885eae52283ee'),
(18, '156210', '4b46301e42249da6052a6c99a424c120', 'Fresli', '156210', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156210', '4b46301e42249da6052a6c99a424c120'),
(19, '156109', 'ee5cc619d37156da905f75440899d3a8', 'Apri Candra Utama', '156109', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156109', 'ee5cc619d37156da905f75440899d3a8'),
(20, '156449', '90388c2eb2fb04b5f6aed006b56440a3', 'Winda Febriani', '156449', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156449', '90388c2eb2fb04b5f6aed006b56440a3'),
(21, '156467', '9725748842fc9a35b0d0650e9b7a95bb', 'Weny Nurhadi', '156467', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156467', '9725748842fc9a35b0d0650e9b7a95bb'),
(22, '156421', '8043211226a028d6bf2e28e151c6d327', 'Tessa Amelia', '156421', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156421', '8043211226a028d6bf2e28e151c6d327'),
(23, '156450', '2f064e010db687fb9d1afd28b9f56c03', 'Winda Ristika', '156450', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156450', '2f064e010db687fb9d1afd28b9f56c03'),
(24, '156354', '5a438b9e9095c67dec813aa989e99dc0', 'Regia Ananda Pasya', '156354', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156354', '5a438b9e9095c67dec813aa989e99dc0'),
(25, '156367', '3c3afec7ff9aab1ce0ba33e481a42a1d', 'Rifa Anggita', '156367', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156367', '3c3afec7ff9aab1ce0ba33e481a42a1d'),
(26, '156372', '67bf2290b0b3f1b5bda26805c3ddc2b2', 'Riski Saputra', '156372', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156372', '67bf2290b0b3f1b5bda26805c3ddc2b2'),
(27, '156245', '71719be6696741479905f809b9765b8f', 'Lidya Nisa Tiwi', '156245', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156245', '71719be6696741479905f809b9765b8f'),
(28, '156462', '00f3076c41915cb3f8aa78875bcf9dfe', 'Yulia Wulansari', '156462', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156462', '00f3076c41915cb3f8aa78875bcf9dfe'),
(29, '156282', 'de2ea36e432e02b8a2eb9a4b8464c994', 'Mitha Febri Berliani', '156282', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156282', 'de2ea36e432e02b8a2eb9a4b8464c994'),
(30, '156314', '158693d35228f133a22cc27217b67ec3', 'Novita Lia Tampubolon', '156314', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156314', '158693d35228f133a22cc27217b67ec3'),
(31, '156361', '9bc294332df20559d9d30ee63477c3f8', 'Reza Mulya Putri', '156361', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156361', '9bc294332df20559d9d30ee63477c3f8'),
(32, '156397', 'd3761b28a7ef939a7b2e344c99cec357', 'Silvia Indriani', '156397', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156397', 'd3761b28a7ef939a7b2e344c99cec357'),
(33, '156307', '8dc8dbce535118016cfefd2df7837e56', 'Nela', '156307', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156307', '8dc8dbce535118016cfefd2df7837e56'),
(34, '156434', 'f2eb7494b7497dc52cae71b110f83a07', 'Urnilasari', '156434', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156434', 'f2eb7494b7497dc52cae71b110f83a07'),
(35, '156335', '66b2a9aa050c052485658159c5394853', 'Putri Elsa Liani', '156335', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156335', '66b2a9aa050c052485658159c5394853'),
(36, '156321', '7b5111cfbe0e2b68b060609e4a088c4a', 'Nurul Dinda Chirunnisa', '156321', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156321', '7b5111cfbe0e2b68b060609e4a088c4a'),
(37, '156326', '4ae54f51b11ea94f637faea13cac0176', 'Okta Melly Yadira', '156326', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156326', '4ae54f51b11ea94f637faea13cac0176'),
(38, '156263', '5a83235ea18d997dbae79a6db14c9ecb', 'Marisa Quratulaini', '156263', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156263', '5a83235ea18d997dbae79a6db14c9ecb'),
(39, '156357', '7c356064a122f5fe67ab89c5dbadb93b', 'Retno Astari Hastuti', '156357', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156357', '7c356064a122f5fe67ab89c5dbadb93b'),
(40, '156389', '01f602088ea732ab26eee1d1a9c51ae5', 'Siti Aisyah', '156389', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156389', '01f602088ea732ab26eee1d1a9c51ae5'),
(41, '156364', 'ff839ab6d51b3ef9d95980cccc00a670', 'Rezky Fahnella Putri', '156364', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156364', 'ff839ab6d51b3ef9d95980cccc00a670'),
(42, '156162', '0ca713b717cb842ef2d13d83f37bacdc', 'Dian Desnita', '156162', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156162', '0ca713b717cb842ef2d13d83f37bacdc'),
(43, '156283', '47d23d35ab19f03c6bdc7d1b4d03cd13', 'Monalisa Irnawati', '156283', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156283', '47d23d35ab19f03c6bdc7d1b4d03cd13'),
(44, '156428', 'a82f0f2a60495609a5ee457f8978ef07', 'Tiya Eka Safitri', '156428', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156428', 'a82f0f2a60495609a5ee457f8978ef07'),
(45, '156445', '64d81a21e6ea483a7ae441ffe4619f24', 'Wilda Vira Ningsih', '156445', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156445', '64d81a21e6ea483a7ae441ffe4619f24'),
(46, '156236', 'f948cb741921572a58b076a521c22864', 'Junita  Jayanti Saputri', '156236', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156236', 'f948cb741921572a58b076a521c22864'),
(47, '156380', '7300640719ec3c348ba6711b41abea59', 'Romia Mungkur', '156380', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156380', '7300640719ec3c348ba6711b41abea59'),
(48, '156145', 'b57ecc8c45fe95b7d6bf3519dec25594', 'Della Widya Sari', '156145', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156145', 'b57ecc8c45fe95b7d6bf3519dec25594'),
(49, '156209', '7afd5483981af034b70de9cafee6dd26', 'Fitriyani Nasution', '156209', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156209', '7afd5483981af034b70de9cafee6dd26'),
(50, '156115', 'be92a265dc490251fd33a500c5546d9d', 'Arifah Ummuhani', '156115', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156115', 'be92a265dc490251fd33a500c5546d9d'),
(51, '156382', '7e8d605adb6acada723ee4938a48e5f0', 'Rosa  Oktavia Wirdanigsih', '156382', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156382', '7e8d605adb6acada723ee4938a48e5f0'),
(52, '156317', '7c87f4c281f00cdb86f1350f2e06b55d', 'Nur Anisah', '156317', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156317', '7c87f4c281f00cdb86f1350f2e06b55d'),
(53, '156444', '17665aba9ae634fd121561a17b96059b', 'Widya Syafitri', '156444', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156444', '17665aba9ae634fd121561a17b96059b'),
(54, '156293', '4a51cdaee3573e3a8e43cc996f3e41a6', 'Murniati J', '156293', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156293', '4a51cdaee3573e3a8e43cc996f3e41a6'),
(55, '156338', 'ffbcb51fc6f7a87f52d531c536111230', 'Putri Nabila Mariza', '156338', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156338', 'ffbcb51fc6f7a87f52d531c536111230'),
(56, '156105', '47a2759a37e8e4ca79ffcce06c8f727c', 'Annisa Rahmawati', '156105', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156105', '47a2759a37e8e4ca79ffcce06c8f727c'),
(57, '156351', 'ac4789ccbf691fd320b3a441b048264a', 'Raudhatul Hiifzah', '156351', 'perempuan', 'Pekanbaru', '0000-00-00', 2, 'Orangtua', '156351', 'ac4789ccbf691fd320b3a441b048264a'),
(58, '156280', '58a77939ea4f0735248ed60da262d93a', 'Mifta Huljannah', '156280', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156280', '58a77939ea4f0735248ed60da262d93a'),
(59, '156430', '688b3fb7764fe32e74754d4b26c6fc89', 'Triwahyuni Adi Putri', '156430', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156430', '688b3fb7764fe32e74754d4b26c6fc89'),
(60, '156212', '908d44f584cd99c1e73e6d81b442688c', 'Friska Wulandari', '156212', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156212', '908d44f584cd99c1e73e6d81b442688c'),
(61, '156242', '644994b73cb1af4008b6cd08cfdae6ca', 'Kurnia Fika Sari', '156242', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156242', '644994b73cb1af4008b6cd08cfdae6ca'),
(62, '156363', '3b2bfbb9096fe09ac2c3c9410deb696c', 'Rezi Ferika Amelinda', '156363', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156363', '3b2bfbb9096fe09ac2c3c9410deb696c'),
(63, '156262', '7c68bb93a51442612d075e21c68650ce', 'Marina Syafera', '156262', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156262', '7c68bb93a51442612d075e21c68650ce'),
(64, '156308', '0d8431e0d7274c600d4473ccf516c28c', 'Nisa Rahmadani', '156308', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156308', '0d8431e0d7274c600d4473ccf516c28c'),
(65, '156358', 'f3c0448b85377330af62d3efbc19b071', 'Retno Ayuni', '156358', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156358', 'f3c0448b85377330af62d3efbc19b071'),
(66, '156276', 'c74c0b7168dae887f89b118485f6fe20', 'Mescutriza', '156276', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156276', 'c74c0b7168dae887f89b118485f6fe20'),
(67, '156181', '9f08eec6178b38423f9c0ac2a4e3a0b7', 'Elsi Maryani', '156181', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156181', '9f08eec6178b38423f9c0ac2a4e3a0b7'),
(68, '156299', '6a63adfb20d45b2af2d86a7e39606807', 'Nadia Putri', '156299', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156299', '6a63adfb20d45b2af2d86a7e39606807'),
(69, '156451', '9e26f6c2ef4d2f5a3bd179d5483dc86f', 'Windy Febriani', '156451', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156451', '9e26f6c2ef4d2f5a3bd179d5483dc86f'),
(70, '156383', 'f09ea002271fc6c2b85481196920e662', 'Ryan', '156383', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156383', 'f09ea002271fc6c2b85481196920e662'),
(71, '156359', 'e172f6a75382cb908282b229fc92f560', 'Revanza Vicansah Ramadhan', '156359', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156359', 'e172f6a75382cb908282b229fc92f560'),
(72, '156080', '23394973d9583eb60440403c92e1a961', 'Adinsyah', '156080', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156080', '23394973d9583eb60440403c92e1a961'),
(73, '156079', '625f4c74343e2c969fec36c86559a0b8', 'Adinda Ulan Riawan', '156079', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156079', '625f4c74343e2c969fec36c86559a0b8'),
(74, '156167', '03b2f744b51a4f08dc1e40f8bc658336', 'Dinda Kasturi', '156167', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156167', '03b2f744b51a4f08dc1e40f8bc658336'),
(75, '156269', '3d5782937fd3524d20518dc87b34b2fa', 'Meissy Triana Putri', '156269', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156269', '3d5782937fd3524d20518dc87b34b2fa'),
(76, '156298', '6a4ea83048810b891111e5a2f46b6720', 'Nada Dwi Dava Salsabila', '156298', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156298', '6a4ea83048810b891111e5a2f46b6720'),
(77, '156194', '27c67ddabd06b8c9ff3fde0e9308c014', 'Fazila Arista', '156194', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156194', '27c67ddabd06b8c9ff3fde0e9308c014'),
(78, '156137', '469854e193cd66c1364bb5e7dcca2ddd', 'Chusnul Shusmawati', '156137', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156137', '469854e193cd66c1364bb5e7dcca2ddd'),
(79, '156243', '996886fdb7bbc3c032caf8b543bfe56a', 'Latifah Putri Rahayu', '156243', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156243', '996886fdb7bbc3c032caf8b543bfe56a'),
(80, '156159', '1ce3d3ffd4ce94574782090f66f508b8', 'Dea Hernita Gustin', '156159', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156159', '1ce3d3ffd4ce94574782090f66f508b8'),
(81, '156442', 'd708171cac9096f2df3d781630ec4c3d', 'Welly Nasvatesia', '156442', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156442', 'd708171cac9096f2df3d781630ec4c3d'),
(82, '156425', 'd3e3a67dbd397d8bd3f339c574f42e55', 'Tika Yesti Rahmi', '156425', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156425', 'd3e3a67dbd397d8bd3f339c574f42e55'),
(83, '156135', '3f674575d121d52e8b10e463e2e21ea0', 'Chindy Larasati Manurung', '156135', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156135', '3f674575d121d52e8b10e463e2e21ea0'),
(84, '156273', 'a1f87b22a41713eca231ab74cabd8606', 'Melisa Putri', '156273', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156273', 'a1f87b22a41713eca231ab74cabd8606'),
(85, '156459', 'cc2d45259fb27d02076396d9ca246a81', 'Yolla Silvia Maharani', '156459', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156459', 'cc2d45259fb27d02076396d9ca246a81'),
(86, '156438', 'd487ae74352082b55cce14c61d033849', 'Vindi Samsuri Ayuhan Nduru', '156438', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156438', 'd487ae74352082b55cce14c61d033849'),
(87, '156059', '9237e7f0cda97160bbe49deede5366a7', 'Almira Devina Putri', '156059', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156059', '9237e7f0cda97160bbe49deede5366a7'),
(88, '156111', 'e0033450f3afca040694287e07f28a74', 'Aprilita Larasati', '156111', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156111', 'e0033450f3afca040694287e07f28a74'),
(89, '156256', '0599c7b9945a57c4bd004919f132bd1e', 'Maharani Syafitri', '156256', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156256', '0599c7b9945a57c4bd004919f132bd1e'),
(90, '156162', '0ca713b717cb842ef2d13d83f37bacdc', 'Desy Selvia', '156162', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156162', '0ca713b717cb842ef2d13d83f37bacdc'),
(91, '156085', 'e8b639b586e4c2a916d7e69667ddc9b8', 'Ahmad Junaidy', '156085', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156085', 'e8b639b586e4c2a916d7e69667ddc9b8'),
(92, '156093', '599168ddc3f61b8c83e36684e8b3d8b4', 'Andi Pranata', '156093', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156093', '599168ddc3f61b8c83e36684e8b3d8b4'),
(93, '156405', '8d80bff6fec8f6d310dc01fab5aab6d0', 'Sujanna Nasution', '156405', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156405', '8d80bff6fec8f6d310dc01fab5aab6d0'),
(94, '156232', '41b4605104b035500e865242585d8033', 'Irma Gusnia Ayu Putri', '156232', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156232', '41b4605104b035500e865242585d8033'),
(95, '156141', '81ae5ef3f8b5df3782d1b330374d6b05', 'Dandi Suhendra', '156141', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156141', '81ae5ef3f8b5df3782d1b330374d6b05'),
(96, '156281', 'c85ce60914639cebc4f9cd84dde146df', 'Miftahul Jannah', '156281', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156281', 'c85ce60914639cebc4f9cd84dde146df'),
(97, '156161', 'dc8cd50ec6f2e7bc0a3d5402503e6e6f', 'Dhini Fadelina', '156161', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156161', 'dc8cd50ec6f2e7bc0a3d5402503e6e6f'),
(98, '156377', 'd5961112acb3a65906f64d9e12dc7ba5', 'Rizki Syafmulti', '156377', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156377', 'd5961112acb3a65906f64d9e12dc7ba5'),
(99, '156238', 'c53284dccbb05406eee3c43ff3131bc0', 'Khaira Nabila', '156238', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156238', 'c53284dccbb05406eee3c43ff3131bc0'),
(100, '156411', 'bb4413f28f70d2e5982ed441b05a0527', 'Syafrina Karlia Afrizan', '156411', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156411', 'bb4413f28f70d2e5982ed441b05a0527'),
(101, '156237', 'fbc61f5447ff06170e176302ae53d988', 'Kellen', '156237', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156237', 'fbc61f5447ff06170e176302ae53d988'),
(102, '156165', '05c6ecdf57d64bd808df7c6cb4e050eb', 'Diki Chandra Kirana', '156165', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156165', '05c6ecdf57d64bd808df7c6cb4e050eb'),
(103, '156151', '38cfea09e10bd786ff870d78de0cb62b', 'Desy Riandatari', '156151', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156151', '38cfea09e10bd786ff870d78de0cb62b'),
(104, '156274', '317c635e6453535a1c0d445372dec1e4', 'Mellysa Agustine', '156274', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156274', '317c635e6453535a1c0d445372dec1e4'),
(105, '156272', 'f644bbf11e611baa22f2443b7a605d22', 'Melisa Kanaya Azura', '156272', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156272', 'f644bbf11e611baa22f2443b7a605d22'),
(106, '156331', '4f812f420504cc8d1f9464aea65f9c7e', 'Pungki Krisna Subakti', '156331', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156331', '4f812f420504cc8d1f9464aea65f9c7e'),
(107, '156260', '5221618c56d53dd440f1fd5b84894344', 'Margareth Romauli', '156260', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156260', '5221618c56d53dd440f1fd5b84894344'),
(108, '156180', '3359cdc20d49f36847317c069b7ce48c', 'Elsa Rohkyani Barutu', '156180', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156180', '3359cdc20d49f36847317c069b7ce48c'),
(109, '156249', '552dca6174f5ded0e48ce51a8bc496b5', 'Luisa Afrina', '156249', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156249', '552dca6174f5ded0e48ce51a8bc496b5'),
(110, '156350', '8e8b05d71d29271185a32f863a932132', 'Ratu Azhira', '156350', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156350', '8e8b05d71d29271185a32f863a932132'),
(111, '156100', '22e078482b2fc955766f63d1e60e556f', 'Anisa Riski Yulia', '156100', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156100', '22e078482b2fc955766f63d1e60e556f'),
(112, '156409', '072a9e9410d92876ffc439408d49cb1f', 'Syafirah', '156409', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156409', '072a9e9410d92876ffc439408d49cb1f'),
(113, '156146', 'ee35f3fe27bbc8c0428772bec69bec48', 'Delvi Agustin Syafitri', '156146', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156146', 'ee35f3fe27bbc8c0428772bec69bec48'),
(114, '156345', 'ed4254e7558e84114ae2319723b62cc1', 'Rahmaini', '156345', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156345', 'ed4254e7558e84114ae2319723b62cc1'),
(115, '156147', 'af39faf6dcfab7a8b391b087bfc9e449', 'Deriyanto Rramadhan', '156147', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156147', 'af39faf6dcfab7a8b391b087bfc9e449'),
(116, '156114', 'bdec8ff17686753c0d0d2322ed487966', 'Arif  Yafi\'i', '156114', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156114', 'bdec8ff17686753c0d0d2322ed487966'),
(117, '156323', 'f119555ebb5f2482340618251c49de4d', 'Nury Ragil Lestari', '156323', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156323', 'f119555ebb5f2482340618251c49de4d'),
(118, '156337', 'b7fbb1be4fc5ba38065341a73effa9b7', 'Putri Husadana', '156337', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156337', 'b7fbb1be4fc5ba38065341a73effa9b7'),
(119, '156154', 'a2de62673c73f76bdaf92fbeabda164b', 'Devi Susanti', '156154', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156154', 'a2de62673c73f76bdaf92fbeabda164b'),
(120, '156203', '11def325609138b0b95e330c1073954b', 'Felicia Julieta Halim', '156203', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156203', '11def325609138b0b95e330c1073954b'),
(121, '156174', '5daf47aabb183ab5894aa9ea890e192a', 'Dwie Fatihani Izzati', '156174', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156174', '5daf47aabb183ab5894aa9ea890e192a'),
(122, '156148', '5291332ea831bd1aeca31c499f8025dc', 'Desi Katrina Simanjuntak', '156148', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156148', '5291332ea831bd1aeca31c499f8025dc'),
(123, '156463', 'a17ccdb9e4e3331a8b16298b1f403114', 'Yunike Claudia Titania', '156463', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156463', 'a17ccdb9e4e3331a8b16298b1f403114'),
(124, '156259', '2621dd2120125e6034df95d5b635100c', 'Mardhatillah Amdawa', '156259', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156259', '2621dd2120125e6034df95d5b635100c'),
(125, '156304', '15ce458bd136f179df2eb6f2280d0fca', 'Nadya Putri Mulyadi', '156304', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156304', '15ce458bd136f179df2eb6f2280d0fca'),
(126, '156266', 'cef60fb3402e7f05cc78d98d8f801aec', 'Mayang Sari', '156266', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156266', 'cef60fb3402e7f05cc78d98d8f801aec'),
(127, '156305', 'c071735cbf81169a961f6a1ca2a38951', 'Nadya Selfira Hulhadi', '156305', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156305', 'c071735cbf81169a961f6a1ca2a38951'),
(128, '156453', 'f39a5f04a73054b678426d39335c9632', 'Wiwit Ananda', '156453', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156453', 'f39a5f04a73054b678426d39335c9632'),
(129, '156221', '604c5816f286e8ceecaa33291dda5ddf', 'Helmi Fitria', '156221', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156221', '604c5816f286e8ceecaa33291dda5ddf'),
(130, '156426', '77fe6e828924d44e593f7d864d1e6245', 'Tika Yolanda Putri', '156426', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156426', '77fe6e828924d44e593f7d864d1e6245'),
(131, '156278', 'cc7a9753f69e09e329f8f47c03343996', 'Mia Elfitri Yanti', '156278', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156278', 'cc7a9753f69e09e329f8f47c03343996'),
(132, '156076', '9e05e38ec965cba46e06a13e6406480f', 'Adinda Putri', '156076', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156076', '9e05e38ec965cba46e06a13e6406480f'),
(133, '156349', '75ae27f0f99ac626ce95d3dfcf3f1e9e', 'Rati Dewi', '156349', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156349', '75ae27f0f99ac626ce95d3dfcf3f1e9e'),
(134, '156466', '9f77e26754b3f8293decb636b5668376', 'Kevin Arridho', '156466', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156466', '9f77e26754b3f8293decb636b5668376'),
(135, '156381', 'bf0e29b7ba11a0374705eda572f02d77', 'Romiz Aisya Taupiqurrahman', '156381', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156381', 'bf0e29b7ba11a0374705eda572f02d77'),
(136, '156116', 'b70c2495ef6a93342fbc8cf430cda9a4', 'Arya Bagas Dianugrah', '156116', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156116', 'b70c2495ef6a93342fbc8cf430cda9a4'),
(137, '156255', '5b875bd5b3b4284d9e299f2ec7d39110', 'M. Yoga Amanda', '156255', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156255', '5b875bd5b3b4284d9e299f2ec7d39110'),
(138, '156313', '325fbf06fb683ed397a21285629d37f1', 'Novia Magdalena', '156313', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156313', '325fbf06fb683ed397a21285629d37f1'),
(139, '156208', 'dcb765ff50e9ce4c90d79a8b3015226d', 'Fitri Valentine', '156208', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156208', 'dcb765ff50e9ce4c90d79a8b3015226d'),
(140, '156324', 'b16ddb5e56693b76446f500e767f78af', 'Oharana Hutagalung', '156324', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156324', 'b16ddb5e56693b76446f500e767f78af'),
(141, '156204', '944d2f76bec41c22528d7d4eca307cfd', 'Fellia Princesa', '156204', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156204', '944d2f76bec41c22528d7d4eca307cfd'),
(142, '156440', '0ee3cb2aea055a5110f15b8ef4bb8453', 'Winda Tesalonika', '156440', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156440', '0ee3cb2aea055a5110f15b8ef4bb8453'),
(143, '156344', 'e97b7ff3606ac8b1622433fd30815d10', 'Gustina Adinda Putri', '156344', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156344', 'e97b7ff3606ac8b1622433fd30815d10'),
(144, '156163', '6fe8e9d530c94d6bea10e2017b9ae353', 'Dian Mauliddia', '156163', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156163', '6fe8e9d530c94d6bea10e2017b9ae353'),
(145, '156158', 'bb9b6e2916f309660ce763717387741d', 'Dewi Risdayanti', '156158', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156158', 'bb9b6e2916f309660ce763717387741d'),
(146, '156288', '01a48a39ef6612ee8c453fb0b0ca73ee', 'Muhammad Maulana', '156288', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156288', '01a48a39ef6612ee8c453fb0b0ca73ee'),
(147, '156223', '4d61e6f51607874fa3665fdd35bcd442', 'Ihsanul Ilham', '156223', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156223', '4d61e6f51607874fa3665fdd35bcd442'),
(148, '156264', '5f424f68dad8ad1f134d521ca79a75d5', 'Maulana Hamdani', '156264', 'perempuan', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156264', '5f424f68dad8ad1f134d521ca79a75d5'),
(149, '156366', 'f0b03f97a64550904eefca561df23d62', 'Ridavo Linkazner', '156366', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 3, 'Orangtua', '156366', 'f0b03f97a64550904eefca561df23d62'),
(150, '156164', '5f0fa4a805615e3a2ae74561f5e4393f', 'Diana Safitri', '156164', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156164', '5f0fa4a805615e3a2ae74561f5e4393f'),
(151, '156374', '82eaa7bc7f2a1c8b13b90a6d8ad6384e', 'Rismawati', '156374', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156374', '82eaa7bc7f2a1c8b13b90a6d8ad6384e'),
(152, '156343', 'df781eb1eff31c8163954aa3a8348cb4', 'Rahayu', '156343', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156343', 'df781eb1eff31c8163954aa3a8348cb4'),
(153, '156456', '3d9572538726a83b30918ada08b23cdf', 'Yefnira Ariska', '156456', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156456', '3d9572538726a83b30918ada08b23cdf'),
(154, '156235', '9b78c9491a69347dd93b6bab440f816a', 'Juli Yana', '156235', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156235', '9b78c9491a69347dd93b6bab440f816a'),
(155, '156134', 'f8d0b8103de0eccb2b6afe0eb89a5ae8', 'Cecilia', '156134', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156134', 'f8d0b8103de0eccb2b6afe0eb89a5ae8'),
(156, '156096', '2e2a039250cf822e5cf5d9a99a304901', 'Anggelina', '156096', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156096', '2e2a039250cf822e5cf5d9a99a304901'),
(157, '156142', '4813b64b24b579d0aa17736e5023ea7e', 'Muhammad Khasyahrizal', '156142', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156142', '4813b64b24b579d0aa17736e5023ea7e'),
(158, '156287', 'c13c96de557be1fb5d28015c1989408e', 'Dea Aprila', '156287', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156287', 'c13c96de557be1fb5d28015c1989408e'),
(159, '156336', '4246d56b22acb688b6fb8afaeb099349', 'Putri Handayani', '156336', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156336', '4246d56b22acb688b6fb8afaeb099349'),
(160, '156081', 'b211555045d4468d53febf31a81de7f3', 'Adzra Hanifah Suri', '156081', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156081', 'b211555045d4468d53febf31a81de7f3'),
(161, '156410', '52461d160f95cae579abd9281c227711', 'Syafriansah Putri', '156410', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156410', '52461d160f95cae579abd9281c227711'),
(162, '156234', 'acd49bbac29935966660c790a68fd071', 'Johan Kevin Andreas Lumbang', '156234', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156234', 'acd49bbac29935966660c790a68fd071'),
(163, '156090', '5799eac560376efdd2fa77aa4ce26943', 'Aliva Nadya', '156090', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156090', '5799eac560376efdd2fa77aa4ce26943'),
(164, '156183', '6b6868854572d02ee7721130c872610b', 'Erna Purnamasari', '156183', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156183', '6b6868854572d02ee7721130c872610b'),
(165, '156303', 'b869330549d07e11f2ab1d3a50aa774e', 'Nadra Pena Lisa MY', '156303', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156303', 'b869330549d07e11f2ab1d3a50aa774e'),
(166, '156300', 'abe25c6f422ad97641737fd7de0a9d16', 'Nadia Ridanti Eka Putri', '156300', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156300', 'abe25c6f422ad97641737fd7de0a9d16'),
(167, '156228', '867a0dbb8bd4754641880dbdae845692', 'Intan Nuaini', '156228', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156228', '867a0dbb8bd4754641880dbdae845692'),
(168, '156229', 'efc8564dea777990d75e3fe9366f930e', 'Intan Pratiwy. S', '156229', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156229', 'efc8564dea777990d75e3fe9366f930e'),
(169, '156320', '560f205b3f8a22b7dec560ca2e7f5d49', 'Nur Rahmawati', '156320', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156320', '560f205b3f8a22b7dec560ca2e7f5d49'),
(170, '156420', 'a1d70ec62f32f1bab8ddaf0d4b5a0733', 'Tenny Adilla Justika', '156420', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156420', 'a1d70ec62f32f1bab8ddaf0d4b5a0733'),
(171, '156103', '02862ed6932b1c736b52cec961f25179', 'Anita Royi', '156103', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156103', '02862ed6932b1c736b52cec961f25179'),
(172, '156101', 'b62701c46b9344eb70afe729bac54fa6', 'Anisa Balkis', '156101', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156101', 'b62701c46b9344eb70afe729bac54fa6'),
(173, '156406', 'ec9dde118ea015924ce39f91c436276a', 'Suryani', '156406', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156406', 'ec9dde118ea015924ce39f91c436276a'),
(174, '156217', '1129cb8ba4665189d5a9bd861a2e28b9', 'Hanna Bella Pesta Saragih', '156217', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156217', '1129cb8ba4665189d5a9bd861a2e28b9'),
(175, '156246', '493ba08d202e3893050e7c866ab3c9de', 'Liliyani Gustivon', '156246', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156246', '493ba08d202e3893050e7c866ab3c9de'),
(176, '156160', '442653c6006660554b2ac9be65f22e41', 'Dhea Ofiyana', '156160', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156160', '442653c6006660554b2ac9be65f22e41'),
(177, '156322', '86eaca7527df0ed5ba1738d193fb8751', 'Nurul Hikmah Putri', '156322', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156322', '86eaca7527df0ed5ba1738d193fb8751'),
(178, '156083', '7f5f309d8f6ccc923c4f357ed0740490', 'Agung Maulana zen', '156083', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156083', '7f5f309d8f6ccc923c4f357ed0740490'),
(179, '156384', '6766bee9802f263e2a9d3974ca4bd31d', 'Said Muhammad Dhiya Ulhaq', '156384', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156384', '6766bee9802f263e2a9d3974ca4bd31d'),
(180, '156107', 'accc7b05ee70c77e040b9715580b6b2c', 'Annisa Siregar', '156107', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156107', 'accc7b05ee70c77e040b9715580b6b2c'),
(181, '156291', '855f5c5538335c6ed7456f0a8068d5ba', 'Muhammad Ridho', '156291', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156291', '855f5c5538335c6ed7456f0a8068d5ba'),
(182, '156400', '97ace8ab7da54df7f5ccdd947651766d', 'Sonia Wulandari', '156400', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156400', '97ace8ab7da54df7f5ccdd947651766d'),
(183, '156318', '1f88c7ecfba8ac1d8f6ef570344392d3', 'Nur Fitria Ramadhani', '156318', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156318', '1f88c7ecfba8ac1d8f6ef570344392d3'),
(184, '156352', 'ce32db888ba7e0461db5f76b9c379d69', 'Recky Ficeroy', '156352', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156352', 'ce32db888ba7e0461db5f76b9c379d69'),
(185, '156416', '65e0f76f9f8f9de99a167590df5a428f', 'Syopyan Gusriadi', '156416', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156416', '65e0f76f9f8f9de99a167590df5a428f'),
(186, '156277', '697bf2c3e499fd79b8dc58246d28ba96', 'Mesi', '156277', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156277', '697bf2c3e499fd79b8dc58246d28ba96'),
(187, '156385', '14a869b1b7fdf2d6d4684f76e30ce337', 'Salsalia Putri Sabrina', '156385', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156385', '14a869b1b7fdf2d6d4684f76e30ce337'),
(188, '156395', '597d9aff7b934c874eedc599d0e2af45', 'Silvia', '156395', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156395', '597d9aff7b934c874eedc599d0e2af45'),
(189, '156250', '9455fca9a3214f83683805c6bb0433cc', 'Luthfi Ismayeni', '156250', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156250', '9455fca9a3214f83683805c6bb0433cc'),
(190, '156198', 'dce50652cff12813875656e8b0e4b5b3', 'Febri Yollanda', '156198', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156198', 'dce50652cff12813875656e8b0e4b5b3'),
(191, '156432', 'f322a85ea1df03422f42c1d0e7580c19', 'Triana Savira', '156432', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156432', 'f322a85ea1df03422f42c1d0e7580c19'),
(192, '156184', '1e2900ee649e73995ef787c8f33042c0', 'Ersa Lestari', '156184', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156184', '1e2900ee649e73995ef787c8f33042c0'),
(193, '156121', 'a622f038c0e745f25f2e20d480c46898', 'Aulia Fransiska', '156121', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156121', 'a622f038c0e745f25f2e20d480c46898'),
(194, '156265', '1b818390e7ce0b006d0a9c720b811c99', 'Maulana Nugraha', '156265', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156265', '1b818390e7ce0b006d0a9c720b811c99'),
(195, '156177', '29d7087894a3c4e6ee7ef8ca9b231b9a', 'El Muhammad Rizki', '156177', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156177', '29d7087894a3c4e6ee7ef8ca9b231b9a'),
(196, '156169', '36ac13d22071404c4d418d3ef87a0a79', 'Dirham Syahputra', '156169', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156169', '36ac13d22071404c4d418d3ef87a0a79'),
(197, '156303', 'b869330549d07e11f2ab1d3a50aa774e', 'Nadira Nurul Pratiwi', '156303', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156303', 'b869330549d07e11f2ab1d3a50aa774e'),
(198, '156213', 'cf133b9c0bf44b0afa8c477d54aafdb3', 'Ghozi Ferdiansyah P', '156213', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156213', 'cf133b9c0bf44b0afa8c477d54aafdb3'),
(199, '156458', '55d9057dcb2bed6c5984ce33d52dc925', 'Yola Nofrianti', '156458', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156458', '55d9057dcb2bed6c5984ce33d52dc925'),
(200, '156226', '60bc1a5e24e2bf9463305be66a00758f', 'Indra Saputra', '156226', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156226', '60bc1a5e24e2bf9463305be66a00758f'),
(201, '156427', '4c5027355f12825b0fde7a5d13bfaa6b', 'Tiona Elia Ananda', '156427', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156427', '4c5027355f12825b0fde7a5d13bfaa6b'),
(202, '156347', '539d5f646c9f7a68852d84742e6921aa', 'Ramadhani Putri', '156347', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156347', '539d5f646c9f7a68852d84742e6921aa'),
(203, '156128', '11ae77fcbf1243e0fb027e068a8501cd', 'Azizah Fadillah', '156128', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156128', '11ae77fcbf1243e0fb027e068a8501cd'),
(204, '156436', 'ea1026696cadc48775907505feafed8e', 'Vera Nurjannah', '156436', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156436', 'ea1026696cadc48775907505feafed8e'),
(205, '156192', '15b926207df9d1f93fb6bc2484a21f1e', 'Fauzan Yahya', '156192', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156192', '15b926207df9d1f93fb6bc2484a21f1e'),
(206, '156239', 'fd6e7fa5dc19cf6d2c4aad207e619ead', 'Khairun Annisa', '156239', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156239', 'fd6e7fa5dc19cf6d2c4aad207e619ead'),
(207, '156433', 'e98185568dd17c6117b9b2e8cd68abac', 'Tri Maidayanti', '156433', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156433', 'e98185568dd17c6117b9b2e8cd68abac'),
(208, '156286', '6cd2a759be6d746286b03ddca49ee43c', 'Muhammad Ilham', '156286', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156286', '6cd2a759be6d746286b03ddca49ee43c'),
(209, '156368', 'b453c41559c6728f2452c2482c72e1ef', 'Rifqi Rivaldi Safin', '156368', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156368', 'b453c41559c6728f2452c2482c72e1ef'),
(210, '156254', 'a5a4baac0e160aa64f0d51a80ad73bab', 'Muhammad Rizki Rarmadhan', '156254', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156254', 'a5a4baac0e160aa64f0d51a80ad73bab'),
(211, '156407', '2a9cab12025fd268e0fa8e9bde141a69', 'Suryawati', '156407', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156407', '2a9cab12025fd268e0fa8e9bde141a69'),
(212, '156207', 'a283ff7946fb6972442b718f6f79b699', 'Fildza Batrisyia', '156207', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156207', 'a283ff7946fb6972442b718f6f79b699'),
(213, '156139', '760eb5cba918a301036811c1d1aff0c2', 'Cindy Karunia Illahi Putri', '156139', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156139', '760eb5cba918a301036811c1d1aff0c2'),
(214, '156138', 'bce35ac03d2f984b9690e4500de02f89', 'Cici Ariska', '156138', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156138', 'bce35ac03d2f984b9690e4500de02f89'),
(215, '156339', 'db4c3bf00068ad845398df26d8dcc4a4', 'Putri Rahmawati', '156339', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156339', 'db4c3bf00068ad845398df26d8dcc4a4'),
(216, '156205', '9ce26bc14bb4a1255f4b1fb8fe7e8212', 'Fetti Fajrianti', '156205', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156205', '9ce26bc14bb4a1255f4b1fb8fe7e8212'),
(217, '156289', 'f36d0c89a9f8356ec11597c548d48347', 'Muhammad Nur Hardianto', '156289', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156289', 'f36d0c89a9f8356ec11597c548d48347'),
(218, '156375', 'b492bc76d0ef136bd1410832e8b8c7dc', 'Rizki Amelia', '156375', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156375', 'b492bc76d0ef136bd1410832e8b8c7dc'),
(219, '156341', '80fd338cfd273b38edb4f3d07a8f1cfc', 'Putri Yolandari', '156341', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156341', '80fd338cfd273b38edb4f3d07a8f1cfc'),
(220, '156094', '68697de1f40f4ccb1e7390d7ea4c5b24', 'Andra Safitri', '156094', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156094', '68697de1f40f4ccb1e7390d7ea4c5b24'),
(221, '156443', '8c5bacc6cd18085f079a68cdddee9bc4', 'Widya Setyanela', '156443', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156443', '8c5bacc6cd18085f079a68cdddee9bc4'),
(222, '156216', '71ff465903253ce40ebbbd797969bbde', 'Hana Afifah Zahra', '156216', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156216', '71ff465903253ce40ebbbd797969bbde'),
(223, '156211', '7394c5dd067ffe1e452e222f558fec1c', 'Fretty Carmelita', '156211', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156211', '7394c5dd067ffe1e452e222f558fec1c'),
(224, '156171', '9787ee584b6e9d6ef6afacdebf4f589f', 'Dora Erica', '156171', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156171', '9787ee584b6e9d6ef6afacdebf4f589f'),
(225, '156166', 'a9d87e75d45edc11da09b77f96b778e7', 'Dewi', '156166', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156166', 'a9d87e75d45edc11da09b77f96b778e7'),
(226, '156220', '384bfb88e267f2919e37c13734fb9ce4', 'Helmalia', '156220', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156220', '384bfb88e267f2919e37c13734fb9ce4'),
(227, '156200', '07590ee7bd26ca6e8e1831f75d728f06', 'Febrian Falenza', '156200', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156200', '07590ee7bd26ca6e8e1831f75d728f06'),
(228, '156435', '4f5c5420365bfa2751f608ce3ae51b15', 'Utamie Apradelia Putri R', '156435', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156435', '4f5c5420365bfa2751f608ce3ae51b15'),
(229, '156301', 'c69afad452432c38cf803c12def463d0', 'Nadia Sukmaawati', '156301', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156301', 'c69afad452432c38cf803c12def463d0'),
(230, '156195', 'dbeb67a68c0cb51fab0616b0b1edbbf0', 'Febby Aznisonia', '156195', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156195', 'dbeb67a68c0cb51fab0616b0b1edbbf0'),
(231, '156179', '16f7d3c295518ab7599d1ba08871965a', 'Elizabet Bongmini', '156179', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156179', '16f7d3c295518ab7599d1ba08871965a'),
(232, '156412', '4fb3b86b87fe62e4e37b993d81146310', 'Syakilah', '156412', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156412', '4fb3b86b87fe62e4e37b993d81146310'),
(233, '156464', '39a8629d9342b0f2293abf9a34885bd9', 'Yunita Suryati', '156464', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156464', '39a8629d9342b0f2293abf9a34885bd9'),
(234, '156319', '958d393c88270789d5e7b35dfac4f1ed', 'Nur Hasikin', '156319', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156319', '958d393c88270789d5e7b35dfac4f1ed'),
(235, '156175', '8ff16c35cd05d19fb3c3e2ef46b94912', 'Eka Pratiwi', '156175', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156175', '8ff16c35cd05d19fb3c3e2ef46b94912'),
(236, '156244', '7d7edc7ecf0c4d5a04189e9cad6e829f', 'Lia Oktaviani', '156244', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156244', '7d7edc7ecf0c4d5a04189e9cad6e829f'),
(237, '156403', '5e26c937f98be14933ce3722089aa1e9', 'Steven Widjaya', '156403', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156403', '5e26c937f98be14933ce3722089aa1e9'),
(238, '156077', 'af38c9bdc681b67374962dfb577284db', 'Ade Noviardi', '156077', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156077', 'af38c9bdc681b67374962dfb577284db'),
(239, '156404', 'dfcafcd9de3a85875b03a55d37cbd24d', 'Suci Agustina', '156404', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156404', 'dfcafcd9de3a85875b03a55d37cbd24d'),
(240, '156316', 'ca4ed8c656107fe8ea4a47140f00ec31', 'Nungki Khoiriyah', '156316', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156316', 'ca4ed8c656107fe8ea4a47140f00ec31'),
(241, '156129', '97dd5d8b0880d8da53f001a7cd74c913', 'Azriel Novelin Sinaga', '156129', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156129', '97dd5d8b0880d8da53f001a7cd74c913'),
(242, '156310', 'eab2de80cf43aaad44aaf0ee5d8b49f9', 'Nofty Yoni', '156310', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156310', 'eab2de80cf43aaad44aaf0ee5d8b49f9'),
(243, '156127', '4ec2ace40e96edef6afe0e5f10f43f64', 'Ayuni Fitri', '156127', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156127', '4ec2ace40e96edef6afe0e5f10f43f64'),
(244, '156422', '41d9918b0704e4bb3a61c55a61342b47', 'Tessalonika Napitupulu', '156422', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156422', '41d9918b0704e4bb3a61c55a61342b47'),
(245, '156206', 'a4ef5a1dff5a8e476b2d6d4cbd854a7d', 'Fia Helmiyati', '156206', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156206', 'a4ef5a1dff5a8e476b2d6d4cbd854a7d'),
(246, '156240', '4fedd7d52b9f00d948958eb46cdbc5b3', 'Khatimah Zullaiila', '156240', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156240', '4fedd7d52b9f00d948958eb46cdbc5b3'),
(247, '156390', '680b344197727db6aa87d8478ad834ac', 'Sekar Endah Pangesti', '156390', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156390', '680b344197727db6aa87d8478ad834ac'),
(248, '156214', '363d54dd0356522071905d364f3e1d53', 'Giovanni Illena', '156214', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156214', '363d54dd0356522071905d364f3e1d53'),
(249, '156333', '05985e2ab26401e9eddd93f5424c7cd6', 'Putri', '156333', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156333', '05985e2ab26401e9eddd93f5424c7cd6'),
(250, '156418', 'af177b6b793af2396f373856f43b533f', 'Tasya Rezki Febriyana', '156418', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156418', 'af177b6b793af2396f373856f43b533f'),
(251, '156429', '0184e219238691f4847f7e148d445eb4', 'Toyibatul Zahro', '156429', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156429', '0184e219238691f4847f7e148d445eb4'),
(252, '156309', 'c2b1b1066f90f9d87c9c8bec6906c7de', 'Nisrina Siti Nur Halizah', '156309', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156309', 'c2b1b1066f90f9d87c9c8bec6906c7de'),
(253, '156168', '3f30fc5746e61eb3ae3b5ef59834c209', 'Dinda Mutia Pertiwi', '156168', 'perempuan', 'Pekanbaru', '0000-00-00', 5, 'Orangtua', '156168', '3f30fc5746e61eb3ae3b5ef59834c209'),
(254, '156176', '989a5a61a9749ed694fd91b70aa2db20', 'Eka Saprafti', '156176', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156176', '989a5a61a9749ed694fd91b70aa2db20'),
(255, '156402', 'e8109a03890b7b1856c0a96f49ca3085', 'Stephen Chen', '156402', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156402', 'e8109a03890b7b1856c0a96f49ca3085'),
(256, '156095', '9f4b076afc7aa37cf541cc22b7d4baaf', 'Andrian Juifan', '156095', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156095', '9f4b076afc7aa37cf541cc22b7d4baaf'),
(257, '156295', '313ea9f428c566a58e5b99a807e54a88', 'Mutiara Salsabila Awan', '156295', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156295', '313ea9f428c566a58e5b99a807e54a88'),
(258, '156086', '1d1ceedb74e07d0ad8f9c5512642d44d', 'Aidiya Putri Ibnu', '156086', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156086', '1d1ceedb74e07d0ad8f9c5512642d44d'),
(259, '156401', '2523d762d99e2eaf08f8d74efc7cf83c', 'Sri Wahyuly Ningsih M', '156401', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156401', '2523d762d99e2eaf08f8d74efc7cf83c'),
(260, '156082', 'dd9ecf274e316836249f777d1a1e4c59', 'Agnes Elika Fortuna', '156082', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156082', 'dd9ecf274e316836249f777d1a1e4c59'),
(261, '156267', '27699cd4bfa943e9c6768a01b4d48ec6', 'Mayer Fero B', '156267', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156267', '27699cd4bfa943e9c6768a01b4d48ec6'),
(262, '156284', '4328e3fca43276f7f4fc138630a1eb81', 'Mufru Adli', '156284', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156284', '4328e3fca43276f7f4fc138630a1eb81'),
(263, '156354', '5a438b9e9095c67dec813aa989e99dc0', 'Regia Ananda Fasya', '156354', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156354', '5a438b9e9095c67dec813aa989e99dc0'),
(264, '156367', '3c3afec7ff9aab1ce0ba33e481a42a1d', 'Rifa Anggita', '156367', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156367', '3c3afec7ff9aab1ce0ba33e481a42a1d'),
(265, '156372', '67bf2290b0b3f1b5bda26805c3ddc2b2', 'Riski Saputra', '156372', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156372', '67bf2290b0b3f1b5bda26805c3ddc2b2'),
(266, '156253', '9a3ab76caf8f18ec333859b9fb944cae', 'M. Firdian', '156253', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156253', '9a3ab76caf8f18ec333859b9fb944cae'),
(267, '156230', '4950b267e3069ba254e12901f586ed08', 'Iqbal Assegaf', '156230', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156230', '4950b267e3069ba254e12901f586ed08'),
(268, '156099', '130b38e4090f93447bbf24fc39d33f14', 'Annisa Aprilia', '156099', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156099', '130b38e4090f93447bbf24fc39d33f14'),
(269, '156340', 'eda3d05996f7407d552a9d7fc12787c6', 'Putri Sion', '156340', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156340', 'eda3d05996f7407d552a9d7fc12787c6'),
(270, '156424', '2220c077bb9abf98c29568cc4d8d52e6', 'Tiara Lasya Azzarar', '156424', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156424', '2220c077bb9abf98c29568cc4d8d52e6'),
(271, '156258', '6cb32825372f0caf3bbff2eeb48b47a0', 'Mangasi Simanjuntak', '156258', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156258', '6cb32825372f0caf3bbff2eeb48b47a0'),
(272, '156447', 'e0f4585108cbed46d16e3cf0e9d86ba1', 'William Febrianto Sinaga', '156447', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156447', 'e0f4585108cbed46d16e3cf0e9d86ba1'),
(273, '156446', '884a3b327b812ea7fae2d2222ed7d48c', 'William Antony', '156446', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156446', '884a3b327b812ea7fae2d2222ed7d48c'),
(274, '156233', 'fbeb1450b11849fa9750657e37f5b8cf', 'Jeffry', '156233', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156233', 'fbeb1450b11849fa9750657e37f5b8cf'),
(275, '156332', '11eef8782d53e8058dd72294470db3f7', 'Permatasari Rosayang', '156332', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156332', '11eef8782d53e8058dd72294470db3f7');
INSERT INTO `SISWA` (`SISWA_ID`, `SISWA_USERNAME`, `SISWA_PASSWORD`, `SISWA_NAMA`, `SISWA_NIS`, `SISWA_JK`, `SISWA_TEMPAT_LAHIR`, `SISWA_TGL_LAHIR`, `JURUSAN_ID`, `NAMA_ORTU`, `USERNAME_ORTU`, `PASSWORD_ORTU`) VALUES
(276, '156190', 'e3b0c737cc7a90d8b423c612d999c19a', 'Farahdilla Anisa Putri', '156190', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156190', 'e3b0c737cc7a90d8b423c612d999c19a'),
(277, '156133', '8ca96e2c78962c10c02a8dc04ca7cd32', 'Bima Dwi Anggara', '156133', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156133', '8ca96e2c78962c10c02a8dc04ca7cd32'),
(278, '156325', '143ded654a348786b74aef170ab4dcb5', 'Oje Sukma Jaya', '156325', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156325', '143ded654a348786b74aef170ab4dcb5'),
(279, '156437', 'a914c664781187c9577ae5f604984d67', 'Very Kurniawan', '156437', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156437', 'a914c664781187c9577ae5f604984d67'),
(280, '156419', 'da838feef62f47caf56ace851579d71b', 'Tengku Hafiz Casena', '156419', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156419', 'da838feef62f47caf56ace851579d71b'),
(281, '156193', '48a4f295a93606df25d52a14903db740', 'Fauzi Abdurrahman', '156193', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156193', '48a4f295a93606df25d52a14903db740'),
(282, '156292', 'fcb1189f581aac987f64f14f0b7e8122', 'Muhammad Yunus', '156292', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156292', 'fcb1189f581aac987f64f14f0b7e8122'),
(283, '156191', 'f14ff5a5d3281e1c833a66ed275c9442', 'Fauzan Agdi', '156191', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156191', 'f14ff5a5d3281e1c833a66ed275c9442'),
(284, '156104', '1cf4788c0ef9541d20d37e9037a7bfa1', 'Annisa Afri Yeni', '156104', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156104', '1cf4788c0ef9541d20d37e9037a7bfa1'),
(285, '156087', 'edc534160b96dfafd246458bcb4385e0', 'Alex', '156087', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156087', 'edc534160b96dfafd246458bcb4385e0'),
(286, '156122', 'b7ee14c9761fd6f23ca1974739441669', 'Ayu Juance Putri', '156122', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156122', 'b7ee14c9761fd6f23ca1974739441669'),
(287, '156454', '9a8e564f5c7a8ea913193a9fc5d3cd78', 'Wulan Anggraini', '156454', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156454', '9a8e564f5c7a8ea913193a9fc5d3cd78'),
(288, '156132', '9c37cf02a7de64d554dfe15ad6f51c2b', 'Beta Lamretta', '156132', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156132', '9c37cf02a7de64d554dfe15ad6f51c2b'),
(289, '156366', 'f0b03f97a64550904eefca561df23d62', 'Reni Widiawati', '156366', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156366', 'f0b03f97a64550904eefca561df23d62'),
(290, '156126', '02fa1f764617c06e503b0d9a5379d30a', 'Ayu Wandira', '156126', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156126', '02fa1f764617c06e503b0d9a5379d30a'),
(291, '156130', 'f171f5e99b46dfe9419ccf29c9d5ba58', 'Bayu Widianto', '156130', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156130', 'f171f5e99b46dfe9419ccf29c9d5ba58'),
(292, '156261', '9f5e02bde822bc09fd0211ae659495b9', 'Maria Afrida Kurnia', '156261', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156261', '9f5e02bde822bc09fd0211ae659495b9'),
(293, '156224', 'f6d6cb690ccbb8c6cb489ffcf7235bba', 'Ilham', '156224', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156224', 'f6d6cb690ccbb8c6cb489ffcf7235bba'),
(294, '156294', '71e683e487807a39258779dff53a7599', 'Musa Robbani', '156294', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156294', '71e683e487807a39258779dff53a7599'),
(295, '156355', '10d291b21696da31077d74e6cceb29b7', 'Rela Irawan', '156355', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156355', '10d291b21696da31077d74e6cceb29b7'),
(296, '156257', 'aeb064a9e49491b0f97908cea01cf7c4', 'Maisarah Masyanti', '156257', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156257', 'aeb064a9e49491b0f97908cea01cf7c4'),
(297, '156370', '06ef2b204f4b19ed568256a2873911f6', 'Rina Septiana', '156370', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156370', '06ef2b204f4b19ed568256a2873911f6'),
(298, '156285', '22fed2317a4f3ae7622ac494dc5f4fff', 'Muhammad Rizky Sza k', '156285', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156285', '22fed2317a4f3ae7622ac494dc5f4fff'),
(299, '156185', '64a1976bfe301829d57e77c5b15d8063', 'Eva Ningsih', '156185', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156185', '64a1976bfe301829d57e77c5b15d8063'),
(300, '156227', '80b2d3722070976c0550996e6c636f6a', 'Indrawan', '156227', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156227', '80b2d3722070976c0550996e6c636f6a'),
(301, '156332', '11eef8782d53e8058dd72294470db3f7', 'Putra Ragil Sitinjak', '156332', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156332', '11eef8782d53e8058dd72294470db3f7'),
(302, '156113', '7931a3ba6a51e1d8264ecefe80d6742d', 'Arief Hanan Uspano', '156113', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156113', '7931a3ba6a51e1d8264ecefe80d6742d'),
(303, '156170', 'a53237a1fee2b8ba5109c1c236a3394a', 'Doni Novrialdi', '156170', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156170', 'a53237a1fee2b8ba5109c1c236a3394a'),
(304, '145871', 'a5b7343f3b6103bbc8b57f6158b561e7', 'M. Fadlah', '145871', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '145871', 'a5b7343f3b6103bbc8b57f6158b561e7'),
(305, '156106', '6c25ab72d3501d7532e42d958a514114', 'Annisa Seprianti', '156106', 'perempuan', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156106', '6c25ab72d3501d7532e42d958a514114'),
(306, '156108', '94d92276faf9ae593b3e31f0b1dddca2', 'Anri Jaquestro', '156108', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 1, 'Orangtua', '156108', '94d92276faf9ae593b3e31f0b1dddca2'),
(307, '156413', 'f288bc0dd27bcc4b0aafc27115a2071a', 'SYARIFAH NUR AFIFAH', '156413', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156413', 'f288bc0dd27bcc4b0aafc27115a2071a'),
(308, '156362', '3164c07eba7ec5e562af02798241c545', 'REZA OKTAVIANI', '156362', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156362', '3164c07eba7ec5e562af02798241c545'),
(309, '156306', '8c4b09062482ef6154c0fb97da9c8966', 'NANDA WIKA THESINDA', '156306', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156306', '8c4b09062482ef6154c0fb97da9c8966'),
(310, '156275', 'cc7b319776f774bfe3e4f31b78cf92cd', 'MERI ANDANI', '156275', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156275', 'cc7b319776f774bfe3e4f31b78cf92cd'),
(311, '156312', 'cd67fce5acb501a50d358a979e72f979', 'NOVA TRIDIARTI', '156312', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156312', 'cd67fce5acb501a50d358a979e72f979'),
(312, '156157', 'f798d251cc123e0e67401ff04260f4b3', 'DEWI NUR AZIZAH', '156157', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156157', 'f798d251cc123e0e67401ff04260f4b3'),
(313, '156393', '52386b349542191ed89fd39484b8e1bc', 'SHEILA SAHFIERA', '156393', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156393', '52386b349542191ed89fd39484b8e1bc'),
(314, '156241', 'a0964dc80fc111a7a41e843bf0dc9a7f', 'KUMALA DARMAWAN', '156241', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156241', 'a0964dc80fc111a7a41e843bf0dc9a7f'),
(315, '156247', '3e671b3f7939c25fdd0e83697d39b025', 'LINDA RAHMI', '156247', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156247', '3e671b3f7939c25fdd0e83697d39b025'),
(316, '156150', '94aa35b4cf23fbc8a8886b4ae300b255', 'DESTIRA DWI PRATIWI', '156150', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156150', '94aa35b4cf23fbc8a8886b4ae300b255'),
(317, '156396', 'ff65a4a1258c4a65153ae81f0526348c', 'SILVIA', '156396', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156396', 'ff65a4a1258c4a65153ae81f0526348c'),
(318, '156125', '65cd105288b7fdefb5461ea0f5b06246', 'AYU WAHYUNI', '156125', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156125', '65cd105288b7fdefb5461ea0f5b06246'),
(319, '156102', '6d3d6226ab7ffca33693f8dce2921047', 'ANISYAH FILZA RAHMAH', '156102', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156102', '6d3d6226ab7ffca33693f8dce2921047'),
(320, '156155', '40e48da4df0dc54af06ad6d5ebe75d5f', 'DEVINA SHALSABILLA', '156155', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156155', '40e48da4df0dc54af06ad6d5ebe75d5f'),
(321, '156460', '9b35c3e6f10acb511218c94c39ab0891', 'Yuha Ramadhani Nasution', '156460', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156460', '9b35c3e6f10acb511218c94c39ab0891'),
(322, '156231', 'e7b7ef7041ef01049a8827453fa79668', 'IRFAN PUTRA AZMI', '156231', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156231', 'e7b7ef7041ef01049a8827453fa79668'),
(323, '156461', 'e27b6411c0caca631a74ca4f4ef1420f', 'YULIA PUTRI', '156461', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156461', 'e27b6411c0caca631a74ca4f4ef1420f'),
(324, '156197', '6ebef27427048cc450a684fdbc4e85de', 'FEBIANA PUTRI', '156197', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156197', '6ebef27427048cc450a684fdbc4e85de'),
(325, '156448', '2fc71b71dc90b47763e827c151604233', 'WINDA AULIA ASSHAFA', '156448', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156448', '2fc71b71dc90b47763e827c151604233'),
(326, '156092', 'c772fbce85ed28ca1c7e3341ad6092f8', 'AMMAR ARIF JOELISEF', '156092', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156092', 'c772fbce85ed28ca1c7e3341ad6092f8'),
(327, '156124', '4aafac84fd11db3c084ab3e464069573', 'AYU MERLIA', '156124', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156124', '4aafac84fd11db3c084ab3e464069573'),
(328, '156153', 'a70a5298149f6ce03fa47d8816f9f647', 'DEVI CRISTIAN', '156153', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156153', 'a70a5298149f6ce03fa47d8816f9f647'),
(329, '156271', 'c920c1595dcdb710a8cbd045b9735acb', 'MELFITRIANA', '156271', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156271', 'c920c1595dcdb710a8cbd045b9735acb'),
(330, '156268', 'c21bfff3a2fc9a47f9622be52340364d', 'MEILIN', '156268', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156268', 'c21bfff3a2fc9a47f9622be52340364d'),
(331, '156270', 'afbc57f0bb3aa5565b98a6b5ef6a39d6', 'MELA KIRANTI', '156270', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156270', 'afbc57f0bb3aa5565b98a6b5ef6a39d6'),
(332, '156202', '8bed7e5f0f2ca4106fb7ea9971a1b807', 'FEBY ARUM', '156202', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156202', '8bed7e5f0f2ca4106fb7ea9971a1b807'),
(333, '156334', 'c4bcd7e43fa445e4e2ecd40d52c5b046', 'PUTRI ARISKA', '156334', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156334', 'c4bcd7e43fa445e4e2ecd40d52c5b046'),
(334, '156118', '5d5a7cb55990893fb968883a89d2c193', 'ATESSA YOZANTI', '156118', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156118', '5d5a7cb55990893fb968883a89d2c193'),
(335, '156143', 'b32cd1c846edc675df14c317169661ff', 'DEDE KURNIAWAN', '156143', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156143', 'b32cd1c846edc675df14c317169661ff'),
(336, '156415', 'c65aab80f789533da514645a7213d65f', 'SYOFIA ZULIAWATI', '156415', 'Laki-Laki', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156415', 'c65aab80f789533da514645a7213d65f'),
(337, '156166', 'a9d87e75d45edc11da09b77f96b778e7', 'DINA RAHAYU', '156166', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156166', 'a9d87e75d45edc11da09b77f96b778e7'),
(338, '156201', '132e6a519b7ce2b7ce5a8df9d687a5b1', 'FEBY ANGGRAINI PUTRI', '156201', 'perempuan', 'Pekanbaru', '0000-00-00', 4, 'Orangtua', '156201', '132e6a519b7ce2b7ce5a8df9d687a5b1');

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
  MODIFY `PERMOHONAN_ID` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `SISWA`
--
ALTER TABLE `SISWA`
  MODIFY `SISWA_ID` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=339;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
