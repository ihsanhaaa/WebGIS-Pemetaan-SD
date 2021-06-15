-- phpMyAdmin SQL Dump
-- version 5.1.0
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 15 Jun 2021 pada 17.12
-- Versi server: 10.4.19-MariaDB
-- Versi PHP: 7.3.28

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `uas-webgis`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_options`
--

CREATE TABLE `tb_options` (
  `option_name` varchar(16) NOT NULL,
  `option_value` text DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_options`
--

INSERT INTO `tb_options` (`option_name`, `option_value`) VALUES
('default_lat', '-8.251889'),
('default_lng', '115.076818'),
('default_zoom', '10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_sekolah`
--

CREATE TABLE `tb_sekolah` (
  `id_sekolah` int(11) NOT NULL,
  `nama_sekolah` varchar(255) DEFAULT NULL,
  `alamat_sekolah` varchar(255) DEFAULT NULL,
  `gambar_sekolah` varchar(255) DEFAULT NULL,
  `akreditasi_sekolah` varchar(120) NOT NULL,
  `nama_kepsek` varchar(255) NOT NULL,
  `daya_tampung` int(11) NOT NULL,
  `keterangan` text DEFAULT NULL,
  `lat` double DEFAULT NULL,
  `lng` double DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_sekolah`
--

INSERT INTO `tb_sekolah` (`id_sekolah`, `nama_sekolah`, `alamat_sekolah`, `gambar_sekolah`, `akreditasi_sekolah`, `nama_kepsek`, `daya_tampung`, `keterangan`, `lat`, `lng`) VALUES
(1, 'SD NEGERI 03 PONTIANAK KOTA', 'Jl. K. H. Wahid Hasyim Gg. Cimahi. Kec. Pontianak Kota', '1852sd-negeri-03-pontianak-kota.jpg', 'B', 'Suhadaniah', 542, '<p>16 Ruang Kelas. 1 Ruang Perpustakaan. 0 Ruang Guru. 0 Ruang Ibadah. 10 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.024857119, 109.3258378),
(2, 'SD NEGERI 05 PONTIANAK KOTA', 'Jl Fatimah. Kec. Pontianak Kota', '3719sd-negeri-05-pontianak-kota.jpg', 'B', 'Saniyanti', 257, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 6 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.021908654, 109.3351649),
(3, 'SD NEGERI 06 PONTIANAK KOTA', 'Jl. H. Rais A. Rahman Gg. Gunung Jati. Kec. Pontianak Kota', '3168sd-negeri-06-pontianak-kota.jpg', 'B', 'Anida', 222, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 9 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.020709874, 109.3199405),
(4, 'SD NEGERI 07 PONTIANAK KOTA', 'Jl. Lembah Murai. Kec. Pontianak Kota', '3829sd-negeri-07-pontianak-kota.jpg', 'A', 'Hayati', 210, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.019158894, 109.3330463),
(5, 'SD NEGERI 11 PONTIANAK KOTA', 'Jl. P. Natakusuma Gg. Sekolah. Kec. Pontianak Kota', '6158sd-negeri-11-pontianak-kota.jpg', 'B', 'Ina Sabarlina. S.pd', 335, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.037893237, 109.3166806),
(6, 'SD NEGERI 12 PONTIANAK KOTA', 'Jl. Alianyang. Kec. Pontianak Kota', '8680sd-negeri-12-pontianak-kota.jpg', 'B', 'Nurhabibah. S.pd', 252, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.034631671, 109.3194487),
(7, 'SD NEGERI 14 PONTIANAK KOTA', 'Jl. Tamar. Kec. Pontianak Kota', '1277sd-negeri-14-pontianak-kota.jpg', 'B', 'Hj. Ida Isnaini. S.pd.. MM', 351, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 11 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.023461694, 109.3362983),
(8, 'SD NEGERI 16 PONTIANAK KOTA', 'Jl.Gusti Hamzah. Kec. Pontianak Kota', '2022sd-negeri-16-pontianak-kota.jpg', 'B', 'Chairinah', 237, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.025270031, 109.3190215),
(9, 'SD NEGERI 17 PONTIANAK KOTA', 'Jl. Putri Candramidi. Kec. Pontianak Kota', '4259sd-negeri-17-pontianak-kota.jpg', 'A', 'Moh. Yasin', 445, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.038758154, 109.3274308),
(10, 'SD NEGERI 24 PONTIANAK KOTA', 'Jln. HM. Suwignyo Gg Sudiharjo 3. Kec. Pontianak Kota', '9190sd-negeri-24-pontianak-kota.jpg', 'B', 'Rusni. S.pd.i', 309, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 0 Ruang Ibadah. 15 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.031003413, 109.3146193),
(11, 'SD NEGERI 28 PONTIANAK KOTA', 'Jl. Putri Dara Hitam. Kec. Pontianak Kota', '9766sd-negeri-28-pontianak-kota.jpg', 'B', 'Siti Toyibah', 373, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.023997983, 109.3221698),
(12, 'SD NEGERI 29 PONTIANAK KOTA', 'Jl. P. Natakusuma Gg. Sumur Bor. Kec. Pontianak Kota', '3257sd-negeri-29-pontianak-kota.jpg', 'A', 'Mahyunidar', 452, '<p>14 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 14 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.039053281, 109.3143896),
(13, 'SD NEGERI 34 PONTIANAK KOTA', 'Jl. Prof. Dr. M. Yamin. Kec. Pontianak Kota', '3866sd-negeri-34-pontianak-kota.jpg', 'A', 'Suhaili', 993, '<p>32 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.051174581, 109.3147495),
(14, 'SD NEGERI 36 PONTIANAK KOTA', 'Jl. Dr. Sutomo Gg. Karya A. Kec. Pontianak Kota', '2953sd-negeri-36-pontianak-kota.jpg', 'B', 'Hj. Nurhayati. S.pd', 290, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.046503442, 109.3170285),
(15, 'SD NEGERI 39 PONTIANAK KOTA', 'Jl. Gusti Hamzah. Kec. Pontianak Kota', '4166sd-negeri-39-pontianak-kota.jpg', 'A', 'Fatinam', 449, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 10 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.02702181, 109.3192719),
(16, 'SD NEGERI 42 PONTIANAK KOTA', 'Jl. Ampera. Kec. Pontianak Kota', '3174sd-negeri-42-pontianak-kota.jpg', 'B', 'Sahari. S.pd.i', 662, '<p>21 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.059437339, 109.3064286),
(17, 'SD NEGERI 52 PONTIANAK KOTA', 'Jl. Merdeka Gg. Merak. Kec. Pontianak Kota', '6112sd-negeri-52-pontianak-kota.jpg', 'B', 'Matini', 149, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.024009966, 109.3302459),
(18, 'SD NEGERI 66 PONTIANAK KOTA', 'Jl. Ujung Pandang Gg. Hanura. Kec. Pontianak Kota', '7004sd-negeri-66-pontianak-kota.jpg', 'B', 'Amin', 386, '<p>14 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.034801652, 109.3012337),
(19, 'SD BAWAMAI', 'Jl. KH. Ahmad Dahlan. Kec. Pontianak Kota', '8752sd-bawamai-pontianak-.jpeg', 'B', 'Hatta Abdulahaji', 754, '<p>21 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 7 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.030591135, 109.3281915),
(20, 'SD BRUDER MELATI', 'Jl. Arif Rahman Hakim No 92. kec. Pontianak Kota', '4301sd-bruder-melati.jpg', 'A', 'Gosta Damianus', 800, '<p>18 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 24 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.027719998, 109.3374429),
(21, 'SD INTEGRAL LUQMAN AL-HAKIM', 'Jl. Karya Sosial No. 01. Kec. Pontianak Kota', '8331sd-integral-luqman-al-hakim.jpg', 'B', 'Irfan ', 156, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.057364356, 109.3003747),
(22, 'SD ISLAM AL BAISUNY', 'Jl. Danau Sentarum Jl.petani Kec. Pontianak Kota', '1887sd-islam-al-baisuny.jpg', 'B', 'Rullyana Rahmaeni', 119, '<p>6 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 2 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.050597496, 109.3044648),
(23, 'SD ISLAM SEMESTA KHATULISTIWA', 'Jl. Wan Sagaf No. 18. Kec. Pontianak Kota', '1058sd-islam-semesta-khatulistiwa.jpg', 'B', 'Astuti Kurniawati', 195, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 8 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.032585439, 109.328358),
(24, 'SD ISLAM TERPADU AL HIKMAH', 'Jl. Dr. Wahidin Sudirohusodo Komp. Masjid Al-Hikmah. Kec. Pontianak Kota', '2894sd-islam-terpadu-al-hikmah.jpg', 'A', 'Nuraini', 136, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 5 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.028508778, 109.3057862),
(25, 'SD ISLAM TERPADU AL MUMTAZ', 'Jl. Alianyang Gg. Kencana 2 No.11. Kec. Pontianak Kota', '8061sd-islam-terpadu-al-mumtaz.jpg', 'A', 'Eka Irsyamudana. S.pd', 768, '<p>23 Ruang Kelas. 1 Ruang Perpustakaan. 4 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.032639781, 109.3180125),
(26, 'SD KARTIKA XVII-1', 'Jl. Gusti Hamzah No. 13. Kec. Pontianak Kota', '3001sd-kartika-xvii-1.jpg', 'B', 'Hj. Urai Erlina. S.pd', 164, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.031258423, 109.3221299),
(27, 'SD KATOLIK KARYA YOSEF', 'Jl. Ir. H. Djuanda No. 200. Kec. Pontianak Kota', '2581sekolah-dasar-swasta-katolik-marie-joseph.jpg', 'A', 'Rosa Sung', 881, '<p>22 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.037759712, 109.332357),
(28, 'SD KRISTEN IMMANUEL', 'Jl. Sisingamangaraja Xii No. 123. Kec. Pontianak Kota', '9371sd-kristen-immanuel.jpg', 'A', 'Bonor Sahat Maruli Sinaga S.hut. M.pd.', 2, '<p>47 Ruang Kelas. 2 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 26 Ruang toilet. 2 Ruang Tu. 2 Ruang UKS</p>', -0.02725266, 109.3398818),
(29, 'SD MUHAMMADIYAH 3', 'Jl. Pak Kasih Gg.merak II. Kec. Pontianak Kota', '9443sd-muhammadiyah-3.jpg', 'C', 'Maswati', 79, '<p>6 Ruang Kelas. 0 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.021290134, 109.334019),
(30, 'SD MUHAMMADIYAH I', 'Jl Dr Sutomo Gg Karya I. Kec. Pontianak Kota', '8706sd-muhammadiyah-i.jpg', 'B', 'Manidin', 311, '<p>21 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.047836081, 109.3161275),
(31, 'SD SUSTER', 'Jl. R.A. Kartini No.1. Kec. Pontianak Kota', '1304sd-suster.jpg', 'A', 'Surdarti', 711, '<p>24 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.025733764, 109.3364931),
(32, 'SD SWASTA CAHAYA MENTARI', 'Jl HOS Cokroaminoto. Kec. Pontianak Kota', '3353sd-swasta-cahaya-mentari.jpg', '-', 'Mery', 103, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.028640596, 109.3343737),
(33, 'SDIT Al Madinah', 'Jl. Danau Sentarum Gg. Danau Indah No.1. Kec. Pontianak Kota', '1725sdit-al-madinah.jpg', 'B', 'Saiful Islam. S.pd.i ', 290, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.04687947, 109.3093416),
(34, 'SDS Adicita Mulia', 'Jl. Dr. Sutomo No.8. Kec. Pontianak Kota', '7245sds-adicita-mulia-pontianak.jpg', 'A', 'Elda Silviana', 211, '<p>13 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 5 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.042276364, 109.3147069),
(35, 'Sekolah Dasar Swasta Katolik Marie Joseph', 'Jl. Pancasila V No.14 B. Kec. Pontianak Kota', '7211sekolah-dasar-swasta-katolik-marie-joseph.jpg', 'B', 'Maria Adelgonda Malti', 221, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.027488994, 109.3219076),
(36, 'SD NEGERI 04 PONTIANAK BARAT', 'Jl. M. Saad Ain Perumnas I. Kec. Pontianak Barat ', '4322sd-negeri-04-pontianak-barat.jpg', 'A', 'Drs. Wagianto. M.pd', 821, '<p>15 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 5 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.009988423, 109.3116565),
(37, 'SD NEGERI 08 PONTIANAK BARAT', 'Jl. Kom Yos Sudarso. Kec. Pontianak Barat', '9841sd-negeri-08-pontianak-barat.jpg', 'B', 'Budiarti. S.pd', 496, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 3 Ruang Ibadah. 8 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.006044408, 109.3073745),
(38, 'SD NEGERI 09 PONTIANAK BARAT', 'Jl. R.e. Martadinata.Kec. Pontianak Barat', '8161sd-negeri-09-pontianak-barat.jpg', 'A', 'Muryani', 735, '<p>16 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 2 Ruang Ibadah. 14 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.017749164, 109.3143745),
(39, 'SD NEGERI 13 PONTIANAK BARAT', 'Jl. Husein Hamzah. Kec. Pontianak Barat', '2586sd-negeri-13-pontianak-barat.jpg', 'C', 'Mariana. S.pd', 353, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.037277593, 109.2877454),
(40, 'SD NEGERI 18 PONTIANAK BARAT', 'Jl. Husein Hamzah. Kec. Pontianak Barat', '9198sd-negeri-18-pontianak-barat.jpg', 'A', 'Burhanuddin', 660, '<p>19 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.03116574, 109.2932964),
(41, 'SD NEGERI 21 PONTIANAK BARAT', 'Jl.  Mandau Permai. Kec. Pontianak Barat', '2121sd-negeri-21-pontianak-barat.jpg', 'B', 'Nadhira. Ar', 511, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.017403708, 109.3079822),
(42, 'SD NEGERI 22 PONTIANAK BARAT', 'Jl. H. Rais A. Rahman. Gg. Selamat III. Kec. Pontianak Barat', '3742sd-negeri-22-pontianak-barat.jpg', 'B', 'Slamet Supriono', 449, '<p>18 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 11 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.01699227, 109.3217316),
(43, 'SD NEGERI 23 PONTIANAK BARAT', 'Jl. Komyos Sudarso Gg Jarak. Kec. Pontianak Barat', '4105sd-negeri-23-pontianak-barat.jpg', 'B', 'Sudirsyah', 391, '<p>16 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.013567979, 109.3255728),
(44, 'SD NEGERI 31 PONTIANAK BARAT', 'Jl. Tabrani Ahmad. Kec. Pontianak Barat', '2019sd-negeri-31-pontianak-barat.jpg', 'B', 'Karlina Widayanti', 411, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.017123527, 109.3105614),
(45, 'SD NEGERI 33 PONTIANAK BARAT', 'Jl. H.R.A. Rahman Gg. Gunung Gede. Kec. Pontianak Barat', '2015sd-negeri-33-pontianak-barat.jpg', 'B', 'Uzima Candrawati ', 305, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 8 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.018431966, 109.3147189),
(46, 'SD NEGERI 44 PONTIANAK BARAT', 'Jl. R.E. Martadinata. Kec. Pontianak Barat', '6386sd-negeri-44-pontianak-barat.jpg', 'B', 'Sri Jumiati', 407, '<p>Tidak Ada Data</p>', -0.014422912, 109.3156637),
(47, 'SD NEGERI 50 PONTIANAK BARAT', 'Jl. Apel. Kec. Pontianak Barat', '7099sd-negeri-50-pontianak-barat.jpg', 'B', 'Irwansyah', 375, '<p>13 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 14 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.010169339, 109.3168147),
(48, 'SD NEGERI 54 PONTIANAK BARAT', 'Jl. Komyos Sudarso. Kec. Pontianak Barat', '8527sd-negeri-54-pontianak-barat.jpg', 'B', 'Mustaan', 366, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.010687339, 109.3228497),
(49, 'SD NEGERI 55 PONTIANAK BARAT', 'Jl. Kom Yos Sudarso Gg. Kayu Manis I. Kec. Pontianak Barat', '3373sd-negeri-55-pontianak-barat.jpg', 'B', 'Mazsari Evendy', 413, '<p>Tidak Ada Data</p>', -0.005757237, 109.3106369),
(50, 'SD NEGERI 56 PONTIANAK BARAT', 'Jl. Kom Yos Sudarso. Kec. Pontianak Barat', '3301sd-negeri-56-pontianak-barat.jpg', 'B', 'Rusni Arbi', 709, '<p>13 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 0 Ruang Ibadah. 6 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.006954083, 109.2981723),
(51, 'SD NEGERI 68 PONTIANAK BARAT', 'Jl. Kom Yos Sudarso. Kec. Pontianak Barat', '5907sd-negeri-68-pontianak-barat.jpg', 'B', 'Asnul Yani', 730, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.005926773, 109.2888282),
(52, 'SD NEGERI 71 PONTIANAK BARAT', 'Jl Yam Sabran Perumnas II Kelurahan sungai beliung. Kec. Pontianak Barat', '5778sd-negeri-71-pontianak-barat.jpg', 'A', 'Siti Rukiyah. S.pd ', 605, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 0 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.006235364, 109.3028055),
(53, 'SD NEGERI 72 PONTIANAK BARAT', 'Jl. Atot Ahmad. Gg. Majapahit IV Perumnas II. Kec. Pontianak Barat', '5921sd-negeri-72-pontianak-barat.jpg', 'B', 'Hj. Marlina. S.pd', 371, '<p>8 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 9 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.005949339, 109.3035678),
(54, 'SD NEGERI 73 PONTIANAK BARAT', 'Jl. Komyos Sudarso. Kec. Pontianak Barat', '6775sd-negeri-73-pontianak-barat.jpg', 'A', 'Sutiyanto. S.pd', 454, '<p>14 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 12 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.006340296, 109.3084358),
(55, 'SD NEGERI 74 PONTIANAK BARAT', 'Jl Tabrani Ahmad. Kec. Pontianak Barat', '4690sd-negeri-74-pontianak-barat.jpg', 'B', 'Elisa Margeretha', 327, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.024187384, 109.2937581),
(56, 'SD NEGERI 75 PONTIANAK BARAT', 'Jl Berdikari Gang Pramuka. Kec. Pontianak Barat', '3036sd-negeri-75-pontianak-barat.jpg', '-', 'Sahari. S.pd.i', 73, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 0 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.03036224, 109.281768),
(57, 'SD ISLAM SIRAJUN JADID', 'Jl. Nipah Kuning Dalam. Kec. Pontianak Barat', '4725sd-islam-sirajun-jadid.jpg', 'A', 'Hery Susanto. S.pd', 176, '<p>5 Ruang Kelas. 1 Ruang Perpustakaan. 0 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.018542823, 109.2835613),
(58, 'SD IT DARUL IHSAN', 'Jl. Apel No. 51. Kec. Pontianak Barat', '9873sd-it-darul-ihsan.jpg', 'B', 'Uqbah', 356, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 5 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.009061512, 109.3148518),
(59, 'SD PELITA HARAPAN', 'Jl. kom Yos Sudarso Gg.Rambutan II No.19.  Kec. Pontianak Barat', '3147sd-pelita-harapan.jpg', 'B', 'Yetje Katrine. M.pd.k', 217, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.004889315, 109.3087027),
(60, 'SDS Pesantren Assalam', 'Jl.  Husein Hamzah. Kec. Pontianak Barat', '8695sds-pesantren-assalam.jpg', 'C', 'Fitria Yulistira', 139, '<p>3 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.03162517, 109.2926988),
(61, 'SD NEGERI 01 PONTIANAK SELATAN', 'Jl. S. Parman. Kec. Pontianak Selatan', '8309sd-negeri-01-pontianak-selatan.jpg', 'B', 'Yanti Sudiarti', 58, '<p>8 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.025914962, 109.3369071),
(62, 'SD NEGERI 03 PONTIANAK SELATAN', 'Jl. Sulawesi. Kec. Pontianak Selatan', '6870sd-negeri-03-pontianak-selatan.jpg', 'A', 'Chaya Khairani. S.pd', 745, '<p>21 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.044670339, 109.3286395),
(63, 'SD NEGERI 05 PONTIANAK SELATAN', 'Jl. Imam Bonjol Gg. Kuantan. Kec. Pontianak Selatan', '4388sd-negeri-05-pontianak-selatan.jpg', 'B', 'Hj. Jamilon Edrus', 225, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.042468949, 109.3544268),
(64, 'SD NEGERI 06 PONTIANAK SELATAN', 'Jl. S. Parman. Kec. Pontianak Selatan', '6418sd-negeri-06-pontianak-selatan.jpg', 'B', 'Sunarti', 312, '<p>13 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.035619881, 109.3369581),
(65, 'SD NEGERI 08 PONTIANAK SELATAN', 'Jl. Gajah Mada Gg. Suez. Kec. Pontianak Selatan', '2575sd-negeri-08-pontianak-selatan.jpg', 'B', 'Saminem', 177, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.036040895, 109.3441942),
(66, 'SD NEGERI 12 PONTIANAK SELATAN', 'Jl. Purnama Gg. Purnama Agung II. Kec. Pontianak Selatan', '6687sd-negeri-12-pontianak-selatan.jpg', 'B', 'Suhada', 223, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.05351831, 109.3317698),
(67, 'SD NEGERI 14 PONTIANAK SELATAN', 'Jl. Purnama Gg Purnama Agung 2. Kec. Pontianak Selatan', '1951sd-negeri-14-pontianak-selatan.jpg', 'C', 'Supriati', 174, '<p>7 Ruang Kelas. 0 Ruang Perpustakaan. 0 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.053730306, 109.3320282),
(68, 'SD NEGERI 15 PONTIANAK SELATAN', 'Jl. Purnama Komplek Purnama agung V. Kec. Pontianak Selatan', '7417sd-negeri-15-pontianak-selatan.jpg', 'B', 'Margareta. S.pd.sd', 140, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.057751139, 109.330131),
(69, 'SD NEGERI 16 PONTIANAK SELATAN', 'Jl. Tani Makmur Gg. Pemangkat. Kec. Pontianak Selatan', '8453sd-negeri-16-pontianak-selatan.jpg', 'B', 'Erna', 380, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 1 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.051501085, 109.3177742),
(70, 'SD NEGERI 20 PONTIANAK SELATAN', 'Jl. Letjend Suprapto. Kec. Pontianak Selatan', '1324sd-negeri-20-pontianak-selatan.jpg', 'B', 'Rubiyanti', 310, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.038300527, 109.342634),
(71, 'SD NEGERI 28 PONTIANAK SELATAN', 'Jl. Ketapang. Kec. Pontianak Selatan', '7985sd-negeri-28-pontianak-selatan.jpg', 'B', 'Heni Gustiani', 159, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.034254966, 109.3426517),
(72, 'SD NEGERI 30 PONTIANAK SELATAN', 'Jl. Purnama Gg. Purnama II A. Kec. Pontianak Selatan', '7499sd-negeri-30-pontianak-selatan.jpg', 'B', 'Farhanah. S.pd', 247, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.049613667, 109.3341104),
(73, 'SD NEGERI 34 PONTIANAK SELATAN', 'Jl. Prof. Dr. M Yamin. Kec. Pontianak Selatan', '6691sd-negeri-34-pontianak-selatan.jpg', 'B', 'Rahmaniar', 848, '<p>30 Ruang Kelas. 1 Ruang Perpustakaan. 5 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.05118531, 109.3146636),
(74, 'SD NEGERI 35 PONTIANAK SELATAN', 'Jl. Nirbaya. Kec. Pontianak Selatan', '6115sd-negeri-35-pontianak-selatan.jpg', 'B', 'Ihya', 593, '<p>16 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 5 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.059162796, 109.3108561),
(75, 'SD NEGERI 36 PONTIANAK SELATAN', 'Jl. Parit Demang. Kec. Pontianak Selatan', '5513sd-negeri-36-pontianak-selatan.jpg', 'B', 'Rafida', 343, '<p>8 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.064082879, 109.325943),
(76, 'SD BUDI BAIK', 'Jl. Ismail Marzuki No. 5-7. Kec. Pontianak Selatan', '3475sd-budi-baik.jpg', 'C', 'Khoirul Sanusi', 82, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 10 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.031141412, 109.3391395),
(77, 'SD GEMBALA BAIK I', 'Jl. Pangsuma No 2. Kec. Pontianak Selatan', '7866sd-gembala-baik-i.jpg', 'A', 'Hendia Anna Saragih ', 169, '<p>16 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 5 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.027895339, 109.3450087),
(78, 'SD ISLAM MUTASHIM BILLAH', 'Jl. Purnama II. Kec. Pontianak Selatan', '6713sd-islam-mutashim-billah.jpg', '-', 'Muhammad Ridwan', 81, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.073193125, 109.3147175),
(79, 'SD KRISTEN KALAM KUDUS', 'Jl. Purnama Raya No. 50. Kec. Pontianak Selatan', '3536sd-kristen-kalam-kudus.jpg', 'B', 'Mega Purani Nainggolan. S.pd', 257, '<p>13 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 10 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.050986367, 109.3323467),
(80, 'SD LKIA', 'Jl. A Yani No 5. Kec. Pontianak Selatan', '8200sd-lkia.jpg', 'B', 'Suharmi', 123, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.038376983, 109.3365781),
(81, 'SD MAZMUR 21', 'Jl. Budi Karya. Kec. Pontianak Selatan', '2058sd-mazmur-21.jpg', 'A', 'Edi Febrianto', 118, '<p>6 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.043188495, 109.3479763),
(82, 'SD MUHAMMADIYAH II', 'Jl. A. Yani. Kec. Pontianak Selatan', '3675sd-muhammadiyah-ii.jpg', 'A', 'Ariansyah', 990, '<p>28 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 13 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.038674285, 109.3350782),
(83, 'SD MUJAHIDIN', 'Jl. Mt. Haryono Komp. Perguruan Mujahidin. Kec. Pontianak Selatan', '4028sd-mujahidin.jpg', 'A', 'Sutaji', 1, '<p>32 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 0 Ruang Ibadah. 11 Ruang toilet. 2 Ruang Tu. 1 Ruang UKS</p>', -0.042965737, 109.3376963),
(84, 'SD MULIA DHARMA', 'Jl. WR. Supratman No. 19. Kec. Pontianak Selatan', '5472sd-mulia-dharma.jpg', 'A', 'Yuliana Langki. SE', 85, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 12 Ruang toilet. 2 Ruang Tu. 1 Ruang UKS</p>', -0.034485081, 109.3389413),
(85, 'SD SALOMO', 'Jl. Letkol Sugiono No 13. Kec. Pontianak Selatan', '8852sd-salomo.jpg', 'B', 'Mahdalena Walgiyani. S.pak', 79, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 2 Ruang Tu. 1 Ruang UKS</p>', -0.046969794, 109.3400091),
(86, 'SD Swasta Kinderfield Kota Pontianak', 'Jl. Purnama Madya. Kec. Pontianak Selatan', '5484sd-swasta-kinderfield-kota-pontianak.jpg', 'A', 'Fifi', 110, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 10 Ruang toilet. 20Ruang Tu. 1 Ruang UKS</p>', -0.051435481, 109.3295102),
(87, 'SDS BRUDER DAHLIA', 'Jl. Gajahmada No. 101. Kec. Pontianak Selatan', '2313sds-bruder-dahlia.jpg', 'B', 'Stephanus Supriyanta', 333, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 10 Ruang toilet. 2 Ruang Tu. 1 Ruang UKS</p>', -0.034711191, 109.3431019),
(88, 'SDS BRUDER NUSA INDAH', 'Jl. Jenderal A. Yani No. 03. Kec. Pontianak Selatan', '5740sds-bruder-nusa-indah.jpg', 'A', 'Johanes Baptis Sarjono', 512, '<p>13 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 11 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.036402254, 109.333838),
(89, 'SD NEGERI 09 PONTIANAK TENGGARA', 'Jl A. Yani Jl. Media Kec. Pontianak Tenggara', '4372sd-negeri-09-pontianak-tenggara.jpg', 'A', 'Kartinah. S', 187, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.049880372, 109.3481253),
(90, 'SD NEGERI 19 PONTIANAK TENGGARA', 'Jl. Parit H. Husin I Gg. Abadi. Kec. Pontianak Tenggara', '7671sd-negeri-19-pontianak-tenggara.jpg', 'B', 'Halimah. S.pd', 230, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.059194654, 109.3602979),
(91, 'SD NEGERI 24 PONTIANAK TENGGARA', 'Jl. Imam Bonjol Komp Untan. Kec. Pontianak Tenggara', '5039sd-negeri-24-pontianak-tenggara.jpg', 'B', 'Etty Hayati. S.pd', 308, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.05002154, 109.3516774),
(92, 'SD NEGERI 26 PONTIANAK TENGGARA', 'Jl. Sungai Raya Dalam. Kec. Pontianak Tenggara', '2481sd-negeri-26-pontianak-tenggara.jpg', 'B', 'Tri Sumaharti', 399, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 5 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.0708793, 109.3603071),
(93, 'SD NEGERI 27 PONTIANAK TENGGARA', 'Jl. Adisucipto Gg H Munaf. Kec. Pontianak Tenggara', '9306sd-negeri-27-pontianak-tenggara.jpg', 'B', 'Suprtini', 250, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 5 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.049200967, 109.360116),
(94, 'SD NEGERI 31 PONTIANAK TENGGARA', 'Jl. A. Yani Gg. Sepakat II. Kec. Pontianak Tenggara', '2480sd-negeri-31-pontianak-tenggara.jpg', 'B', 'Herwani', 267, '<p>Tidak Ada Data</p>', -0.059685491, 109.349916),
(95, 'SD NEGERI 32 PONTIANAK TENGGARA', 'Jl. Parit H Husin II. Gg. Wana Bhakti II. Kec. Pontianak Tenggara', '8276sd-negeri-32-pontianak-tenggara.jpg', 'C', 'Suhaidah', 537, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.077790169, 109.351808),
(96, 'SD NEGERI 37 PONTIANAK TENGGARA', 'Jl. Adisucipto Gg. 777. Kec. Pontianak Tenggara', '8761sd-negeri-37-pontianak-tenggara.jpg', 'A', 'Sukartini As', 337, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.058030639, 109.3634731),
(97, 'SD BINA MULIA', 'Jl. Abdul Rachman Saleh No. A1. Kec. Pontianak Tenggara', '7265sd-bina-mulia.jpg', 'A', 'Susanti', 502, '<p>28 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 29 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.057301913, 109.3553304),
(98, 'SD GEMBALA BAIK II', 'Jl. A. Yani Komplek Persekolahan Gembala Baik. Kec. Pontianak Tenggara', '6628sd-gembala-baik-ii.jpg', 'A', 'Fronika Saragih', 748, '<p>22 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.067569165, 109.3588188),
(99, 'SD Global Maju Khatulistiwa', 'Jl. Aloevera. Kec. Pontianak Tenggara', '7007sd-global-maju-khatulistiwa.jpg', 'B', 'Lina Pulungan', 105, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.077214279, 109.3400292),
(100, 'SD ISLAM AL AZHAR 21', 'Jl. A. Yani No.?2. Kec. Pontianak Tenggara', '5596sd-islam-al-azhar-21.jpg', 'A', 'Anita Ekasari', 609, '<p>28 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.057805308, 109.3512744),
(101, 'SD ISLAM AL MUKHLISUN', 'Jl. Parit H. Husin II Gg. Masjid Quba. Kec. Pontianak Tenggara', '5226sd-islam-al-mukhlisun.jpg', 'B', 'Yunita Argentini. S.T', 162, '<p>8 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.072763927, 109.3499752),
(102, 'SD PELITA CEMERLANG', 'Jl. Perdana No. 8. Kec. Pontianak Tenggara', '2054sd-pelita-cemerlang.jpg', 'A', 'Nurhayti', 727, '<p>28 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 4 Ruang Ibadah. 16 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.054908423, 109.3452318),
(103, 'SD PERTIWI', 'Jl.Imam Bonjol. Kec. Pontianak Tenggara', '7440sd-pertiwi.jpg', 'A', 'Hartini', 153, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.046585081, 109.3538431),
(104, 'SD PLUS GEMBALA BAIK', 'Jl. A. Yani. Kec. Pontianak Tenggara', '8083sd-plus-gembala-baik.jpg', 'A', 'Sr. Petronela Nitimuk. Cp.. S.pd', 413, '<p>15 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.069389425, 109.3603463),
(105, 'SDIT WISATA HASANAH', 'Jl. Parit H. Husin II Gg. Wisata. Kec. Pontianak Tenggara', '7278sdit-wisata-hasanah.jpg', 'B', 'Jaleha', 145, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.075621796, 109.353117),
(106, 'SDS AL-MADANI', 'Jl. Sei Raya Dalam Komp. Mitra Indah Utama 3. Kec. Pontianak Tenggara', '9699sds-al-madani.jpg', 'A', 'Watik Puji Lestari', 269, '<p>10 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.071919865, 109.359417),
(107, 'SDS ISLAMIYAH', 'Jl. Imam Bonjol No. 88. Kec. Pontianak Tenggara', '5207sds-islamiyah.jpg', 'A', 'Sartinah. S.pd.i', 153, '<p>6 Ruang Kelas. 2 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.048304369, 109.3571604),
(108, 'SD NEGERI 02 PONTIANAK TIMUR', 'Jl. Tanjung Raya I Gg. Sampang. Kec. Pontianak Timur', '9353sd-negeri-02-pontianak-timur.jpg', 'B', 'Hairunisa', 204, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.031116485, 109.3566209),
(109, 'SD NEGERI 03 PONTIANAK TIMUR', 'Jl. Tanjung Raya II. Kec. Pontianak Timur', '1767sd-negeri-03-pontianak-timur.jpg', 'A', 'Susijanah', 604, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.040662465, 109.3630466),
(110, 'SD NEGERI 04 PONTIANAK TIMUR', 'Jl. Panglima Aim. Kec. Pontianak Timur', '9880sd-negeri-04-pontianak-timur.jpg', 'B', 'Mf. Rohdina S. S.pd', 666, '<p>13 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.026164081, 109.3687127),
(111, 'SD NEGERI 05 PONTIANAK TIMUR', 'Jl. Tanjung Raya I. Kec. Pontianak Timur', '9866sd-negeri-05-pontianak-timur.jpg', 'B', 'Marcis', 659, '<p>25 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 17 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.028906313, 109.3519945),
(112, 'SD NEGERI 06 PONTIANAK TIMUR', 'Jl. H. M. Yusuf Karim. Kec. Pontianak Timur', '9838sd-negeri-06-pontianak-timur.jpg', 'A', 'Samunah', 390, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.04215191, 109.3617773),
(113, 'SD NEGERI 07 PONTIANAK TIMUR', 'Jl. Tanjung Raya I Gg Mulia. Kec. Pontianak Timur', '2432sd-negeri-07-pontianak-timur.jpg', 'B', 'Hamidawati', 262, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.02895699, 109.3538282),
(114, 'SD NEGERI 09 PONTIANAK TIMUR', 'Jl. H Rais. Kec. Pontianak Timur', '8071sd-negeri-09-pontianak-timur.jpg', 'B', 'Hasanah', 668, '<p>11 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 3 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.05852145, 109.3737968),
(115, 'SD NEGERI 10 PONTIANAK TIMUR', 'Jl. Tanjung Harapan. Kec. Pontianak Timur', '2723sd-negeri-10-pontianak-timur.jpg', 'B', 'Rahmanisa. S.pd', 487, '<p>7 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.049477375, 109.3664439),
(116, 'SD NEGERI 11 PONTIANAK TIMUR', 'Jl. Tanjung Raya I Gg Famili. Kec. Pontianak Timur', '9366sd-negeri-11-pontianak-timur.jpg', 'A', 'Rita Kusumawati', 338, '<p>7 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.034235936, 109.3539939),
(117, 'SD NEGERI 12 PONTIANAK TIMUR', 'Jl. Panglima A. Rani. Kec. Pontianak Timur', '6731sd-negeri-12-pontianak-timur.jpg', 'A', 'Sofia', 447, '<p>15 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 17 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.032550994, 109.3521421),
(118, 'SD NEGERI 13 PONTIANAK TIMUR', 'Jl. Tritura. Kec. Pontianak Timur', '2624sd-negeri-13-pontianak-timur.jpg', 'B', 'Murjana', 300, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.008683124, 109.3350819),
(119, 'SD NEGERI 14 PONTIANAK TIMUR', 'Jl. Tritura Gg. H Ashari Tanjung Hilir. Kec. Pontianak Timur', '1727sd-negeri-14-pontianak-timur.jpg', 'B', 'Yunidar. S.pd.sd', 155, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.023967288, 109.3556923),
(120, 'SD NEGERI 16 PONTIANAK TIMUR', 'Jl. Tanjung Harapan. Kec. Pontianak Timur', '3556sd-negeri-16-pontianak-timur.jpg', 'B', 'Murdiyana', 365, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.041760696, 109.3594662),
(121, 'SD NEGERI 18 PONTIANAK TIMUR', 'Jl. Tritura Gg Askot. Kec. Pontianak Timur', '6349sd-negeri-18-pontianak-timur.jpg', 'B', 'Nazarudin. S.pd.i', 265, '<p>Tidak Ada Data</p>', -0.00709931, 109.3467494),
(122, 'SD NEGERI 21 PONTIANAK TIMUR', 'Jl. Tritura. Kec. Pontianak Timur', '4479sd-negeri-21-pontianak-timur.jpg', 'B', 'Deliana', 318, '<p>Tidak Ada Data</p>', -0.025520958, 109.3602858),
(123, 'SD NEGERI 23 PONTIANAK TIMUR', 'Jl. Banjar Serasan. Kec. Pontianak Timur', '8172sd-negeri-23-pontianak-timur.jpg', 'B', 'Sarmi', 311, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.037508371, 109.3568954),
(124, 'SD NEGERI 24 PONTIANAK TIMUR', 'Jl. Ya M. Sabran. Kec. Pontianak Timur', '9939sd-negeri-24-pontianak-timur.jpg', 'A', 'Suryani', 445, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.025690135, 109.3743735),
(125, 'SD NEGERI 25 PONTIANAK TIMUR', 'Jl. Tanjung Pulau. Kec. Pontianak Timur', '3991sd-negeri-25-pontianak-timur.jpg', 'A', 'Julkipli', 191, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 7 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.024335726, 109.3481159),
(126, 'SD NEGERI 27 PONTIANAK TIMUR', 'Jl. Abdul Muis Perumnas 3. Kec. Pontianak Timur', '4968sd-negeri-27-pontianak-timur.jpg', 'B', 'Suida. S.pd', 525, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 7 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.030710267, 109.37049),
(127, 'SD NEGERI 28 PONTIANAK TIMUR', 'Jl. Tritura Gg. Angket Dalam. Kec. Pontianak Timur', '3863sd-negeri-28-pontianak-timur.jpg', 'B', 'Sumiyarti. S.pd', 156, '<p>6 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.023393568, 109.3540409),
(128, 'SD NEGERI 29 PONTIANAK TIMUR', 'Jl. Ya M. Sabran Komp. Villa Ria Indah. Kec. Pontianak Timur', '3923sd-negeri-29-pontianak-timur.jpg', 'A', 'Harini', 421, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 6 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.027306452, 109.3756175),
(129, 'SD ISLAM TERPADU HARUNIYAH', 'Jl. Haji Abu Naim. Kec. Pontianak Timur', '5132sd-islam-terpadu-haruniyah.jpg', 'A', 'Ida Laila', 276, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 2 Ruang Tu. 1 Ruang UKS</p>', -0.035549821, 109.3523454),
(130, 'SD PLUS BINA EMPAT LIMA', 'Jl.tanjung Raya II No 45 B. Kec. Pontianak Timur', '2163sd-plus-bina-empat-lima.jpg', 'B', 'Ummi Kalsum Syaus', 435, '<p>15 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 9 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.038539781, 109.3585318),
(131, 'SD NEGERI 01 PONTIANAK UTARA', 'Jl. Dharma Putra. Kec. Pontianak Utara', '5268sd-negeri-01-pontianak-utara.jpg', 'B', 'Kennedi', 363, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 3 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.011700096, 109.3366765),
(132, 'SD NEGERI 02 PONTIANAK UTARA', 'Jl. Gusti Situt Mahmud. Kec. Pontianak Utara', '5001sdn-02-pontianak-utara.jpg', 'A', 'Supiani', 332, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.018621364, 109.3504496),
(133, 'SD NEGERI 05 PONTIANAK UTARA', 'Jl.Parit Pangeran. Kec. Pontianak Utara', '3012sdn-05-pontianak-utara.jpg', 'B', 'Hertien Indaryati', 538, '<p>17 Ruang Kelas. 2 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 2 Ruang Tu. 1 Ruang UKS</p>', -0.001006425, 109.3569694),
(134, 'SD NEGERI 06 PONTIANAK UTARA', 'Jl. Purnajaya II.  Kec. Pontianak Utara', '3663sdn-06-pontianak-utara.jpg', 'A', 'Ani Surhani. S.pd', 283, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 6 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.002739036, 109.3298595),
(135, 'SD NEGERI 07 PONTIANAK UTARA', 'Jl. Parit Makmur.  Kec. Pontianak Utara', '6172sdn-07-pontianak-utara.jpg', 'A', 'Hj. TutiM Muliyawati. S.pd', 581, '<p>14 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.011175079, 109.3425541),
(136, 'SD NEGERI 08 PONTIANAK UTARA', 'Jl. Khatulistiwa. Kec. Pontianak Utara', '1242sdn-08pontianak-utara.jpg', 'B', 'Ngatini', 537, '<p>15 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', 0.007232888, 109.3006556),
(137, 'SD NEGERI 09 PONTIANAK UTARA', 'Jl. Budi Utomo Parit Nenas Dalam. Kec. Pontianak Utara', '3556sdn-09-pontianak-utara.jpg', 'A', 'Sadjiati', 485, '<p>14 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 6 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', 0.000827773, 109.3667813),
(138, 'SD NEGERI 10 PONTIANAK UTARA', 'Jl. Selat Sumba 1. Kec. Pontianak Utara', '6153sdn-10-pontianak-utara.jpg', 'C', 'Erni Yanrini. S.pd', 367, '<p>11 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.015468296, 109.3490329),
(139, 'SD NEGERI 13 PONTIANAK UTARA', 'Jl. Khatulistiwa Gg. Teluk Betung No. II. Kec. Pontianak Utara', '9017sdn-13-pontianak-utara.jpg', 'A', 'Masri. S.pd', 296, '<p>Tidak Ada Data</p>', -0.008615606, 109.3357098),
(140, 'SD NEGERI 14 PONTIANAK UTARA', 'Jl. Parit Makmur Gg Selat Karimun 2. Kec. Pontianak Utara', '2159sdn-14-pontianak-utara.jpg', 'B', 'Yance Jumianis', 236, '<p>6 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.011250193, 109.3435523),
(141, 'SD NEGERI 15 PONTIANAK UTARA', 'Jl. Gusti Situt Mahmud Gg Selat Maluku. Kec. Pontianak Utara', '7452sdn-15-pontianak-utara.jpg', 'A', 'Jubaidi', 326, '<p>11 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.015266483, 109.353392),
(142, 'SD NEGERI 16 PONTIANAK UTARA', 'Jl. Selat Panjang. Kec. Pontianak Utara', '5732sdn-16-pontianak-utara.jpg', 'B', 'Lastinah', 452, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.015091966, 109.3675683),
(143, 'SD NEGERI 17 PONTIANAK UTARA', 'Jl. Gusti Situ Mahmud. Gg. Swasembada. Kec. Pontianak Utara', '7893sdn-17-pontianak-utara.jpg', 'A', 'Ana Listriani. S.pd', 560, '<p>11 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.011807178, 109.36007),
(144, 'SD NEGERI 18 PONTIANAK UTARA', 'Jl. Parit Wan Salim. Kec. Pontianak Utara', '6502sdn-18-pontianak-utara.jpg', 'A', 'Doplir', 528, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 9 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.007077852, 109.3466314),
(145, 'SD NEGERI 19 PONTIANAK UTARA', 'Jl. Selat Panjang Gg Warwatan. Kec. Pontianak Utara', '2874sdn-19pontianak-utara.jpg', 'A', 'Marisan', 431, '<p>16 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 13 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.012621975, 109.3648762),
(146, 'SD NEGERI 21 PONTIANAK UTARA', 'Jl. Parit Pangeran. Kec. Pontianak Utara', '6320sdn-21-pontianak-utara.jpg', 'B', 'Mastura', 305, '<p>10 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.002546614, 109.3558716),
(147, 'SD NEGERI 24 PONTIANAK UTARA', 'Jl. Khatulistiwa. Kec. Pontianak Utara', '6376sdn-24-pontianak-utara.jpg', 'B', 'Sobian', 400, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 8 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.012484243, 109.3364234),
(148, 'SD NEGERI 25 PONTIANAK UTARA', 'Jl. Khatulistiwa Gg. Teluk Pari.  Kec. Pontianak Utara', '9665sdn-25-pontianak-utara.jpg', 'B', 'Hj. Siti Romelah', 319, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 3 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.00537047, 109.3311793),
(149, 'SD NEGERI 27 PONTIANAK UTARA', 'Jl. Sungai Selamat Dalam. Kec. Pontianak Utara', '6162sdn-27pontianak-utara.jpg', 'B', 'Mahrani', 355, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 11 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', 0.002872775, 109.3345912),
(150, 'SD NEGERI 28 PONTIANAK UTARA', 'Jl. Khatulistiwa Gg. Sinar Pelita. Kec. Pontianak Utara', '1041sdn-28-pontianak-utara.jpg', 'A', 'Heryaningsih', 570, '<p>13 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 12 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', 0.002676001, 109.3220852),
(151, 'SD NEGERI 29 PONTIANAK UTARA', 'Jl. Khatulistiwa Gg. Panca Bhakti. Kec. Pontianak Utara', '5509sdn-29pontianak-utara.jpg', 'B', 'H. Abdul Hamid. S.pd.i', 769, '<p>20 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 10 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', 0.007219923, 109.312283),
(152, 'SD NEGERI 30 PONTIANAK UTARA', 'Jl. Dharma Putra Gg. Dharma Putra Iv. Kec. Pontianak Utara', '9987sdn-30-pontianak-utara.jpg', 'B', 'Erni Gustriani', 205, '<p>7 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 3 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', -0.007493652, 109.3395809),
(153, 'SD NEGERI 31 PONTIANAK UTARA', 'Jln. Purnajaya 1. Kec. Pontianak Utara', '6579sdn-31-pontianak-utara.jpg', 'B', 'Paulina Lina. S.pd', 224, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', 0.006232758, 109.3285096),
(154, 'SD NEGERI 32 PONTIANAK UTARA', 'Jl. Gusti Situt Mahmud. Kec. Pontianak Utara', '7991sdn-32-pontianak-utara.jpg', 'A', 'Yuliana. S.pd', 139, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', -0.016271919, 109.3615751),
(155, 'SD NEGERI 33 PONTIANAK UTARA', 'Jl. Kebangkitan Nasional Gg. Bentasan I. Kec. Pontianak Utara', '4812sdn-33-pontianak-utara.jpg', 'B', 'Sumadi', 407, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 1 Ruang Ibadah. 2 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', 0.017842422, 109.3676386),
(156, 'SD NEGERI 35 PONTIANAK UTARA', 'Jl. Selat Panjang. Kec. Pontianak Utara', '2563sdn-35pontianak-utara.jpg', 'A', 'Budiwansyah', 368, '<p>12 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 10 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.013962994, 109.3786126),
(157, 'SD NEGERI 38 PONTIANAK UTARA', 'Jl. Budi Utomo. Kec. Pontianak Utara', '1812sdn-38-pontianak-utara.jpg', 'B', 'Halijah. S.pd', 303, '<p>8 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 8 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', 0.005132444, 109.343723),
(158, 'SD NEGERI 39 PONTIANAK UTARA', 'Jl. Kebangkitan Nasional Gg. Trikora. Kec. Pontianak Utara', '1120sdn-39-pontianak-utara.jpg', 'B', 'Setiawati', 393, '<p>14 Ruang Kelas. 1 Ruang Perpustakaan. 2 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', 0.005520087, 109.3224653),
(159, 'SD NEGERI 40 PONTIANAK UTARA', 'Jl. Selat Sumba 3. Kec. Pontianak Utara', '7573sdn-40-pontianak-utara.jpg', 'C', 'Yeni Purnama', 379, '<p>9 Ruang Kelas. 1 Ruang Perpustakaan. 0 Ruang Guru. 0 Ruang Ibadah. 7 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.011896169, 109.3490401),
(160, 'SD NEGERI 41 PONTIANAK UTARA', 'Jl. Gusti Mahmud Gg. Swasembada II. Kec. Pontianak Utara', '9180sdn-41-pontianak-utara.jpg', 'B', 'Nuryanti. S.pd', 453, '<p>Tidak Ada Data</p>', -0.013018974, 109.3596675),
(161, 'SD NEGERI 42 PONTIANAK UTARA', 'Jl. Flora. Kec. Pontianak Utara', '7932sdn-42-pontianak-utara.jpg', '-', 'Ngatini', 118, '<p>5 Ruang Kelas. 0 Ruang Perpustakaan. 0 Ruang Guru. 0 Ruang Ibadah. 2 Ruang toilet. 0 Ruang Tu. 0 Ruang UKS</p>', 0.010687741, 109.3053473),
(162, 'SD ABDI AGAPE', 'Jl. Gusti Situt Machmud Gg Selat Sumba III. Kec. Pontianak Utara', '6247sd-abdi-agape.jpg', 'C', 'Doni', 323, '<p>12 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.145495901, 109.425626),
(163, 'SD BRUDER KANISIUS', 'Jl.Gusti Situt Mahmud No. 96. Kec. Pontianak Utara', '9886sd-bruder-kanisius.jpg', 'A', 'Martius Tinyu Diaz', 897, '<p>23 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 9 Ruang toilet. 2 Ruang Tu. 1 Ruang UKS</p>', -0.017199967, 109.345977),
(164, 'SD FAJAR HARAPAN', 'Jl. Gusti Situt Mahmud. Kec. Pontianak Utara', '1353sd-fajar-harapan.jpg', 'B', 'H. Masrur. S.pd', 260, '<p>11 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', -0.017436714, 109.3441464),
(165, 'SD ISLAM AL-ASYARIYYAH', 'Jl. Khatulistiwa Gg. Parwasal. Kec. Pontianak Utara', '9492sd-islam-al-asyariyyah.jpg', 'B', 'Muharram', 105, '<p>Tidak Ada Data</p>', -0.01534311, 109.3436267),
(166, 'SD Islam Ashabul Kahfi', 'Jl. Kebangkitan Nasional. Kec. Pontianak Utara', '5756sd-islam-ashabul-kahfi.jpg', 'B', 'Khotbatul Fitriyah Wulan Sari', 125, '<p>6 Ruang Kelas. 0 Ruang Perpustakaan. 1 Ruang Guru. 0 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 0 Ruang UKS</p>', 0.015906944, 109.3244326),
(167, 'SD ISLAM MIFTAHUSSHOLIHIN', 'Jl. Kebangkitan Nasional. Kec. Pontianak Utara', '5267sd-islam-miftahussholihin.jpg', 'A', 'Madsudi', 103, '<p>6 Ruang Kelas. 2 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 4 Ruang toilet. 1 Ruang Tu. 1 Ruang UKS</p>', 0.025906218, 109.3262242),
(168, 'SD KRISTEN MARANATHA', 'Jl. Gusti Situt Mahmud No113. Kec. Pontianak Utara', '8901sd-kristen-maranatha.jpg', 'B', 'Sandrawati Jelyan', 500, '<p>15 Ruang Kelas. 1 Ruang Perpustakaan. 1 Ruang Guru. 1 Ruang Ibadah. 5 Ruang toilet. 0 Ruang Tu. 1 Ruang UKS</p>', -0.01850324, 109.3446732);

-- --------------------------------------------------------

--
-- Struktur dari tabel `tb_user`
--

CREATE TABLE `tb_user` (
  `id_user` int(11) NOT NULL,
  `user` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data untuk tabel `tb_user`
--

INSERT INTO `tb_user` (`id_user`, `user`, `pass`) VALUES
(1, 'admin', 'admin');

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `tb_options`
--
ALTER TABLE `tb_options`
  ADD PRIMARY KEY (`option_name`);

--
-- Indeks untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  ADD PRIMARY KEY (`id_sekolah`);

--
-- Indeks untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  ADD PRIMARY KEY (`id_user`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `tb_sekolah`
--
ALTER TABLE `tb_sekolah`
  MODIFY `id_sekolah` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=170;

--
-- AUTO_INCREMENT untuk tabel `tb_user`
--
ALTER TABLE `tb_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
