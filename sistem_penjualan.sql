-- phpMyAdmin SQL Dump
-- version 4.9.0.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 16 Jul 2021 pada 13.31
-- Versi server: 10.3.16-MariaDB
-- Versi PHP: 7.1.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `sistem_penjualan`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `barang`
--

CREATE TABLE `barang` (
  `ID_BARANG` int(11) NOT NULL,
  `NAMA_BARANG` varchar(100) NOT NULL,
  `HARGA_BARANG` int(11) NOT NULL,
  `QTY` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `barang`
--

INSERT INTO `barang` (`ID_BARANG`, `NAMA_BARANG`, `HARGA_BARANG`, `QTY`) VALUES
(112, 'Acer', 12000000, 200),
(113, 'Lenovo', 5500000, 50),
(114, 'Asus', 7000000, 100),
(115, 'Toshiba', 6500000, 150);

-- --------------------------------------------------------

--
-- Struktur dari tabel `customer`
--

CREATE TABLE `customer` (
  `ID_CUSTOMER` int(11) NOT NULL,
  `NAMA_CUSTOMER` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `customer`
--

INSERT INTO `customer` (`ID_CUSTOMER`, `NAMA_CUSTOMER`) VALUES
(1234, 'Dea M'),
(12345, 'Rosita'),
(1234567, 'Sudirman');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kasir`
--

CREATE TABLE `kasir` (
  `ID_KASIR` int(11) NOT NULL,
  `NAMA_KASIR` varchar(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `kasir`
--

INSERT INTO `kasir` (`ID_KASIR`, `NAMA_KASIR`) VALUES
(999, 'Cindy'),
(778, 'Hermanto'),
(665, 'Chika');

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi`
--

CREATE TABLE `transaksi` (
  `ID_TRANSAKSI` int(11) NOT NULL,
  `ID_KASIR` int(11) NOT NULL,
  `ID_CUSTOMER` int(11) NOT NULL,
  `ID_BARANG` int(11) NOT NULL,
  `TGL_TRANSAKSI` datetime NOT NULL,
  `TOTAL_HARGA` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi`
--

INSERT INTO `transaksi` (`ID_TRANSAKSI`, `ID_KASIR`, `ID_CUSTOMER`, `ID_BARANG`, `TGL_TRANSAKSI`, `TOTAL_HARGA`) VALUES
(332, 999, 1234, 112, '2021-07-16 00:00:00', 12500000),
(223, 778, 12345, 113, '2021-07-15 00:00:00', 7000000),
(323, 665, 1234567, 115, '2021-07-14 00:11:20', 5500000);

-- --------------------------------------------------------

--
-- Struktur dari tabel `transaksi_barang`
--

CREATE TABLE `transaksi_barang` (
  `ID_TRANSAKSI` int(11) NOT NULL,
  `ID_BARANG` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `transaksi_barang`
--

INSERT INTO `transaksi_barang` (`ID_TRANSAKSI`, `ID_BARANG`) VALUES
(332, 112),
(223, 113),
(323, 115),
(323, 114);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
