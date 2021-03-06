-- phpMyAdmin SQL Dump
-- version 4.8.3
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Jan 30, 2019 at 05:16 AM
-- Server version: 10.1.35-MariaDB
-- PHP Version: 7.2.9

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `lemanev02`
--

-- --------------------------------------------------------

--
-- Table structure for table `tb_dosen`
--

CREATE TABLE `tb_dosen` (
  `nidn` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('aktif','nonaktif') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_dosen`
--

INSERT INTO `tb_dosen` (`nidn`, `nama`, `status`) VALUES
('14320', 'Lenny Belardo', 'aktif'),
('14323', 'Shoffin Nahwa Utama', 'nonaktif'),
('14328', 'Afif Suryana Faraby', 'aktif'),
('18371', 'Mukidi', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_mahasiswa`
--

CREATE TABLE `tb_mahasiswa` (
  `nim` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `nama` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun_masuk` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('aktif','nonaktif') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_mahasiswa`
--

INSERT INTO `tb_mahasiswa` (`nim`, `nama`, `tahun_masuk`, `status`) VALUES
('352014110577', 'Buddha Gautama', '2014', 'aktif'),
('352014121153', 'Harie Tanoesoedibjo', '2015', 'aktif'),
('352014121188', 'Tukiyem', '2015', 'aktif'),
('352014211154', 'Jacques Edbello Santura', '2016', 'nonaktif'),
('352014211199', 'Bahlul Markam', '2016', 'aktif'),
('352014610847', 'Rusydyanto Yunus', '2014', 'aktif'),
('352014610850', 'Alfian Mukhdlor', '2014', 'aktif');

-- --------------------------------------------------------

--
-- Table structure for table `tb_matakuliah`
--

CREATE TABLE `tb_matakuliah` (
  `id_mk` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `nama_mk` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `nidn` varchar(13) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_matakuliah`
--

INSERT INTO `tb_matakuliah` (`id_mk`, `nama_mk`, `nidn`) VALUES
('TI11230', 'Matematika Diskrit', '14323'),
('TI11231', 'Mikrokontroller', '14320'),
('TI11235', 'Android Ganteng', '18371'),
('TI11239', 'Pengantar Informatika', '14328');

-- --------------------------------------------------------

--
-- Table structure for table `tb_soal`
--

CREATE TABLE `tb_soal` (
  `id_soal` int(11) NOT NULL,
  `aspek` enum('pedagogik','profesionalisme','kepribadian','sosial') COLLATE utf8_unicode_ci NOT NULL,
  `soal` text COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_soal`
--

INSERT INTO `tb_soal` (`id_soal`, `aspek`, `soal`) VALUES
(1, 'pedagogik', 'Kesiapan Dosen memberikan Perkuliahan dan Praktikum'),
(2, 'pedagogik', 'Keteraturan dan ketertiban dalam menyelenggarakan perkuliahan'),
(3, 'pedagogik', 'Kemampuan menghidupkan suasana kelas'),
(4, 'pedagogik', 'Kejelasan dalam menyampaikan materi dan menjawab pertanyaan dikelas'),
(5, 'pedagogik', 'Pemanfaatan media dan teknologi pembelajaran'),
(6, 'pedagogik', 'Keanekaragaman cara pengukuran hasil belajar'),
(7, 'pedagogik', 'Pemberian umpan balik terhadap tugas'),
(8, 'pedagogik', 'Kesesuaian materi ujian dan/atau tugas dengan tujuan mata kuliah'),
(9, 'pedagogik', 'Kesesuaian nilai yang diberikan dengan hasil belajar'),
(10, 'profesionalisme', 'Kemampuan menjelaskan pokok bahasan/topik secara tepat   '),
(11, 'profesionalisme', 'Kemampuan memberikan contoh relevan dari konsep yang diajarkan '),
(12, 'profesionalisme', 'Kemampuan menjelaskan keterkaitan bidang/topik yang diajarkan dengan bidang/topik lain '),
(13, 'profesionalisme', 'Kemampuan menjelaskan keterkaitan bidang/topik yang diajarkan dengan konteks kehidupan  '),
(14, 'profesionalisme', 'Penguasaan akan isu-isu mutakhir dalam bidang yang diajarkan '),
(15, 'profesionalisme', 'Penggunaan hasil-hasil penelitian untuk meningkatkan kualitas perkuliahan '),
(16, 'profesionalisme', 'Pelibatan mahasiswa dalam penelitian/kajian atau pengembangan/rekayasa/desain yang dilakukan dosen '),
(17, 'profesionalisme', 'Kemampuan menggunakan beragam teknologi komunikasi '),
(18, 'kepribadian', 'Kewibawaan sebagai pribadi dosen'),
(19, 'kepribadian', 'Kearifan dalam mengambil keputusan'),
(20, 'kepribadian', 'Menjadi contoh dalam bersikap dan berperilaku'),
(21, 'kepribadian', 'Satunya kata dan tindakan (konsistensi)'),
(22, 'kepribadian', 'Kemampuan mengendalikan diri dalam berbagai situasi dan kondisi'),
(23, 'kepribadian', 'Adil dalam memperlakukan mahasiswa/i'),
(24, 'sosial', 'Kemampuan menyampaikan pendapat'),
(25, 'sosial', 'Kemampuan menerima kritik, saran dan pendapat orang lain'),
(26, 'sosial', 'Mengenal dengan baik mahasiswa/i yang mengikuti matakuliahnya'),
(27, 'sosial', 'Mudah bergaul di kalangan sejawat, karyawan dan mahasiswa/i'),
(28, 'sosial', 'Toleransi terhadap keberagaman mahasiswa/i');

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_jwb`
--

CREATE TABLE `tb_transaksi_jwb` (
  `id_trans` int(11) NOT NULL,
  `nim` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `id_mk` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `jwb1` float NOT NULL,
  `jwb2` float NOT NULL,
  `jwb3` float NOT NULL,
  `jwb4` float NOT NULL,
  `jwb5` float NOT NULL,
  `jwb6` float NOT NULL,
  `jwb7` float NOT NULL,
  `jwb8` float NOT NULL,
  `jwb9` float NOT NULL,
  `jwb10` float NOT NULL,
  `jwb11` float NOT NULL,
  `jwb12` float NOT NULL,
  `jwb13` float NOT NULL,
  `jwb14` float NOT NULL,
  `jwb15` float NOT NULL,
  `jwb16` float NOT NULL,
  `jwb17` float NOT NULL,
  `jwb18` float NOT NULL,
  `jwb19` float NOT NULL,
  `jwb20` float NOT NULL,
  `jwb21` float NOT NULL,
  `jwb22` float NOT NULL,
  `jwb23` float NOT NULL,
  `jwb24` float NOT NULL,
  `jwb25` float NOT NULL,
  `jwb26` float NOT NULL,
  `jwb27` float NOT NULL,
  `jwb28` float NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_transaksi_jwb`
--

INSERT INTO `tb_transaksi_jwb` (`id_trans`, `nim`, `id_mk`, `jwb1`, `jwb2`, `jwb3`, `jwb4`, `jwb5`, `jwb6`, `jwb7`, `jwb8`, `jwb9`, `jwb10`, `jwb11`, `jwb12`, `jwb13`, `jwb14`, `jwb15`, `jwb16`, `jwb17`, `jwb18`, `jwb19`, `jwb20`, `jwb21`, `jwb22`, `jwb23`, `jwb24`, `jwb25`, `jwb26`, `jwb27`, `jwb28`) VALUES
(1, '352014121188', 'TI11239', 5, 5, 5, 4, 5, 4, 5, 4, 5, 1, 2, 3, 4, 5, 4, 4, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5, 5);

-- --------------------------------------------------------

--
-- Table structure for table `tb_transaksi_krs`
--

CREATE TABLE `tb_transaksi_krs` (
  `id_trans` int(11) NOT NULL,
  `nim` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `id_mk` varchar(13) COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_transaksi_krs`
--

INSERT INTO `tb_transaksi_krs` (`id_trans`, `nim`, `id_mk`) VALUES
(3, '352014610847', 'TI11239'),
(4, '352014121188', 'TI11235'),
(5, '352014121188', 'TI11239'),
(6, '352014211154', 'TI11231'),
(7, '352014121188', 'TI11231');

-- --------------------------------------------------------

--
-- Table structure for table `tb_user`
--

CREATE TABLE `tb_user` (
  `id` varchar(13) COLLATE utf8_unicode_ci NOT NULL,
  `username` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `name` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8_unicode_ci NOT NULL,
  `tahun_masuk` varchar(4) COLLATE utf8_unicode_ci NOT NULL,
  `level` enum('admin','dosen','mahasiswa') COLLATE utf8_unicode_ci NOT NULL,
  `status` enum('aktif','nonaktif') COLLATE utf8_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8 COLLATE=utf8_unicode_ci;

--
-- Dumping data for table `tb_user`
--

INSERT INTO `tb_user` (`id`, `username`, `name`, `password`, `tahun_masuk`, `level`, `status`) VALUES
('14231', 'spectrum@unida.gontor.ac.id', 'Nunik Siti Nurzanah', '123456', '2014', 'admin', 'aktif'),
('352014121188', 'tukiyem@ngebel.udik.gov.id', 'Tukiyem', '123456', '2012', 'mahasiswa', 'aktif'),
('352014610850', 'alfian@gmail.com', 'Alfian Tanjung', '123456', '2018', 'mahasiswa', 'aktif'),
('352014610853', 'hisyamathaya@unida.gontor.ac.id', 'Hisyam Athaya', '123456', '2014', 'admin', 'aktif'),
('362015611013', 'syakir@amoled.com', 'Syakir Arif', '123456', '2015', 'mahasiswa', 'aktif');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tb_dosen`
--
ALTER TABLE `tb_dosen`
  ADD PRIMARY KEY (`nidn`),
  ADD KEY `nama` (`nama`);

--
-- Indexes for table `tb_mahasiswa`
--
ALTER TABLE `tb_mahasiswa`
  ADD PRIMARY KEY (`nim`),
  ADD KEY `id` (`nim`,`nama`);

--
-- Indexes for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD PRIMARY KEY (`id_mk`),
  ADD KEY `nidn_pengajar` (`nidn`);

--
-- Indexes for table `tb_soal`
--
ALTER TABLE `tb_soal`
  ADD PRIMARY KEY (`id_soal`),
  ADD KEY `id_soal` (`aspek`);

--
-- Indexes for table `tb_transaksi_jwb`
--
ALTER TABLE `tb_transaksi_jwb`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `id_trans` (`id_trans`,`nim`,`id_mk`,`jwb1`,`jwb2`,`jwb3`,`jwb4`,`jwb5`,`jwb6`,`jwb7`,`jwb8`,`jwb9`,`jwb10`,`jwb11`,`jwb12`,`jwb13`,`jwb14`,`jwb15`,`jwb16`,`jwb17`,`jwb18`,`jwb19`,`jwb20`,`jwb21`,`jwb22`,`jwb23`,`jwb24`,`jwb25`,`jwb26`,`jwb27`,`jwb28`),
  ADD KEY `nim` (`nim`),
  ADD KEY `id_mk` (`id_mk`);

--
-- Indexes for table `tb_transaksi_krs`
--
ALTER TABLE `tb_transaksi_krs`
  ADD PRIMARY KEY (`id_trans`),
  ADD KEY `nim` (`nim`),
  ADD KEY `id_mk` (`id_mk`),
  ADD KEY `id_trans` (`id_trans`);

--
-- Indexes for table `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id`),
  ADD KEY `username` (`username`),
  ADD KEY `name` (`name`),
  ADD KEY `level` (`level`),
  ADD KEY `status` (`status`),
  ADD KEY `nim` (`id`),
  ADD KEY `tahun_masuk` (`tahun_masuk`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tb_soal`
--
ALTER TABLE `tb_soal`
  MODIFY `id_soal` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=29;

--
-- AUTO_INCREMENT for table `tb_transaksi_jwb`
--
ALTER TABLE `tb_transaksi_jwb`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tb_transaksi_krs`
--
ALTER TABLE `tb_transaksi_krs`
  MODIFY `id_trans` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tb_matakuliah`
--
ALTER TABLE `tb_matakuliah`
  ADD CONSTRAINT `tb_matakuliah_ibfk_1` FOREIGN KEY (`nidn`) REFERENCES `tb_dosen` (`nidn`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tb_transaksi_jwb`
--
ALTER TABLE `tb_transaksi_jwb`
  ADD CONSTRAINT `tb_transaksi_jwb_ibfk_1` FOREIGN KEY (`nim`) REFERENCES `tb_mahasiswa` (`nim`),
  ADD CONSTRAINT `tb_transaksi_jwb_ibfk_2` FOREIGN KEY (`id_mk`) REFERENCES `tb_matakuliah` (`id_mk`);

--
-- Constraints for table `tb_transaksi_krs`
--
ALTER TABLE `tb_transaksi_krs`
  ADD CONSTRAINT `tb_transaksi_krs_ibfk_2` FOREIGN KEY (`id_mk`) REFERENCES `tb_matakuliah` (`id_mk`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tb_transaksi_krs_ibfk_3` FOREIGN KEY (`nim`) REFERENCES `tb_mahasiswa` (`nim`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
