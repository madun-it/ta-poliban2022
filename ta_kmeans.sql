-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Agu 2022 pada 01.49
-- Versi server: 10.4.21-MariaDB
-- Versi PHP: 8.0.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `ta_kmeans`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_cluster`
--

CREATE TABLE `tb_cluster` (
  `id_cluster` varchar(11) NOT NULL,
  `nama_cluster` varchar(50) NOT NULL,
  `k1` varchar(50) NOT NULL,
  `k2` varchar(50) NOT NULL,
  `k3` varchar(50) NOT NULL,
  `k4` varchar(50) NOT NULL,
  `k5` varchar(50) NOT NULL,
  `k6` varchar(50) NOT NULL,
  `k7` varchar(50) NOT NULL,
  `k8` varchar(50) NOT NULL,
  `k9` varchar(50) NOT NULL,
  `k10` varchar(50) NOT NULL,
  `k11` varchar(50) NOT NULL,
  `k12` varchar(50) NOT NULL,
  `k13` varchar(50) NOT NULL,
  `k14` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_cluster`
--

INSERT INTO `tb_cluster` (`id_cluster`, `nama_cluster`, `k1`, `k2`, `k3`, `k4`, `k5`, `k6`, `k7`, `k8`, `k9`, `k10`, `k11`, `k12`, `k13`, `k14`) VALUES
('C1', 'Miskin', '0.75', '0.5', '0.75', '0.5', '0.75', '1', '0.75', '1', '0.5', '0', '0', '0.75', '1', '0.75'),
('C2', 'Rentan Miskin', '0.25', '0.5', '0.5', '0.25', '0', '1', '1', '0.5', '1', '0.75', '1', '0.75', '0', '0.25'),
('C3', 'Tidak Miskin', '0.25', '0.5', '0.75', '0', '1', '1', '0', '0.5', '0.25', '1', '0.75', '1', '0.75', '0.75');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kecamatan`
--

CREATE TABLE `tb_kecamatan` (
  `id` int(3) NOT NULL,
  `kecamatan` varchar(25) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kecamatan`
--

INSERT INTO `tb_kecamatan` (`id`, `kecamatan`) VALUES
(1, 'Banjarmasin Utara'),
(2, 'Banjarmasin Barat'),
(3, 'Banjarmasin Selatan'),
(4, 'Banjarmasin Timur'),
(5, 'Banjamasin Tengah');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kepkel`
--

CREATE TABLE `tb_kepkel` (
  `nik` int(11) NOT NULL,
  `nama` varchar(60) NOT NULL,
  `id_kecamatan` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kepkel`
--

INSERT INTO `tb_kepkel` (`nik`, `nama`, `id_kecamatan`) VALUES
(1, 'Aldy Ngemutz', 4),
(2, 'M. Ramadhan Adiputra', 1),
(3, 'Muhammad Fazriannur', 5),
(4, 'Saguh Wiyono', 3),
(5, 'Harry Hidayah', 2),
(6, 'Mahmud Junai', 2),
(7, 'Amat Kacong', 4),
(8, 'Kang Ujang', 5),
(9, 'Ucok Subejo', 3),
(10, 'Martin Letoy', 1),
(11, 'Putra Barito', 3),
(12, 'Uci Karuceng', 3),
(13, 'Udin Marpufin', 4),
(14, 'Ari', 4),
(15, 'Upil', 3),
(16, 'Samsudin Nor', 1),
(17, 'Oetoehgoenoel', 1),
(18, 'Kontol Maniesz', 4);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_kriteria`
--

CREATE TABLE `tb_kriteria` (
  `id_kriteria` int(3) NOT NULL,
  `kriteria` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_kriteria`
--

INSERT INTO `tb_kriteria` (`id_kriteria`, `kriteria`) VALUES
(1, 'Luas Lantai Rumah'),
(2, 'Jenis Lantai Rumah'),
(3, 'Jenis Dinding Rumah'),
(4, 'Fasilitas BAB'),
(5, 'Sumber Penerangan Ru'),
(6, 'Sumber Air Minum'),
(7, 'Bahan Bakar Memasak'),
(8, 'Tanggungan Anak'),
(9, 'Pengeluaran Perbulan'),
(10, 'Biaya Pengobatan'),
(11, 'Penghasilan'),
(12, 'Pendidikan Terttingg'),
(13, 'Frekuensi Makan'),
(14, 'Umur Kepala Keluarga');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_nilai`
--

CREATE TABLE `tb_nilai` (
  `id_nilai` int(3) NOT NULL,
  `nik` int(3) NOT NULL,
  `k1` varchar(20) NOT NULL,
  `k2` varchar(20) NOT NULL,
  `k3` varchar(20) NOT NULL,
  `k4` varchar(20) NOT NULL,
  `k5` varchar(20) NOT NULL,
  `k6` varchar(20) NOT NULL,
  `k7` varchar(20) NOT NULL,
  `k8` varchar(20) NOT NULL,
  `k9` varchar(20) NOT NULL,
  `k10` varchar(20) NOT NULL,
  `k11` varchar(20) NOT NULL,
  `k12` varchar(20) NOT NULL,
  `k13` varchar(20) NOT NULL,
  `k14` varchar(20) NOT NULL,
  `cluster` varchar(20) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_nilai`
--

