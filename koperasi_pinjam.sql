-- phpMyAdmin SQL Dump
-- version 4.4.12
-- http://www.phpmyadmin.net
--
-- Host: 127.0.0.1
-- Generation Time: 01 Jul 2021 pada 08.17
-- Versi Server: 5.6.25
-- PHP Version: 5.6.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `koperasi_pinjam`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_anggota`
--

CREATE TABLE IF NOT EXISTS `tbl_anggota` (
  `no_anggota` char(10) NOT NULL,
  `nama` varchar(30) NOT NULL,
  `wajib` varchar(35) NOT NULL,
  `pokok` varchar(35) NOT NULL,
  `saldo` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_anggota`
--

INSERT INTO `tbl_anggota` (`no_anggota`, `nama`, `wajib`, `pokok`, `saldo`) VALUES
('A01', 'Widia Novita', '100000', '250000', 800000),
('A02', 'Ita Novita', '300000', '200000', 1200000),
('A03', 'Mutiara Nur Ningsih', '300000', '200000', 800000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_kasir`
--

CREATE TABLE IF NOT EXISTS `tbl_kasir` (
  `kode_kasir` char(10) NOT NULL,
  `nama_kasir` varchar(32) NOT NULL,
  `password` varchar(32) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_kasir`
--

INSERT INTO `tbl_kasir` (`kode_kasir`, `nama_kasir`, `password`) VALUES
('1234', 'widia', '56b92c82193ebda3811355138056e98f');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_pinjam`
--

CREATE TABLE IF NOT EXISTS `tbl_pinjam` (
  `no_pinjam` char(10) NOT NULL,
  `tanggal` date NOT NULL,
  `no_anggota` char(10) NOT NULL,
  `jml_pinjam` int(11) NOT NULL,
  `kode_kasir` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_pinjam`
--

INSERT INTO `tbl_pinjam` (`no_pinjam`, `tanggal`, `no_anggota`, `jml_pinjam`, `kode_kasir`) VALUES
('PJM001', '2021-01-13', 'A01', 1000000, '1234'),
('PJM02', '2021-01-22', 'A01', 200000, '1234');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tbl_simpan`
--

CREATE TABLE IF NOT EXISTS `tbl_simpan` (
  `no_simpan` varchar(10) NOT NULL,
  `tanggal` date NOT NULL,
  `no_anggota` varchar(10) NOT NULL,
  `jml_simpan` int(11) NOT NULL,
  `kode_kasir` char(10) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tbl_simpan`
--

INSERT INTO `tbl_simpan` (`no_simpan`, `tanggal`, `no_anggota`, `jml_simpan`, `kode_kasir`) VALUES
('SP001', '2021-03-01', 'A01', 1500000, '1234'),
('SP002', '2020-12-12', 'A01', 500000, '1234');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_anggota`
--
ALTER TABLE `tbl_anggota`
  ADD PRIMARY KEY (`no_anggota`);

--
-- Indexes for table `tbl_kasir`
--
ALTER TABLE `tbl_kasir`
  ADD PRIMARY KEY (`kode_kasir`);

--
-- Indexes for table `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD PRIMARY KEY (`no_pinjam`),
  ADD KEY `kode_kasir` (`kode_kasir`),
  ADD KEY `no_anggota` (`no_anggota`);

--
-- Indexes for table `tbl_simpan`
--
ALTER TABLE `tbl_simpan`
  ADD PRIMARY KEY (`no_simpan`),
  ADD KEY `no_anggota` (`no_anggota`),
  ADD KEY `kode_kasir` (`kode_kasir`);

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tbl_pinjam`
--
ALTER TABLE `tbl_pinjam`
  ADD CONSTRAINT `tbl_pinjam_ibfk_1` FOREIGN KEY (`kode_kasir`) REFERENCES `tbl_kasir` (`kode_kasir`);

--
-- Ketidakleluasaan untuk tabel `tbl_simpan`
--
ALTER TABLE `tbl_simpan`
  ADD CONSTRAINT `tbl_simpan_ibfk_1` FOREIGN KEY (`no_anggota`) REFERENCES `tbl_anggota` (`no_anggota`),
  ADD CONSTRAINT `tbl_simpan_ibfk_2` FOREIGN KEY (`kode_kasir`) REFERENCES `tbl_kasir` (`kode_kasir`);

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
