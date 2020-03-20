-- phpMyAdmin SQL Dump
-- version 4.8.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost
-- Generation Time: Mar 20, 2020 at 10:28 PM
-- Server version: 10.1.34-MariaDB
-- PHP Version: 7.2.7

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `e_raport`
--

-- --------------------------------------------------------

--
-- Table structure for table `guru`
--

CREATE TABLE `guru` (
  `idguru` int(4) NOT NULL,
  `guru_nip` varchar(25) DEFAULT NULL,
  `guru_nama` varchar(128) DEFAULT NULL,
  `guru_tmp_lhr` varchar(128) DEFAULT NULL,
  `guru_tgl_lhr` date DEFAULT NULL,
  `guru_jk` enum('L','P') DEFAULT NULL,
  `guru_alamat` text
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `kelas`
--

CREATE TABLE `kelas` (
  `idkelas` int(4) NOT NULL,
  `kelas_kd` varchar(10) DEFAULT NULL,
  `kelas_nama` varchar(20) DEFAULT NULL,
  `kelas_sub_nama` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mapel`
--

CREATE TABLE `mapel` (
  `idmapel` int(4) NOT NULL,
  `mapel_kd` varchar(10) DEFAULT NULL,
  `mapel_nama` varchar(128) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `mengajar`
--

CREATE TABLE `mengajar` (
  `idmengajar` int(4) NOT NULL,
  `tahun_akademik_idtahun_akademik` int(11) NOT NULL,
  `guru_idguru` int(4) NOT NULL,
  `mapel_idmapel` int(4) NOT NULL,
  `kkm` int(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `nilai`
--

CREATE TABLE `nilai` (
  `idnilai` int(11) NOT NULL,
  `mapel_idmapel` int(4) NOT NULL,
  `siswa_idsiswa` int(4) NOT NULL,
  `nilai_tp1` int(4) DEFAULT NULL,
  `nilai_tp2` int(4) DEFAULT NULL,
  `nilai_tp3` int(4) DEFAULT NULL,
  `nilai_tp4` int(4) DEFAULT NULL,
  `nilai_tp5` int(4) DEFAULT NULL,
  `nilai_tp6` int(4) DEFAULT NULL,
  `nilai_tp7` int(4) DEFAULT NULL,
  `rata_tp` int(4) DEFAULT NULL,
  `nilai_uh1` int(4) DEFAULT NULL,
  `nilai_uh2` int(4) DEFAULT NULL,
  `nilai_uh3` int(4) DEFAULT NULL,
  `nilai_uh4` int(4) DEFAULT NULL,
  `nilai_uh5` int(4) DEFAULT NULL,
  `nilai_uh6` int(4) DEFAULT NULL,
  `nilai_uh7` int(4) DEFAULT NULL,
  `rata_uh` int(4) DEFAULT NULL,
  `nilai_pts` int(4) DEFAULT NULL,
  `nilai_uas` int(4) DEFAULT NULL,
  `nilai_akhir` int(4) DEFAULT NULL,
  `nilai_huruf` enum('A','B','C','D','E') DEFAULT NULL,
  `deskripsi` mediumtext
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `rombel`
--

CREATE TABLE `rombel` (
  `idrombel` int(4) NOT NULL,
  `tahun_akademik_idtahun_akademik` int(4) NOT NULL,
  `guru_idguru` int(4) NOT NULL,
  `kelas_idkelas` int(4) NOT NULL,
  `siswa_idsiswa` int(4) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `siswa`
--

CREATE TABLE `siswa` (
  `idsiswa` int(4) NOT NULL,
  `siswa_nis` varchar(5) DEFAULT NULL,
  `siswa_nisn` varchar(15) DEFAULT NULL,
  `siswa_nik` varchar(25) DEFAULT NULL,
  `siswa_nama` varchar(128) DEFAULT NULL,
  `siswa_tmp_lhr` varchar(128) DEFAULT NULL,
  `siswa_tgl_lhr` date DEFAULT NULL,
  `siswa_jk` enum('L','P') DEFAULT NULL,
  `siswa_hobi` varchar(128) DEFAULT NULL,
  `siswa_citacita` varchar(128) DEFAULT NULL,
  `siswa_sts_anak` enum('Anak Kandung','Anak Tiri','Anak Angkat') DEFAULT NULL,
  `siswa_jml_sdr` int(2) DEFAULT NULL,
  `siswa_anak_ke` int(2) DEFAULT NULL,
  `siswa_alamat` text,
  `siswa_nik_ayah` varchar(25) DEFAULT NULL,
  `siswa_nama_ayah` varchar(128) DEFAULT NULL,
  `siswa_pend_ayah` varchar(50) DEFAULT NULL,
  `siswa_pekr_ayah` varchar(50) DEFAULT NULL,
  `siswa_nik_ibu` varchar(25) DEFAULT NULL,
  `siswa_nama_ibu` varchar(128) DEFAULT NULL,
  `siswa_pend_ibu` varchar(50) DEFAULT NULL,
  `siswa_pekr_ibu` varchar(50) DEFAULT NULL,
  `siswa_alamat_ortu` text,
  `tgl_masuk` date DEFAULT NULL,
  `tgl_keluar` date DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tahun_akademik`
--

CREATE TABLE `tahun_akademik` (
  `idtahun_akademik` int(4) NOT NULL,
  `tahun_akademik` varchar(10) DEFAULT NULL,
  `semester` enum('Ganjil','Genap') DEFAULT NULL,
  `semester_aktif` tinyint(4) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `users`
--

CREATE TABLE `users` (
  `idusers` int(11) NOT NULL,
  `user_name` varchar(25) DEFAULT NULL,
  `user_password` varchar(128) DEFAULT NULL,
  `user_fullname` varchar(128) DEFAULT NULL,
  `user_telp` varchar(15) DEFAULT NULL,
  `user_type` enum('super_user','administrator','user') DEFAULT NULL,
  `last_loggin` int(11) DEFAULT NULL,
  `ip_address` varchar(20) DEFAULT NULL,
  `is_active` int(1) DEFAULT NULL,
  `is_block` int(1) DEFAULT NULL,
  `create_at` int(11) DEFAULT NULL,
  `update_at` int(11) DEFAULT NULL,
  `delete_at` int(11) DEFAULT NULL,
  `create_by` int(11) DEFAULT NULL,
  `update_by` int(11) DEFAULT NULL,
  `delete_by` int(11) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `users`
--

INSERT INTO `users` (`idusers`, `user_name`, `user_password`, `user_fullname`, `user_telp`, `user_type`, `last_loggin`, `ip_address`, `is_active`, `is_block`, `create_at`, `update_at`, `delete_at`, `create_by`, `update_by`, `delete_by`) VALUES
(1, 'admin', '$2y$10$h6Mas3QjJTZgIfQH5jFiYOdsXKhzP0M08oVD.DXExrn.mA8RshOJa', 'KKNPayment', '082248577297', 'super_user', 1579819716, '::1', 1, 0, 1556509343, 1583875176, NULL, 1, 1, NULL),
(7, '12345', '$2y$10$web6MQFKooLIbKPue2A0/O/.eKSzNIWsv5gCtnsp18WRumW3CtnIS', 'Eka Saputra', '082248577297', 'administrator', NULL, NULL, 1, 0, 1580293465, 1580298662, NULL, 1, 7, NULL),
(8, '123', '$2y$10$XhaGOd2wM.jiB8ixjnyzgeM4J4n3dGPrpDlNTxbg/WrsIjWLlGhM.', 'Eka Saputra', '082248577297', 'user', NULL, NULL, 1, 0, 1580293507, 1580294962, NULL, 1, 1, NULL);

-- --------------------------------------------------------

--
-- Table structure for table `_sessions`
--

CREATE TABLE `_sessions` (
  `id` varchar(128) NOT NULL,
  `ip_address` varchar(45) NOT NULL,
  `timestamp` int(10) UNSIGNED NOT NULL DEFAULT '0',
  `data` blob NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `_sessions`
--

INSERT INTO `_sessions` (`id`, `ip_address`, `timestamp`, `data`) VALUES
('d4ec5cdb74518176e36f5fa67c3e697e3be8c67a', '::1', 1584620622, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343632303632323b),
('e3cf65cdc83ce1f74e61518aa6ad05e36c4329c7', '::1', 1584621387, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343632313338373b),
('0454488754ff5ecebd2eff3dc8ca79f189bc533a', '::1', 1584621688, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343632313638383b),
('a0495bf1b88541bb99c47b3d1138302c7aa3f86c', '::1', 1584621990, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343632313939303b),
('53ad82a0efea80e311eff909ab39a431aa67fdd0', '::1', 1584622017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343632313939303b),
('fcdb8ddb22869882a76662254046cea41d93dd72', '::1', 1584679037, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343637383733393b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('b453d31ce9af40e5efec8675b34df14d0be80712', '::1', 1584704867, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730343836373b),
('e2d15b773fa3b7b52f94dbdfeee39b84dbca1f0b', '::1', 1584705335, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730353333353b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('6d769e54b716fa1900705fb468e63cb9821ecfab', '::1', 1584705579, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730353333353b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('44a6a426d8d3df8838db8fed46c33eea4cf07698', '::1', 1584705946, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730353934363b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('4a1846f6cb5264f51cfaf3b24cbb8be40cab2060', '::1', 1584706295, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730363239353b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('d37c8876cd8704fccc0035a3c58549ef1a5e2416', '::1', 1584707017, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730373031373b),
('b87160a8e7bb78231b7128909792fe2b88365842', '::1', 1584707403, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730373430333b),
('a5c2ecd90240b2221df5e3cfcc799464c63ebcf4', '::1', 1584707714, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730373731343b),
('3cccdf68f7559bf63863cefd6f26afdb4d7232e8', '::1', 1584708327, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730383332373b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('d38b5fb63c19801752e84cede0185b9687878090', '::1', 1584709045, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730393034353b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('bfcc46c950fe717d17930b5e2efbcba18914ae58', '::1', 1584709348, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730393334383b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('3b97ad90654d6b91a0736e1bf6f0eada98041ac3', '::1', 1584709747, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343730393734373b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('ca2416e825c18a06c9f67b13ebb9bfc2962e2b06', '::1', 1584710213, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343731303231333b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('2e7fffce5905b42c0cdbd88c48a70c623c247e48', '::1', 1584710621, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343731303632313b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('ecf27e9edc1ab713e60dc49a5b512d14c41665d1', '::1', 1584710943, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343731303934333b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('9b80e539784796b530b6ad87c880fa4b49177a19', '::1', 1584711246, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343731313234363b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('566a6ecc973132c24a1dc90c070771f7ac165681', '::1', 1584711614, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343731313631343b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('222c64084968b30bea9f5c45089c52fdea44e223', '::1', 1584711628, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343731313631343b757365726e616d657c733a353a2261646d696e223b6163636573737c733a31303a2273757065725f75736572223b),
('cb9e11b121fa10d9993309f924b437d0e16e3ad5', '::1', 1584739281, 0x5f5f63695f6c6173745f726567656e65726174657c693a313538343733393138313b);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`idguru`);

--
-- Indexes for table `kelas`
--
ALTER TABLE `kelas`
  ADD PRIMARY KEY (`idkelas`);

--
-- Indexes for table `mapel`
--
ALTER TABLE `mapel`
  ADD PRIMARY KEY (`idmapel`);

--
-- Indexes for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD PRIMARY KEY (`idmengajar`,`tahun_akademik_idtahun_akademik`,`guru_idguru`,`mapel_idmapel`),
  ADD KEY `fk_guru_has_mapel_mapel1_idx` (`mapel_idmapel`),
  ADD KEY `fk_guru_has_mapel_guru1_idx` (`guru_idguru`),
  ADD KEY `fk_mengajar_tahun_akademik1_idx` (`tahun_akademik_idtahun_akademik`);

--
-- Indexes for table `nilai`
--
ALTER TABLE `nilai`
  ADD PRIMARY KEY (`idnilai`,`mapel_idmapel`,`siswa_idsiswa`),
  ADD KEY `fk_mapel_has_siswa_siswa1_idx` (`siswa_idsiswa`),
  ADD KEY `fk_mapel_has_siswa_mapel1_idx` (`mapel_idmapel`);

--
-- Indexes for table `rombel`
--
ALTER TABLE `rombel`
  ADD PRIMARY KEY (`idrombel`,`tahun_akademik_idtahun_akademik`,`guru_idguru`,`kelas_idkelas`,`siswa_idsiswa`),
  ADD KEY `fk_guru_has_kelas_kelas1_idx` (`kelas_idkelas`),
  ADD KEY `fk_guru_has_kelas_guru_idx` (`guru_idguru`),
  ADD KEY `fk_rombel_tahun_akademik1_idx` (`tahun_akademik_idtahun_akademik`),
  ADD KEY `fk_rombel_siswa1_idx` (`siswa_idsiswa`);

--
-- Indexes for table `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`idsiswa`);

--
-- Indexes for table `tahun_akademik`
--
ALTER TABLE `tahun_akademik`
  ADD PRIMARY KEY (`idtahun_akademik`);

--
-- Indexes for table `users`
--
ALTER TABLE `users`
  ADD PRIMARY KEY (`idusers`);

--
-- Indexes for table `_sessions`
--
ALTER TABLE `_sessions`
  ADD KEY `ci_sessions_TIMESTAMP` (`timestamp`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `guru`
--
ALTER TABLE `guru`
  MODIFY `idguru` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `kelas`
--
ALTER TABLE `kelas`
  MODIFY `idkelas` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `mengajar`
--
ALTER TABLE `mengajar`
  MODIFY `idmengajar` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `nilai`
--
ALTER TABLE `nilai`
  MODIFY `idnilai` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `rombel`
--
ALTER TABLE `rombel`
  MODIFY `idrombel` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `siswa`
--
ALTER TABLE `siswa`
  MODIFY `idsiswa` int(4) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `users`
--
ALTER TABLE `users`
  MODIFY `idusers` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=9;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `mengajar`
--
ALTER TABLE `mengajar`
  ADD CONSTRAINT `fk_guru_has_mapel_guru1` FOREIGN KEY (`guru_idguru`) REFERENCES `guru` (`idguru`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guru_has_mapel_mapel1` FOREIGN KEY (`mapel_idmapel`) REFERENCES `mapel` (`idmapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mengajar_tahun_akademik1` FOREIGN KEY (`tahun_akademik_idtahun_akademik`) REFERENCES `tahun_akademik` (`idtahun_akademik`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `nilai`
--
ALTER TABLE `nilai`
  ADD CONSTRAINT `fk_mapel_has_siswa_mapel1` FOREIGN KEY (`mapel_idmapel`) REFERENCES `mapel` (`idmapel`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_mapel_has_siswa_siswa1` FOREIGN KEY (`siswa_idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE NO ACTION ON UPDATE NO ACTION;

--
-- Constraints for table `rombel`
--
ALTER TABLE `rombel`
  ADD CONSTRAINT `fk_guru_has_kelas_guru` FOREIGN KEY (`guru_idguru`) REFERENCES `guru` (`idguru`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_guru_has_kelas_kelas1` FOREIGN KEY (`kelas_idkelas`) REFERENCES `kelas` (`idkelas`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rombel_siswa1` FOREIGN KEY (`siswa_idsiswa`) REFERENCES `siswa` (`idsiswa`) ON DELETE NO ACTION ON UPDATE NO ACTION,
  ADD CONSTRAINT `fk_rombel_tahun_akademik1` FOREIGN KEY (`tahun_akademik_idtahun_akademik`) REFERENCES `tahun_akademik` (`idtahun_akademik`) ON DELETE NO ACTION ON UPDATE NO ACTION;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