INSERT INTO `tb_nilai` (`id_nilai`, `nik`, `k1`, `k2`, `k3`, `k4`, `k5`, `k6`, `k7`, `k8`, `k9`, `k10`, `k11`, `k12`, `k13`, `k14`, `cluster`) VALUES
(1, 1, '0.75', '0.5', '0.5', '0.5', '0.75', '1', '0.75', '1', '0.5', '1', '1', '0.75', '1', '0.75', 'C1'),
(2, 2, '0.25', '0.75', '0.25', '0.75', '0.75', '1', '0.75', '1', '0.5', '1', '1', '0.75', '0.5', '0.5', 'C2'),
(3, 4, '0.25', '0.25', '0', '0.25', '0.25', '0.25', '0.25', '0', '0.25', '0.25', '0.5', '0.25', '0.25', '0', 'C3'),
(4, 3, '0.25', '0.5', '0.75', '0.75', '0.25', '0.5', '0.5', '0.5', '0.5', '0.5', '0.75', '0.5', '0.5', '1', 'C2'),
(5, 5, '0.5', '0.25', '1', '0', '0.25', '0.5', '0.25', '0.25', '0', '0', '0', '0', '0', '0.5', 'C3'),
(6, 6, '0', '0.5', '0', '0', '0', '0.25', '0.5', '0.25', '0.25', '0.25', '0.25', '0.5', '0.25', '0.5', 'C3'),
(7, 7, '0.75', '1', '1', '0.75', '0.25', '0.5', '1', '0.75', '1', '1', '0.75', '0.75', '0.75', '1', 'C1'),
(8, 9, '0.5', '0.75', '0.5', '0.5', '0.75', '0.5', '0.25', '0.5', '0.25', '0.5', '0.5', '0.5', '0.5', '0.5', 'C2'),
(9, 14, '0.5', '0.25', '0.75', '0', '0.5', '0.75', '0.5', '0.5', '1', '1', '1', '1', '1', '1', 'C1'),
(10, 15, '0', '0.25', '0.25', '0.5', '0.25', '0', '0.25', '0.25', '0.5', '0', '0.25', '0.25', '0', '0.25', 'C3'),
(11, 8, '0.25', '0.75', '0.25', '0.25', '0.5', '0.5', '1', '0.25', '0.25', '0.5', '0.25', '0.25', '0.5', '0.25', 'C3'),
(12, 17, '0.5', '0.75', '0', '0.5', '0', '0.5', '0.25', '0.25', '0.5', '0.25', '0.75', '0.5', '0.25', '0.5', 'C3'),
(13, 10, '0.75', '0.25', '0.25', '0.25', '0.25', '0.5', '0.25', '0.25', '0.5', '1', '0.25', '0.25', '0.25', '0.75', 'C3'),
(14, 12, '0.75', '0.5', '0.75', '0.5', '0.75', '0', '0.25', '0', '0.25', '0.25', '0.75', '0.5', '0.25', '0.75', 'C3'),
(15, 11, '0.25', '1', '0.25', '0.5', '0.5', '1', '0.75', '0.75', '0.5', '0.25', '0.5', '0.25', '0.75', '0.75', 'C2'),
(16, 13, '0.25', '0.75', '0.5', '0.5', '0.75', '0.25', '1', '0.25', '0.25', '0.75', '0.25', '0.75', '1', '1', 'C1'),
(17, 16, '0.25', '1', '0.25', '0.75', '0.5', '0.25', '0.5', '0.75', '0.5', '0.25', '0.25', '0.5', '0.75', '0.25', 'C3');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(3) NOT NULL,
  `username` varchar(20) NOT NULL,
  `password` varchar(20) NOT NULL,
  `priviledge` enum('admin','surveyor') NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `username`, `password`, `priviledge`) VALUES
(1, 'admin', 'admin', 'admin'),
(2, 'user', 'user', 'surveyor');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_cluster`
--
ALTER TABLE `tb_cluster`
  ADD PRIMARY KEY (`id_cluster`);

--
-- Indeks untuk tabel `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tb_kepkel`
--
ALTER TABLE `tb_kepkel`
  ADD PRIMARY KEY (`nik`),
  ADD KEY `id_kecamatan` (`id_kecamatan`);

--
-- Indeks untuk tabel `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  ADD PRIMARY KEY (`id_kriteria`);

--
-- Indeks untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD PRIMARY KEY (`id_nilai`),
  ADD KEY `id_data` (`nik`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_kecamatan`
--
ALTER TABLE `tb_kecamatan`
  MODIFY `id` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `tb_kepkel`
--
ALTER TABLE `tb_kepkel`
  MODIFY `nik` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- AUTO_INCREMENT untuk tabel `tb_kriteria`
--
ALTER TABLE `tb_kriteria`
  MODIFY `id_kriteria` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(3) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- Ketidakleluasaan untuk tabel pelimpahan (Dumped Tables)
--

--
-- Ketidakleluasaan untuk tabel `tb_kepkel`
--
ALTER TABLE `tb_kepkel`
  ADD CONSTRAINT `tb_kepkel_ibfk_1` FOREIGN KEY (`id_kecamatan`) REFERENCES `tb_kecamatan` (`id`);

--
-- Ketidakleluasaan untuk tabel `tb_nilai`
--
ALTER TABLE `tb_nilai`
  ADD CONSTRAINT `tb_nilai_ibfk_1` FOREIGN KEY (`nik`) REFERENCES `tb_kepkel` (`nik`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
