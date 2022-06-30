-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Waktu pembuatan: 30 Jun 2022 pada 13.42
-- Versi server: 10.4.22-MariaDB
-- Versi PHP: 7.4.27

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `tu`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `failed_jobs`
--

CREATE TABLE `failed_jobs` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `uuid` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `connection` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `queue` text COLLATE utf8mb4_unicode_ci NOT NULL,
  `payload` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `exception` longtext COLLATE utf8mb4_unicode_ci NOT NULL,
  `failed_at` timestamp NOT NULL DEFAULT current_timestamp()
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `guru`
--

CREATE TABLE `guru` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_jalan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `rt` int(11) DEFAULT NULL,
  `rw` int(11) DEFAULT NULL,
  `nama_dusun` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `desa_kelurahan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat_golongan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `guru`
--

INSERT INTO `guru` (`id`, `nama`, `Jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `nip`, `agama`, `alamat_jalan`, `rt`, `rw`, `nama_dusun`, `desa_kelurahan`, `kecamatan`, `pangkat_golongan`) VALUES
(151, 'Afdil Candri', 'L', 'Kampung Tengah', '1991-09-26', NULL, 'Islam', 'Kampung Tengah', 0, 0, NULL, 'Kampung Tengah', 'Kec. Mungka', NULL),
(152, 'Asmalaini', 'P', 'GARUT', '1964-07-10', '196407101989032007', 'Islam', 'PADANG KARAMBIA', 3, 2, 'padang karambia', 'padang karambia', 'Kec. Payakumbuh Selatan', 'IV/a'),
(153, 'Chintya Risfiana Guta', 'P', 'Limbanang', '1995-01-09', NULL, 'Islam', 'Ekor Parit', NULL, NULL, NULL, 'Limbanang', 'Kec. Suliki', NULL),
(154, 'Efrizal', 'L', 'PEKANBARU', '1962-05-26', '196205261987031003', 'Islam', 'BALAI TALANG', 0, 0, 'BALAI TALANG', 'BALAI TALANG', 'Kec. Guguak', 'IV/a'),
(155, 'Enggreni', 'P', 'KOTAKECIL', '1972-10-19', '197210191999032004', 'Islam', 'KOTO KOCIAK', 0, 0, 'KAMPUNG BARU', 'KOTO KOCIAK', 'Kec. Guguak', 'III/d'),
(156, 'Entisma', 'P', 'LIMA PULUH KOTA', '1970-01-03', '197001032014082002', 'Islam', 'SARILAMAK', 0, 0, 'SARILAMAK', 'SARILAMAK`', 'Kec. Harau', 'III/a'),
(157, 'Fadhilah Firdaus', 'P', 'Payakumbuh', '1998-10-31', NULL, 'Islam', 'Jorong Kapalo Koto', NULL, NULL, NULL, 'Koto Tangah Simalanggang', 'Kec. Payakumbuh', NULL),
(158, 'Fitri Hayati', 'P', 'TANJUNG JATI', '1989-05-30', NULL, 'Islam', 'TALAGO', 0, 0, 'TALAGO', 'VII KOTO TALAGO', 'Kec. Guguak', NULL),
(159, 'Hamda', 'L', 'KUBANG', '1964-01-29', '196401291988031003', 'Islam', 'KUBANG KECAMATAN GUGUAK', 0, 0, 'KUBANG', 'KUBANG', 'Kec. Guguak', 'IV/a'),
(160, 'Helmi', 'P', 'LIMBANANG KAB 50KOTA', '1962-09-19', '196209191988032004', 'Islam', 'EKOR PARIT', 0, 0, 'EKOR PARIT', 'LIMABANANG', 'Kec. Suliki', 'IV/a'),
(161, 'Idola Pratiwi', 'P', 'Bukit Bulat', '1995-04-29', NULL, 'Islam', 'Bukik Bulek', NULL, NULL, NULL, 'Banja Loweh', 'Kec. Bukik Barisan', NULL),
(162, 'Imwartini', 'P', 'SEI. RIMBANG', '1966-04-21', '196604211990032004', 'Islam', 'SEI. RIMBANG', 0, 0, 'SEI. RIMBANG', 'SEI. RIMBANG', 'Kec. Suliki', 'IV/a'),
(163, 'Indrawati', 'P', 'KOTA KECIL', '1970-01-10', '197001101995032001', 'Islam', 'KOTO KOCIAK', 0, 0, 'KOTO KOCIAK', 'KOTO KOCIAK', 'Kec. Guguak', 'IV/a'),
(164, 'Junovriwan', 'L', 'BUKIT TINGGI', '1967-11-10', '196711101997021002', 'Islam', 'GUGUAK', 0, 0, 'GUGUAK', 'GUGUAK VIII KOTO', 'Kec. Guguak', 'III/d'),
(165, 'Lastra', 'P', 'KUBANG TUNGKEK', '1970-11-09', '197011091995032001', 'Islam', 'JL.PANCASILA PANTI', 0, 0, 'AIR TERBIT', 'PANTI', 'Kec. Panti', 'IV/b'),
(166, 'Lidra Septia', 'P', 'Kubu Gadang', '1992-09-12', NULL, 'Islam', 'Dusun Koto Puji', NULL, NULL, 'Dusun Koto Puji', 'Taeh Baruah', 'Kec. Payakumbuh', NULL),
(167, 'Lindawati', 'P', 'KUBANG BERTUNGKAT', '1962-06-16', '196206161991032003', 'Islam', 'KUBANG TUNGKEK', 0, 0, 'KUBANG TUNGKEK', 'GUGUAK VIII KOTO', 'Kec. Guguak', 'IV/a'),
(168, 'Lisda Viora', 'P', 'TIAKAR GUGUK', '1968-03-26', '196803261997022001', 'Islam', 'Jl Tan Malaka Kubang Tungkek', 0, 0, 'KUBANG TUNGKEK', 'GUGUAK VIII KOTO', 'Kec. Guguak', 'IV/b'),
(169, 'Marniliza', 'P', 'KUBANG BERTUNGKAT', '1965-03-23', '196503231989032005', 'Islam', 'Jl TAN MALAKA KUBANG TUNGKEK', 0, 0, 'KUBANG TUNGKEK', 'GUGUAK VIII KOTO', 'Kec. Guguak', 'IV/a'),
(170, 'Marzayenti', 'P', 'PAYAKUMBUH', '1962-07-14', '196207141985012001', 'Islam', 'BUKIT APIT', 0, 0, 'BUKIT APIT', 'SUNGAI TALANG', 'Kec. Guguak', 'IV/a'),
(171, 'Mediani', 'L', 'SEI TALANG', '1965-10-07', '196510071990031005', 'Islam', 'TIAKAR GUGUAK VIII KOTO', 0, 0, 'TIAKAR', 'GUGUAK VIII KOTO', 'Kec. Guguak', 'IV/b'),
(172, 'Mera Karmila', 'P', 'PADANG LAWAS', '1977-10-18', NULL, 'Islam', 'JR.PADANG LAWAS', 0, 0, 'PADANG LAWAS', 'TUJUH KOTO TALAGO', 'Kec. Guguak', NULL),
(173, 'Mila Komalasari', 'P', 'TABEK PANJANG', '1986-09-16', NULL, 'Islam', 'TABEK PANJANG', 0, 0, 'TABEK PANJANG', 'KOTO BARU SIMALANGGANG', 'Kec. Payakumbuh', NULL),
(174, 'Nelvia Yasta', 'P', 'TAEH BARUAH', '1965-10-19', '196510191989032004', 'Islam', 'PARIT DALAM', 0, 0, 'PARIT DALAM', 'TAEH BARUAH', 'Kec. Payakumbuh', 'IV/a'),
(175, 'Nina Zulmiati', 'P', 'DANGUNG-DANGUNG', '1994-05-07', NULL, 'Islam', 'VII KOTO TALAGO', NULL, NULL, NULL, 'VII KOTO TALAGO', 'Kec. Guguak', NULL),
(176, 'Noperi', 'P', 'LAMPUNG SELATAN', '1967-05-13', '196705131990032006', 'Islam', 'TABEK PANJANG', 0, 0, 'TABEK PANJANG', 'KOTO BARU SIMALANGGANG', 'Kec. Payakumbuh', 'IV/a'),
(177, 'Nova Anggreini', 'P', 'Tabek Panjang', '1990-10-16', NULL, 'Islam', 'Tabek Panjang', 0, 0, NULL, 'Tabek Panjang', 'Kec. Payakumbuh', NULL),
(178, 'Novendri', 'L', 'Koto Tangah', '1998-11-05', NULL, 'Islam', 'Parumpung', NULL, NULL, NULL, 'Koto Baru Simalanggang', 'Kec. Payakumbuh', NULL),
(179, 'Nusha Fitra', 'P', 'TIAKAR', '1968-01-01', '196801012007012016', 'Islam', 'KUBANG RUNTUAH', 0, 0, 'KUBANG RUNTUAH', 'GUGUAK', 'Kec. Guguak', 'III/c'),
(180, 'Qurratu Aini', 'P', 'KUBANG', '1972-10-11', '197210111997022001', 'Islam', 'KUBANG', 0, 0, 'KUBANG', 'KUBANG', 'Kec. Guguak', 'IV/a'),
(181, 'Raswiharti', 'P', 'BAYUR MANINJAU', '1963-01-24', '196301241987032002', 'Islam', 'TAN MALAKA KM 13 KUBANG TUNGKEK', 0, 0, 'KUBANG TUNGKEK', 'GUGUAK', 'Kec. Guguak', 'IV/a'),
(182, 'Refni Harneti', 'P', 'BANJAR LAWAS 50 KOTA', '1963-10-15', '196310151987032001', 'Islam', 'TABEK PANJANG', 0, 0, 'TABEK PANJANG', 'KOTO BARU SIMALANGGANG', 'Kec. Payakumbuh', 'IV/a'),
(183, 'Reni', 'P', 'TANJUNG JATI', '1974-09-12', '197409122002122002', 'Islam', 'GUGUAK', 0, 0, 'GUGUAK', 'GUGUAK VIII KOTO', 'Kec. Guguak', 'III/c'),
(184, 'Reni Martin', 'P', 'TANJUNG JATI', '1970-06-29', '197006292005012003', 'Islam', 'TANJUNG JATI', 0, 0, 'TANJUNG JATI', 'VII KOTO TALAGO', 'Kec. Guguak', 'III/c'),
(185, 'Reno Vibra', 'L', 'SIMPANG TONANG', '1986-07-08', NULL, 'Islam', 'SARILAMAK', NULL, NULL, NULL, 'SARILAMAK', 'Kec. Harau', NULL),
(186, 'Riche Puspita Sari', 'P', 'DALAM KOTO', '1992-11-14', NULL, 'Islam', 'TAEH BARUAH', NULL, NULL, 'TAEH BARUAH', 'PADANG PARIK PANJANG', 'Kec. Payakumbuh', NULL),
(187, 'RIKA RAHIM', 'P', 'PARIT DALAM', '1996-03-29', NULL, 'Islam', 'PARIT DALAM', NULL, NULL, NULL, 'TAEH BARUAH', 'Kec. Payakumbuh', NULL),
(188, 'Rita Yudianti', 'P', 'PAYAKUMBUH', '1964-09-19', '196409191989032011', 'Islam', 'Jalan Veteran no 49', 1, 2, 'BUNIAN', 'BUNIAN', 'Kec. Payakumbuh Utara', 'IV/a'),
(189, 'Sakinah Febrina', 'P', 'TANJUNG JATI', '1968-02-29', '196802291994122001', 'Islam', 'TANJUNG JATI', 0, 0, 'TANJUNG JATI', 'TANJUNG JATI', 'Kec. Guguak', 'III/d'),
(190, 'Sandre Ertanto', 'L', 'Dangung-Dangung', '1991-09-09', NULL, 'Islam', 'Balai Mansiro', NULL, NULL, NULL, 'Guguak VIII Koto', 'Kec. Guguak', NULL),
(191, 'Sasmiati', 'P', 'SUNGAI NANING', '1964-01-07', '196401071989032003', 'Islam', 'TAROK', 0, 0, 'TAROK', 'TAROK', 'Kec. Payakumbuh Utara', 'IV/a'),
(192, 'Suzana Siregar', 'P', 'DURI', '1969-04-04', '196904041994032007', 'Islam', 'PADANG ARAY', 0, 0, 'PADANG ARAY', 'GUGUAK', 'Kec. Guguak', 'IV/a'),
(193, 'Vivi Erawati', 'P', 'LIMA PULUH KOTA', '1980-12-28', '198012282010012012', 'Islam', 'Kampung Dalam', 0, 0, 'Kampung Dalam', 'Limbanang', 'Kec. Suliki', 'III/c'),
(194, 'Yelmi Elita', 'P', 'KAB. LIMA PULUH KOTA', '1963-06-18', '196306181988032007', 'Islam', 'ANDIANG', 0, 0, 'PADANG BUNGO', 'ANDIANG', 'Kec. Suliki', 'IV/a'),
(195, 'Yonrizal', 'L', 'BATU TABA AGAM', '1963-01-05', '196301051985121001', 'Islam', 'KOMPLEK SMA NEGERI 1 KEC.HARAU', 0, 0, 'TANJUNG PATI', 'KOTO TUO', 'Kec. Harau', 'IV/b'),
(196, 'Yosa Nilam Sari', 'P', 'Kubang Tungkek', '1991-03-23', NULL, 'Islam', 'Kubang Tungkek', NULL, NULL, NULL, 'Guguak VIII Koto', 'Kec. Guguak', NULL),
(197, 'Yulia Fatra', 'P', 'MUNGKA', '1968-07-02', '196807021992032001', 'Islam', 'MUNGKA TENGAH', 0, 0, 'MUNGKA TENGAH', 'MUNGKA', 'Kec. Mungka', 'IV/a'),
(198, 'Yunita Ria', 'P', 'TALAGO', '1976-06-24', '197606242005012009', 'Islam', 'TALAGO', 0, 0, 'TALAGO', 'TALAGO', 'Kec. Guguak', 'III/c'),
(199, 'Yusmaida, S.pd', 'P', 'Padang Japang', '1962-05-01', '196205011988032001', 'Islam', 'Padang Jopang', 0, 0, 'Padang Jopang', '7 Koto Talago', 'Kec. Guguak', 'IV/b'),
(200, 'Yuspida', 'P', 'BALAI TALANG', '1963-11-01', '196311011989032005', 'Islam', 'BALAI TALANG', 0, 0, 'PINCURAN TUJUAH', 'BALAI TALANG', 'Kec. Guguak', 'IV/a');

-- --------------------------------------------------------

--
-- Struktur dari tabel `kelas`
--

CREATE TABLE `kelas` (
  `id` int(11) NOT NULL,
  `nama_kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `migrations`
--

CREATE TABLE `migrations` (
  `id` int(10) UNSIGNED NOT NULL,
  `migration` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `batch` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `migrations`
--

INSERT INTO `migrations` (`id`, `migration`, `batch`) VALUES
(1, '2014_10_12_100000_create_password_resets_table', 1),
(2, '2019_08_19_000000_create_failed_jobs_table', 1),
(3, '2019_12_14_000001_create_personal_access_tokens_table', 1),
(4, '2022_06_25_100238_tahun_ajaran', 1),
(5, '2022_06_25_100525_tendik', 1),
(6, '2022_06_25_100535_siswa', 1),
(7, '2022_06_25_100542_guru', 1),
(8, '2022_06_26_062211_user', 1),
(9, '2022_06_26_081647_kelas', 1);

-- --------------------------------------------------------

--
-- Struktur dari tabel `password_resets`
--

CREATE TABLE `password_resets` (
  `email` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `created_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `personal_access_tokens`
--

CREATE TABLE `personal_access_tokens` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `tokenable_type` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tokenable_id` bigint(20) UNSIGNED NOT NULL,
  `name` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL,
  `token` varchar(64) COLLATE utf8mb4_unicode_ci NOT NULL,
  `abilities` text COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `last_used_at` timestamp NULL DEFAULT NULL,
  `created_at` timestamp NULL DEFAULT NULL,
  `updated_at` timestamp NULL DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `siswa`
--

CREATE TABLE `siswa` (
  `id` int(11) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nisn` varchar(20) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `agama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ayah` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `nama_ibu` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kelas` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `siswa`
--

INSERT INTO `siswa` (`id`, `nama`, `Jenis_kelamin`, `nisn`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `nama_ayah`, `nama_ibu`, `kelas`) VALUES
(1, 'ABDI PERWIRA', 'L', '0042258288', 'Tabek Panjang', '2004-03-30', 'Islam', 'Kubang Tungkek', 'Perizal', 'Ratnawilis', 'X IPS 5'),
(2, 'Abdul Akifin', 'L', '0035873316', 'Baruah Gunuang', '2003-04-21', 'Islam', 'Baruah Gunuang', 'Ifnaldi', 'Welhaira', 'XII IPS 4'),
(3, 'ABDUL AZHIM', 'L', '0052907371', 'PAYAKUMBUH', '2005-07-05', 'Islam', 'GUGUAK', 'Hendrizal', 'RATNAWILIS', 'X IPA 2'),
(4, 'Abdul Aziz Alhad', 'L', '0044056923', 'Balai Talang', '2004-04-25', 'Islam', 'Balai Talang', 'Kemala Hadi', 'Mardiati', 'XII IPA 2'),
(5, 'Abelia Nidra', 'P', '0054840244', 'Payakumbuh', '2005-09-28', 'Islam', 'Kubang', 'Hariman Nidra', 'Mai Asnim', 'XI IPA 1'),
(6, 'ABRAR CHAIRAR RUSDIANPUTRA', 'L', '0061687676', 'DANGUNG-DANGUNG', '2006-01-31', 'Islam', 'KUBANG TUNGKEK', 'RUSDEFRI', 'DIANA TRI WINARSIH', 'X IPA 1'),
(7, 'Adam Azimardi', 'L', '0047924690', 'Guguk Nunang', '2004-06-04', 'Islam', 'Guguk Nunang', 'Mardinus', 'Desi Melianti', 'X IPS 1'),
(8, 'ADELIA CANOVA', 'P', '0058838063', 'KOTO BARU', '2005-11-15', 'Islam', 'KOTO BARU MUNGKA', 'Yudi Arika', 'DIA HANDAYANI', 'X IPS 1'),
(9, 'ADHA FEBRIAN RAUF', 'L', '0035896427', 'TABEK PANJANG', '2003-02-11', 'Islam', 'TIAKAR', 'AFALON', 'YETTI AM', 'XII IPS 1'),
(10, 'ADINDA ARMININGTYAS', 'P', '0018675345', 'BEKASI', '2001-12-24', 'Islam', 'KETINGGIAN', 'ARMINANDA', 'ANNIE SURYANINGTYAS', 'XII IPS 1'),
(11, 'ADINDA RAHMATUL KHAIRANI', 'P', '0046593744', 'KUBANG', '2004-10-25', 'Islam', 'KOTO BARU', 'Dedi Kurnia', 'SEPTI KHAIRIAH', 'XI IPS 3'),
(12, 'Aditiya Putra Pratama', 'L', '0036157337', 'Jakarta', '2003-12-28', 'Islam', 'Kubang Tungkek', 'Romli', 'Dewi Novita', 'XI IPS 5'),
(13, 'ADITYA FAHTUR ROHMAN', 'L', '0046191277', 'PAYAKUMBUH', '2004-03-13', 'Islam', 'SIMPANG ABU', 'MAHAWARMAN', 'DEWIHARTI', 'XI IPA 3'),
(14, 'Adji Sun Pangestu', 'L', '0051094734', 'Tegal', '2005-08-31', 'Islam', 'Guguak', 'Hanis Firmansyah', 'Zulnatri', 'XI IPA 4'),
(15, 'Adria Cantika Salsabila', 'P', '0059509396', 'Dangung-Dangung', '2005-04-28', 'Islam', 'Tan Malaka Balai Talang', 'Adril', 'Ria Virgorita', 'XI IPA 1'),
(16, 'ADRIAN JONES', 'L', '0010783361', 'KOTO TANGAH SIMALANGGANG', '2001-03-09', 'Islam', 'PADANG HARAPAN', 'KASYONDRI KASMAN', 'NESTI WASIAH', 'XII IPS 3'),
(17, 'ADRIAN JULIANDA PUTRA', 'L', '0041919125', 'Ampang Gadang', '2004-07-14', 'Islam', 'Dangung-Dangung', 'ADRIANTO', 'LILI HARTATI', 'XII IPS 4'),
(18, 'ADRIANO ALMUHADA', 'L', '0052413978', 'PAYAKUMBUH', '2005-04-06', 'Islam', 'LAKUNG SIMPANG SUGIRAN', 'ISWARIS CHAN', 'MARTAWERI', 'XI IPS 3'),
(19, 'AFIFAH', 'P', '0051993664', 'Ampang Gadang', '2005-01-17', 'Islam', 'Kubang Tungkek', 'FEBRIANDA', 'MARDIANIS', 'XI IPS 4'),
(20, 'AFRA UMATUL AFIPAH', 'P', '0052680856', 'KURANJI', '2005-07-04', 'Islam', 'KURANJI', 'MAISON', 'ERNITAL', 'X IPS 4'),
(21, 'Afriadi Sastra', 'L', '0055075948', 'Koto Baru Simalanggang', '2005-06-13', 'Islam', 'Koto Baru', 'Usri', 'Ice Tisnawati', 'XI IPA 3'),
(22, 'Afrian Hary Novreza', 'L', '0036033532', 'Sopan Tanah', '2003-06-21', 'Islam', 'Jorong Soan Tanah', 'Nasrigon', 'Helti Yusnita', 'XI IPS 1'),
(23, 'Agel Efendi', 'L', '0041268910', 'Mungka', '2004-08-18', 'Islam', 'Simpang Tiga Kenanga', 'Endi Afrizal', 'Eflita', 'XI IPS 3'),
(24, 'AGUNG HIDAYAT', 'L', '0029332052', 'TALANG MAUR', '2002-08-18', 'Islam', 'MAUR', 'ANDRI', 'FITRI ENILLA', 'XII IPA 4'),
(25, 'AHDA ZAINATUN NISA', 'P', '0055123425', 'Taeh Baruah', '2005-05-29', 'Islam', 'Kubu Gadang', 'Yontri Putra', 'Fasnoni', 'XI IPA 2'),
(26, 'Ahmad Raihan As-Shidqi', 'L', '0069017315', 'Kubang', '2006-03-09', 'Islam', 'Kubang', 'Muhammad Abrar', 'Qurratu Aini', 'X IPA 3'),
(27, 'AHMAD RIZKY', 'L', '0059768894', 'KOTO TUO', '2005-05-13', 'Islam', 'KOTO TUO MUNGKA', 'Armen', 'DENA ELITA', 'X IPS 5'),
(28, 'Ahmad Rofi', 'L', '0054742691', 'Padang Batang', '2005-03-01', 'Islam', 'Padang Batang Jor. Sungai Antuan', 'Ezi Candra', 'Noni Fitria', 'X IPS 1'),
(29, 'Ahmad Syukri', 'L', '0041919147', 'Payakumbuh', '2004-04-09', 'Islam', 'Balai Talang', 'Iswandi', 'Yuspida', 'XII IPA 1'),
(30, 'AHMAD THAHER', 'L', '0055024528', 'KURANJI', '2005-06-08', 'Islam', 'TIAKAR', 'NOVIAN PUTRA', 'YULIA IZATI', 'X IPS 1'),
(31, 'Ahmad Yaafi', 'L', '0037736610', 'Dangung-Dangung', '2003-08-20', 'Islam', 'Ketinggian', 'Erizon', 'Eliza Zelmi', 'XII IPS 5'),
(32, 'AINI FEBRIYANI ZEA', 'P', '0051991853', 'SULIKI', '2005-02-20', 'Islam', 'SULIKI', 'APRIYANTO', 'ZELNA', 'XI IPS 5'),
(33, 'AINUL ATMI', 'P', '0013293352', 'TIAKAR GUGUK', '2001-02-10', 'Islam', 'TIAKAR', 'SUHARMI', 'SUHARMI', 'XII IPS 1'),
(34, 'AISYAH', 'P', '0056323023', 'TABEK PANJANG', '2005-12-23', 'Islam', 'JORONG GUGUAK', 'ESPEDRI MUSLIM', 'ERLINA', 'X IPA 3'),
(35, 'AISYAH', 'P', '0041895333', 'KURANJI', '2004-04-04', 'Islam', 'KURANJI', 'MISWARDI', 'SAFYENI', 'XI IPS 5'),
(36, 'Aisyah Alviana Sabilla', 'P', '0044288438', 'Bukittinggi', '2004-06-02', 'Islam', 'Koto Tangah', 'Feriyaldi', 'Mariana Rismawati', 'XII IPS 2'),
(37, 'Aisyah Amini', 'P', '0035873303', 'Baruah Gunuang', '2003-02-07', 'Islam', 'Pauh', 'Sulai', 'Almaida', 'XII IPA 4'),
(38, 'AISYAH FITRI', 'P', '0064242500', 'MUNGKA', '2006-03-01', 'Islam', 'Balai Tampuak Pinang', '', 'NILMAWATI', 'X IPA 1'),
(39, 'Aisyah Meidena Rusdianputri', 'P', '0041919124', 'Dangung-Dangung', '2004-05-19', 'Islam', 'Kubang Tungkek', 'RUSDEFRI', 'Diana Tri Winarsih', 'XI IPA 3'),
(40, 'AISYAH RENDINI', 'P', '0052693264', 'KUBU GADANG', '2005-04-09', 'Islam', 'Koto Tuo Mungka', 'Dedi Indra Nirmal', 'RITA WATI', 'XI IPS 3'),
(41, 'AKBAR RAMADHAN', 'L', '0035930030', 'MUNGKA', '2003-11-16', 'Islam', 'SOPAN', 'YOSRIANTO RAMLI', 'HASMINEL WINARTI', 'XII IPA 4'),
(42, 'Akhlakul Kharisma', 'P', '0045849818', 'Kampung Tangah', '2004-05-05', 'Islam', 'Kampuang Tangah', 'EgA Welfi', 'Efnida', 'XI IPA 2'),
(43, 'Al Azizi', 'L', '0035979503', 'Limbanang', '2003-10-22', 'Islam', 'Limbanang', 'Asril', 'Silvinia', 'XII IPS 3'),
(44, 'ALDA LAURA MILANI', 'P', '0046057120', 'Simpang Sugiran', '2004-02-02', 'Islam', 'Simpang Sugiran', 'YAI NURHADI', 'EZA LIDIAWATI', 'XI IPA 3'),
(45, 'ALFIN GILANG RAMADHAN', 'L', '0009915270', 'DANGUNG-DANGUNG', '2000-12-07', 'Islam', 'KETINGGIAN', 'RISWANDI', 'LILIK ISYULIATI', 'XII IPS 4'),
(46, 'ALGI FAHRI', 'L', '0026734828', 'Tabek Panjang', '2002-05-13', 'Islam', 'Belubus', 'Undrianto', 'Y a r n i', 'XII IPS 5'),
(47, 'Ali Vandegar', 'L', '0043049446', 'Ampang Gadang', '2004-12-21', 'Islam', 'Guguak', 'Chiang Nofiar', 'Reni', 'XI IPS 3'),
(48, 'ALIN MARLATINSANI', 'P', '0008849248', 'Kotabaru', '2005-06-30', 'Islam', 'Jln.Tan Malaka', 'ZULFIKAR', 'SUSILAWATI', 'X IPA 2'),
(49, 'ALISA AFRIANTI', 'P', '0063680751', 'Kubu Gadang', '2006-04-27', 'Islam', 'Jln Raya Taeh Mungka', 'NETRIAL', 'DESWITA', 'X IPA 2'),
(50, 'Aliya Yus Rianti', 'P', '0035895975', 'Jakarta', '2003-08-21', 'Islam', 'Kaludan', 'Yusrizal', 'Susi Rianti', 'XII IPS 1'),
(51, 'Almadiah', 'P', '0037348150', 'Sipingai', '2003-06-18', 'Islam', 'Sipingai', 'Irwan', 'Rita Yulinda', 'XII IPS 2'),
(52, 'Althaf Shihifdasani', 'L', '0055489806', 'Padang Japang', '2005-05-19', 'Islam', 'Padang Jopang', 'Armon', 'Latifah Hanum', 'XI IPA 3'),
(53, 'Alvi Junisa Putri', 'P', '0039008860', 'Limbanang', '2003-06-20', 'Islam', 'Belubus', 'Erizon', 'Erlindawati', 'XII IPS 3'),
(54, 'ALVIN ERIWANTO', 'L', '0047219107', 'KOTO BARU', '2004-04-25', 'Islam', 'MUNGKA TENGAH', 'ERI WANTO', 'TUTI TIA ROZA', 'X IPS 1'),
(55, 'ALYA PUTRI RAMADHANI', 'P', '0046214261', 'Kubu Gadang', '2004-10-20', 'Islam', 'Kubu Gadang', 'Bustami', 'Yusmurni', 'X IPS 4'),
(56, 'ALYUMNA HANIFA', 'P', '0065703306', 'PAYAKUMBUH', '2006-08-17', 'Islam', 'GUGUAK', 'Harizal', 'MAINIMUSRIDAR', 'X IPS 2'),
(57, 'AMANDA FEBRIANII PUTRI', 'P', '0059288972', 'KOTO TANGAH SIMALANG', '2005-11-26', 'Islam', 'Koto Baru Simalanggang', 'RIRI EKA PUTRA', 'NURFEMI', 'X IPA 2'),
(58, 'AMANDA MAY PUTRI', 'P', '0051592220', 'MUNGKA', '2005-07-13', 'Islam', 'DUSUN NAN DUO', 'Afrinaldi', 'YORA DESMAWATI', 'X IPS 3'),
(59, 'AMANDA SRI REZEKI', 'P', '0055678881', 'PIOBANG', '2005-07-03', 'Islam', 'BUKIT APIT', 'Saiful Lendra', 'DESYORITA', 'X IPA 1'),
(60, 'AMATUL SAFARLAN', 'L', '0072334459', 'BUKITTINGGI', '2007-03-15', 'Islam', 'Koto Baru Simalanggang', 'AMRIZAL', 'ELFIUNIS', 'X IPA 4'),
(61, 'AMELIA DEFINZI', 'P', '0058407947', 'Ampang Gadang', '2005-03-01', 'Islam', 'Kubang Tungkek', 'M. Ramzi', 'Depi Lismarni', 'X IPS 4'),
(62, 'AMELIA PUTRI', 'P', '0045976996', 'KURANJI', '2004-07-26', 'Islam', 'JORONG KURANJI', 'RISWANDI', 'EFA ERIANTI', 'X IPA 1'),
(63, 'Aminah Mukarromah', 'P', '0053649519', 'Guguk', '2005-01-28', 'Islam', 'Guguak', 'Rosmaizal', 'Nusi Sari Wulan', 'XI IPS 2'),
(64, 'Aminul Akbar Al Hafiz', 'L', '0069474799', 'Dalam Koto', '2006-01-21', 'Islam', 'Dalam Koto', 'Syukrizal', 'Syahno Refianis', 'X IPA 3'),
(65, 'ANANTA WULANDARI', 'P', '0056626767', 'MUNGKA', '2005-04-06', 'Islam', 'JORONG MUNGKA TENGAH', 'ZAINAL ADLI', 'AYUNASPIK', 'X IPS 3'),
(66, 'ANASTASYA IRSYAD', 'P', '0051155100', 'Duri', '2005-12-23', 'Islam', 'Jorong Tiakar', 'Abdul Hamid Irsyad', 'Nelrida', 'X IPA 1'),
(67, 'ANATASYA FLOREN CITA', 'P', '0042118372', 'MUNGKA', '2004-01-15', 'Islam', 'RAMBEK', 'IDRAL', 'ERMA YENIS', 'X IPA 3'),
(68, 'Andika Zahadi Naufal', 'L', '0045737307', 'Mungka', '2004-01-28', 'Islam', 'Kampuang Tangah', 'Hutriva', 'Gustiting Sri Wahyu', 'XI IPS 4'),
(69, 'ANDILLA OVERAWATI', 'P', '0042244617', 'Kubang Tungkek', '2004-07-24', 'Islam', 'Kubang Tungkek', 'Emdenis', 'Susfa Yenti', 'XI IPS 4'),
(70, 'ANESYA MUSYITA', 'P', '0049816666', 'KURANJI', '2004-06-21', 'Islam', 'Manganti', 'JUHIR MUHAMMAD', 'YANTI ARTINI', 'X IPS 4'),
(71, 'Angel Leo Sentosa', 'L', '0001593865', 'Jakarta', '2000-08-24', 'Islam', 'TIAKAR', 'TEGUH SENTOSA', 'SURANI', 'XII IPS 4'),
(72, 'Anggi Agustia Mawar', 'P', '0045758200', 'Kampung Tangah', '2004-08-11', 'Islam', 'Kubu Nan Duo', 'Seprajoni', 'Petri Budiarta', 'XI IPS 3'),
(73, 'ANGGIA SRI LESTARI', 'P', '0056591381', 'PAYAKUMBUH', '2005-04-05', 'Islam', 'BANDAR RAIT', 'Maizar', 'JUMALIA RUSNENI', 'X IPA 1'),
(74, 'Anggun', 'P', '0052413974', 'Simpang Sugiran', '2005-02-26', 'Islam', 'Lokuang', 'Endi Josman', 'Novia Ega Yanti', 'XI IPA 3'),
(75, 'ANGGUN MUKHLISHAH', 'P', '0052551361', 'PADANG', '2005-09-28', 'Islam', 'TARATAK', 'FERRI SIPSON', 'RINI NOFRIYENTI', 'XI IPA 3'),
(76, 'Ani Febrian Hasanah', 'P', '0041895304', 'Kubang', '2004-02-25', 'Islam', 'Kubang', 'zulfardi', 'TITI EVENTI', 'XII IPA 1'),
(77, 'ANISA DWI PUTRI', 'P', '0056377359', 'PAYAKUMBUH', '2005-06-26', 'Islam', 'JORONG TIAKAR', 'IRWAN', 'SRI WAHYU INSANI', 'XI IPS 5'),
(78, 'ANISA MARDHATILA', 'P', '0035919506', 'BUKITTINGGI', '2003-07-29', 'Islam', 'TALANG', 'SUPRISOL', 'ENDANG SULASTRI', 'XII IPA 3'),
(79, 'Anisatul Muqoromah', 'P', '0039402510', 'Taratak Suliki', '2003-12-22', 'Islam', 'Siamang Bunyi', 'Zul Hendri', 'Desmawati', 'XI IPA 3'),
(80, 'ANNISA FITRI MEYSINOLDI', 'P', '0034694203', 'PADANG JAPANG', '2002-05-28', 'Islam', 'LIMBANANG BARUAH', 'SAFRINOLDI', 'SUSI MARLINDA', 'XII IPS 5'),
(81, 'ANNISA KHALIFATUL SAADAH', 'P', '0031444997', 'TIAKAR', '2003-08-27', 'Islam', 'Belubus', 'Aman', 'FARIANTI', 'XII IPS 1'),
(82, 'ANNISA MAIRANDA', 'P', '0035896099', 'Ampang Gadang', '2003-05-03', 'Islam', 'Kubang Tungkek', 'FEBRIANDA', 'MARDIANIS', 'XII IPA 2'),
(83, 'ANNISA MUTHIA', 'P', '0035896117', 'Ampang Gadang', '2003-11-29', 'Islam', 'Pincuran Botuang', 'AGUSTIAR', 'YUSVIANIS', 'X IPS 4'),
(84, 'ANNISA PUTRI RIANDINI', 'P', '0042035180', 'MUNGKA', '2004-03-24', 'Islam', 'MUNGKA TENGAH', 'ELFIANDI', 'RIKA MARTA YENI', 'XII IPA 1'),
(85, 'Annisa Rahmatul Haifa', 'P', '0056899646', 'Bukittinggi', '2005-02-25', 'Islam', 'Aia Angek', 'Setwi Haifa', 'Nurazmah', 'XI IPA 2'),
(86, 'AQSHA DWI YAREF', 'L', '0046199988', 'Kubu Gadang', '2004-08-30', 'Islam', 'Kubu Gadang', 'REFLIS SANDRA', 'IRDA YANTI BAHARI', 'XI IPA 2'),
(87, 'ARBI PRASETYA', 'L', '0035896144', 'Kubang Tungkek', '2003-04-23', 'Islam', 'Kubang Tungkek', 'Irwadi', 'Juminah', 'XII IPA 3'),
(88, 'ARDO ZUKRI', 'L', '0026076074', 'PARIT DALAM', '2003-01-28', 'Islam', 'KOTO KOCIAK', 'ISWANDI', 'MARTIANIS', 'X IPS 1'),
(89, 'Argi Maulana Syach', 'L', '0026735068', 'Kuranji', '2002-12-11', 'Islam', 'Kuranji', 'Afdal Yasni', 'Retti', 'X IPS 3'),
(90, 'ARI PURNAMA AJI', 'L', '0033292641', 'Kuranji', '2003-01-15', 'Islam', 'Belubus', 'Refinaldi', 'Yenti Fitrina', 'XII IPS 2'),
(91, 'ARIF JULI RIYANTO', 'L', '0036157328', 'SULIKI', '2003-07-07', 'Islam', 'KUBANG TUNGKEK', 'NOVRIANTO', 'ZURANI', 'XII IPS 3'),
(92, 'ARIFAH ZAKIRAH', 'P', '0035873373', 'KURANJI', '2003-05-01', 'Islam', 'KURANJI', 'DARMIZON', 'ZURYATI', 'XII IPS 4'),
(93, 'Arinda Berlian', 'P', '0042798779', 'Taeh Baruah', '2004-07-17', 'Islam', 'Kubu Gadang', 'Rusla Fendi', 'Refnita', 'XII IPA 3'),
(94, 'ARINI ULFA HIDAYATI', 'P', '0047248274', 'KAMPUNG TANGAH', '2004-08-02', 'Islam', 'MUNGKA', 'YANNALDI', 'FITRIA', 'XI IPA 1'),
(95, 'Arista Widya', 'P', '0042035617', 'Ampang Gadang', '2004-01-28', 'Islam', 'Padang Jopang', 'Yanuar Tanjung', 'Sufrida', 'XII IPA 1'),
(96, 'ARLES MAULANA ARDINA PUTRA', 'L', '0057576281', 'KURANJI', '2005-10-06', 'Islam', 'TIAKAR', 'ARDIWARMAN', 'LUSI ELFINA', 'X IPS 3'),
(97, 'ARLINA PUTRI', 'P', '0068706262', 'KOTO BARU SMLG', '2006-01-26', 'Islam', 'TABEK PANJANG', 'Andrifal', 'ENGPI HERLINA', 'X IPA 4'),
(98, 'ARTIKA DIFANA', 'P', '0026096580', 'SIMPANG ABU', '2002-09-13', 'Islam', 'SIMPANG ABU', 'ALI', 'ROSNETI', 'XI IPS 1'),
(99, 'Asih Azki Alina', 'P', '0053901364', 'Koto Tangah Simalanggang', '2005-02-26', 'Islam', 'Jorong Tabek Panjang', 'Tarlis', 'Mardalina', 'XI IPS 1'),
(100, 'Asnur Fajri', 'L', '0034950709', 'Bogor', '2003-01-01', 'Islam', 'Tiakar', 'Abrar Ansori', 'Mulyati', 'XII IPA 1'),
(101, 'ASRI CHONITAH', 'P', '0042118378', 'PADANG PINANG', '2004-03-03', 'Islam', 'PADANG PINANG', 'AFRIZAL', 'NASRA', 'XII IPA 1'),
(102, 'Asshifa Aini', 'P', '0056931170', 'Pekanbaru', '2005-07-31', 'Islam', 'Jopang Manganti', 'Harmen Putra', 'Esi Eldia', 'XI IPA 2'),
(103, 'Asy-Syifa Maisaroh', 'P', '0057255057', 'Tabek Panjang', '2005-04-30', 'Islam', 'Guguak', 'Iman Safii', 'Titik Marisa Yode', 'XI IPA 4'),
(104, 'ASYSYFA KHAIRUNNISA', 'P', '0064892484', 'BUKITTINGGI', '2006-09-16', 'Islam', 'KUBANG ', 'Zulfitri', 'LIZA HAMDAYANI', 'X IPA 4'),
(105, 'ATHIFAH MARDHOTILLAH', 'P', '0052692680', 'KOTO BARU', '2005-04-23', 'Islam', 'KOTO BARU MUNGKA', 'Rifwaldi', 'SEPTIMORA', 'X IPA 3'),
(106, 'Aufa Adiba Putri', 'P', '0045671867', 'Tabek Panjang', '2004-04-03', 'Islam', 'Tiakar', 'Wendri Syam', 'Esi Erika', 'XI IPS 1'),
(107, 'AULIA CANTIKA YAHYA', 'P', '0056039948', 'SIMPANG SUGIRAN', '2005-04-11', 'Islam', 'SIMPANG SUGIRAN', 'Rori Ardi Candra', 'EPIT NAWATI', 'X IPA 2'),
(108, 'AULIA MARSHA', 'P', '0052413975', 'BATAM', '2005-03-15', 'Islam', 'LAKUNG SIMPANG SUGIRAN', 'MUHTADI', 'FITRI YANSIH', 'XI IPS 2'),
(109, 'Aulia Tifani', 'P', '0035896118', 'Payakumbuh', '2003-12-01', 'Islam', 'Balai Mansiro', 'Armen', 'Elfi Susanti', 'XII IPS 5'),
(110, 'AULIA UTAMI', 'P', '0025993408', 'TIAKAR', '2003-02-15', 'Islam', 'TIAKAR', 'ADRINAL', 'FATMAWATI', 'XII IPS 4'),
(111, 'AULISTIA AZ ZAHRA', 'P', '0026090744', 'MUNGKA', '2002-08-08', 'Islam', 'JORONG MUNGKA TENGAH', 'MASRIZAL', 'IFNIRIAT', 'XI IPS 2'),
(112, 'Aura Asyifa', 'P', '0051993675', 'Dangung-dangung', '2005-06-29', 'Islam', 'Balai Mansiro', 'Deni Indra', 'Risdaniar', 'XI IPA 1'),
(113, 'AZ-ZAHRA MARCANIA', 'P', '0061365250', 'DANGUNG-DANGUNG', '2006-03-05', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'ADRIZAL', 'SRI NOVA', 'X IPA 3'),
(114, 'Azhifa Aprilioni', 'P', '0055595724', 'Payakumbuh', '2005-04-27', 'Islam', 'Kubang Tungkek', 'Ronny Putra', 'Lusi Susanti', 'XI IPA 4'),
(115, 'AZILFA RIADATUL AISYI', 'P', '0067684320', 'KOTO BARU', '2006-04-14', 'Islam', 'JOPANG MANGANTI', 'Nofrianto', 'ROSSI YULIA DELFITRI', 'X IPA 1'),
(116, 'Azim Helfi', 'L', '0046057888', 'Taratak', '2004-02-02', 'Islam', 'Taratak', 'Heldi', 'Fitria. M', 'XI IPS 1'),
(117, 'AZIZ KHOIRULLAH', 'L', '0057532320', 'BATAM', '2005-12-20', 'Islam', 'KUBANG TUNGKEK', 'Roni', 'LIDIA WIRNA WATI', 'X IPS 4'),
(118, 'Azizah', 'P', '0017433792', 'GUGUK NUNANG', '2001-09-07', 'Islam', 'Guguak Nunang', 'NOVIKA', 'NENG HAYATI', 'XII IPS 2'),
(119, 'AZIZAH', 'P', '0035873372', 'KURANJI', '2003-04-23', 'Islam', 'KURANJI', 'SAFRIAL', 'INIM NENDRA WATI', 'XII IPS 1'),
(120, 'Azizah Meihana', 'P', '0035919647', 'Jopang', '2003-05-02', 'Islam', 'Jopang', 'Nofel Hendri', 'Yeni Sesmita', 'XII IPS 3'),
(121, 'Azizul Hakim', 'L', '0059902402', 'Talang Anau', '2005-09-27', 'Islam', 'Luak Begak', 'Akmal', 'Mimi Lianti', 'X IPA 4'),
(122, 'Azzahra Putri Zona', 'P', '0056310639', 'Mungka', '2004-08-28', 'Islam', 'Koto Baru Mungka', 'Edzon', 'Imna Delwita', 'XII IPS 4'),
(123, 'BABY SABRIANANDA RIZALIF', 'P', '0062616037', 'TABEK PANJANG', '2006-03-30', 'Islam', 'GUGUAK', 'Alif Juang Putra', 'ERIZAWATI', 'X IPA 3'),
(124, 'Balqis Nabilah', 'P', '0051993676', 'Payakumbuh', '2005-07-06', 'Islam', 'Balai Mansiro', 'Syamsirwan', 'Rianti', 'XI IPA 3'),
(125, 'Bima Ardiansyah', 'L', '0036055524', 'Padang Loweh', '2003-10-03', 'Islam', 'Simpang Tiga Kenanga', 'Jasiafrianto', 'Susi Yulianti', 'XI IPA 1'),
(126, 'BIMA FEBRIAN', 'L', '0046172432', 'MUNGKA', '2004-07-02', 'Islam', 'Padang Mungka', 'EKI PUTRA', 'WIWI ANGGRAINI', 'X IPS 1'),
(127, 'BUNGA FATMALA', 'P', '0057112438', 'TIAKAR', '2005-02-11', 'Islam', 'TIAKAR', 'ELPISEN', 'DANTI', 'X IPS 5'),
(128, 'Bunga Frenandes', 'P', '0045248090', 'Kaludan', '2004-07-13', 'Islam', 'Kaludan', 'Nandi Boy', 'Desy Oktavia', 'XI IPA 4'),
(129, 'Bunga Kasih Adriani', 'P', '0051105897', 'Ampang Gadang', '2005-12-11', 'Islam', 'Kubang Tungkek', 'Adrianto', 'Nini Andriana', 'X IPS 5'),
(130, 'Bunga Oktaria Melansa', 'P', '0043564612', 'Kampung Tengah', '2004-10-12', 'Islam', 'Kampung Tengah', 'Isra Yoni', 'Nelfida', 'XI IPA 3'),
(131, 'BUNGA RAHMADILA', 'P', '0052776312', 'MUNGKA', '2005-05-06', 'Islam', 'SIMPANG TIGA KENANGA', 'Yundra', 'SOFIA SUSANTI', 'X IPA 3'),
(132, 'Bunga Salsabila', 'P', '0046198654', 'Simpang Goduang', '2004-02-16', 'Islam', 'Lobuah Tunggang', 'Izurianis', 'Vivi Susanti', 'XI IPA 4'),
(133, 'CACA FITRISIA', 'P', '0058931809', 'BUKIT APIT', '2005-01-04', 'Islam', 'TALAO BUKIT APIT', 'FETRI WANDI', 'ECI TANIA', 'X IPS 1'),
(134, 'Cahyani Marsya Fadila', 'P', '0054583806', 'Padang Japang', '2005-01-04', 'Islam', 'Padang Jopang', 'M. Fdali', 'Wely Afria', 'XI IPA 2'),
(135, 'Caverly Azahra', 'P', '0058045617', 'Dalam Koto', '2005-03-10', 'Islam', 'Dalam Koto', 'Pinto Satria', 'Mesra Gusyeni', 'XI IPA 2'),
(136, 'CELVIN LEONARDO', 'L', '0027642761', 'PAYAKUMBUH', '2002-07-28', 'Islam', 'KOTO PANJANG', 'KASWAL NOVRIADI', 'VIVI YANTI', 'XII IPA 1'),
(137, 'Chelsy Maulina', 'P', '0052436464', 'Tabek Panjang', '2005-04-24', 'Islam', 'Kuranji', 'Dodi Rana Yangga', 'Ade Sri Esa Putri', 'XI IPA 3'),
(138, 'CICI ANGGRAINI', 'P', '0035873386', 'TANJUNG PATI', '2003-11-23', 'Islam', 'JORONG KURANJI', 'KHAIRIL ANWAR', 'WIDIA SUSANTI', 'XI IPS 4'),
(139, 'CICI GUSMA PUTRI', 'P', '0017511663', 'MUNGKA', '2001-05-07', 'Islam', 'MUNGKA', 'MANSUARNI', 'GUSNEL', 'XII IPS 5'),
(140, 'Cintya', 'P', '0036053988', 'Simpang Sugiran', '2003-05-15', 'Islam', 'Simpang Sugiran', 'Alexander', 'Pepi Suryanti', 'XII IPA 2'),
(141, 'DANI SAPUTRA', 'L', '0049203653', 'KAMPUNG TENGAH', '2004-07-01', 'Islam', 'KAMPUNG TENGAH', 'Efarianto', 'YELI DELFITA', 'X IPS 5'),
(142, 'DARATUL NAFISA', 'P', '0064452367', 'Mungka', '2006-03-01', 'Islam', 'MUNGKA', 'Guswendi', 'INDRAWATI', 'X IPA 1'),
(143, 'Darma Maulana', 'L', '0039276792', 'Paninjauan', '2003-06-16', 'Islam', 'Koto Tongah', 'Defni Sisman', 'Nonong Widuri', 'XII IPS 1'),
(144, 'Dastin Hendarto', 'L', '0026734998', 'Tabek Panjang', '2002-06-12', 'Islam', 'Guguk Nunang', 'Hendra Gunawan', 'Fatma Rika', 'XII IPS 2'),
(145, 'DAYANG CANTIKA EFENDI', 'P', '0059188859', 'TALANG MAUR', '2005-05-05', 'Islam', 'KAMPUANG TANGAH', 'Normal Efendi', 'WELLYA ELVI', 'X IPA 1'),
(146, 'DEA PRATIWI AGUSTIN', 'P', '0026077006', 'KOTO BARU SIMALANGGANG', '2002-08-03', 'Islam', 'Koto Baru Simalanggang', 'DASRI SUHENDRA', 'ELIYA', 'XII IPS 3'),
(147, 'Dea Windra', 'P', '0052778374', 'Suliki', '2005-01-24', 'Islam', 'Jl Tan Malaka', 'Taswan', 'Zulherni', 'XI IPS 3'),
(148, 'Deandra Bayu Aji', 'L', '0051642009', 'Tabek Panjang', '2005-11-19', 'Islam', 'Balai Talang', 'Joni', 'Petra Antin', 'X IPS 4'),
(149, 'DEIGO RENALDO', 'L', '0045975458', 'MUNGKA', '2004-12-09', 'Islam', 'PADANG MUNGKA', 'SAFRI', 'SITI HAJIR', 'X IPS 4'),
(150, 'DEKSHA ANANDA FIRDAUS', 'P', '0041919265', 'PAYAKUMBUH', '2004-08-20', 'Islam', 'GUGUAK', 'ADEK FIRDAUS', 'NUSHA FITRA', 'XII IPS 1'),
(151, 'DELA MAHIRA SALSABILA', 'P', '0054263514', 'TIAKAR', '2005-01-14', 'Islam', 'JORONG TIAKAR', 'M. ABRAL', 'ERMAWATI', 'XI IPS 5'),
(152, 'Della Citra Hawangi', 'P', '0057921671', 'Pekanbaru', '2006-01-02', 'Islam', 'Kubu Gadang', 'Irwan', 'Yetti Erlinda', 'X IPS 1'),
(153, 'DELLA NOFIANTI', 'P', '0057234165', 'KOTO BARU', '2005-06-16', 'Islam', 'KOTO BARU MUNGKA', 'Ettrizal', 'ORISKA YULIANTI', 'X IPS 2'),
(154, 'DELVI OKTI NAHENDRA', 'P', '0035930025', 'MUNGKA', '2003-10-05', 'Islam', 'SIMPANG ABU', 'AFNIZUL HENDRA', 'RINA NOVIA SUSANTI', 'XII IPS 4'),
(155, 'DESALFI NATASYA', 'P', '0055040610', 'BATU SANGKAR', '2005-03-20', 'Islam', 'PADANG PINANG', 'SAFEI', 'DASMI WARLIS', 'X IPS 1'),
(156, 'DESIANI FITRI NABILA', 'P', '0057832483', 'SUNGAI TALANG', '2005-12-27', 'Islam', 'SUNGAI TALANG', 'WARDI', 'NENTI SUSPITA', 'X IPA 3'),
(157, 'Desriva Ermanita', 'P', '0042212315', 'Padang Jopang', '2004-03-14', 'Islam', 'Sipingai', 'Irwandi', 'Sasweta', 'XII IPA 4'),
(158, 'DESTA HANEKA PUTRI', 'P', '0052405237', 'DANGUNG-DANGUNG', '2005-12-06', 'Islam', 'PADANG HARAPAN', 'Dalisyon', 'ERMA TUTI', 'X IPS 2'),
(159, 'Destia Rahmadani', 'P', '0049386004', 'Koto Gadang', '2004-11-02', 'Islam', 'Koto Gadang Maek', 'Doni Handoko', 'Hernaliza', 'XI IPS 3'),
(160, 'DESTRI RAMZY', 'L', '0042788222', 'Dharmasraya', '2004-12-15', 'Islam', 'Pincuran Betung', 'YUNIZAR', 'YENITA', 'XI IPA 1'),
(161, 'DESWITA MAHARANI', 'P', '0035682880', 'Simpang Abu', '2003-04-22', 'Islam', 'Simpang Abu', 'RINALDI', 'DESI WILIA', 'XII IPA 3'),
(162, 'DEVI PERMATA HATI', 'P', '0054890124', 'Padang Japang', '2005-11-25', 'Islam', 'Balai Mansiro', 'Anwar Hidayat', 'Delfianis', 'X IPS 3'),
(163, 'DHARA AYU PUSPITA', 'P', '0069101734', 'Guguak', '2006-06-22', 'Islam', 'Tiakar', 'Prawoto', 'Yulni Desfina', 'X IPS 5'),
(164, 'DHENI INDRA YANI', 'P', '0001940218', 'PEKAN BARU', '2000-09-26', 'Islam', 'GUGUAK', 'KHAIRUL', 'YANTI NOVITA', 'XII IPS 5'),
(165, 'DIA ANDRIYANI', 'P', '0031060830', 'PAYAKUMBUH', '2003-11-02', 'Islam', 'BUKIT APIT', 'SARWADI', 'CESNA WIRA', 'XII IPA 1'),
(166, 'DIANDRA SALSABILA AULIA', 'P', '0061241354', 'PAYAKUMBUH', '2006-04-06', 'Islam', 'TARATAK', 'DIDI MARTA', 'NANG INDRAWATI', 'X IPA 2'),
(167, 'DIFFYA SUKMA RIZAL', 'P', '0043804916', 'Guguk Nunang', '2004-11-08', 'Islam', 'Jorong Belubus', 'Syafrizal', 'Ginta Asmara', 'XI IPS 1'),
(168, 'DIMAS ADREAN', 'L', '0051845166', 'BALAI TAMPUAK PINANG', '2005-10-11', 'Islam', 'Jorong Balai Tampuak Pinang', 'JASRIL', 'RIA SUSANTI', 'X IPS 4'),
(169, 'Dimas Septian Hadi', 'L', '0039629344', 'Kuranji', '2003-09-08', 'Islam', 'Guguk Nunang', 'Darmadi', 'Walmis', 'XI IPS 5'),
(170, 'DINA BERLIANA PUTRI', 'P', '0069493919', 'PAYAKUMBUH', '2006-01-15', 'Islam', 'TANJUNG BARULAK', 'Mar Efendi', 'DELIFNA', 'X IPA 3'),
(171, 'DINA KHATIMA', 'P', '0056404616', 'KUBANG', '2005-10-14', 'Islam', 'KOTO BARU', 'JAMAL MENAFRI', 'YANURSIAH', 'X IPS 2'),
(172, 'DINA TRIANA PUTRI', 'P', '0038091514', 'Payakumbuh', '2003-12-12', 'Islam', 'Koto Tuo', 'YUSRIZAL', 'DARNI YENTI', 'XII IPS 1'),
(173, 'Dinda Gustia Windi', 'P', '0053460534', 'Mungka', '2005-08-16', 'Islam', 'Lubuak Simato', 'Abraham Rinaldi', 'Wildayati', 'X IPA 2'),
(174, 'DINDA LESTARI', 'P', '0036053636', 'TALAO B. APIT', '2003-12-25', 'Islam', 'BUKIT APIT', 'REVLUSMAN OEMAR', 'INDRAYATI', 'XII IPS 1'),
(175, 'Dinda Meutya Fahira', 'P', '0054178265', 'Kampung Tengah', '2005-03-16', 'Islam', 'Kampuang Tangah', 'Aidil Hidayat', 'Rosi Yuliati', 'XI IPA 1'),
(176, 'Dinda Oktavia', 'P', '0045657680', 'Dangung-dangung', '2004-08-24', 'Islam', 'dangung-dangung Kenagarian Guguak VIII Koto', 'Bujang', 'Rosnita', 'XI IPA 2'),
(177, 'Dinda Wahyuningsih', 'P', '0036037933', 'Dangung-dangung', '2003-06-28', 'Islam', 'Koto Tangah', 'Safriyaldi', 'Elmi', 'XII IPA 4'),
(178, 'DINI KHATIMA', 'P', '0056707232', 'KUBANG', '2005-10-14', 'Islam', 'KOTO BARU', 'JAMAL MENAFRI', 'YANURSIAH', 'X IPA 2'),
(179, 'DINI TRIANI PUTRI', 'P', '0038178068', 'Payakumbuh', '2003-12-12', 'Islam', 'Koto Tuo', 'YUSRIZAL', 'DARNI YENTI', 'XII IPS 3'),
(180, 'DIPPO SATRIA ADINATA', 'L', '0046057119', 'Simpang Sugiran', '2004-01-15', 'Islam', 'Simpang Sugiran', 'IFDALMI CHAN', 'SESTI EFRINA', 'XI IPA 1'),
(181, 'Disya Khamedia Putri', 'P', '0041919152', 'Jakarta', '2004-07-30', 'Islam', 'Ketinggian', 'Media Gunawan', 'Desmita Sari', 'XII IPA 4'),
(182, 'Dito Nofrianda', 'L', '0026092534', 'Mungka', '2002-11-05', 'Islam', 'Kampung Tengah', 'Syafri Yanda', 'Rika Melia', 'XII IPS 4'),
(183, 'Divana Fanesha Candra', 'P', '0051994948', 'Ampang Gadang', '2005-05-04', 'Islam', 'Jorong Kubang Tungkek Kenagarian Guguak VIII Koto', 'Candra Erianto', 'Mardianti', 'XI IPA 2'),
(184, 'DWI MARYENNI', 'P', '3051775024', 'AMPANG GADANG', '2005-03-26', 'Islam', 'AMPANG GADANG', 'Muh. Umar Hadi', 'ERMITATI', 'X IPS 5'),
(185, 'DWI NABILA PUTRI', 'P', '0058442614', 'TABEK PANJANG', '2005-09-17', 'Islam', 'JR TALAO BUKIT APIT', 'Syukur', 'BETI HELIWANI', 'X IPS 2'),
(186, 'Dwi Rahmiyana Febriana', 'P', '0033293865', 'Sipingai', '2003-02-09', 'Islam', 'Sipingai', 'Afrianto. S', 'Ernita', 'XII IPS 2'),
(187, 'DYVA GABRIELA PATRICANA', 'P', '0056994660', 'Tanjung Pati', '2005-03-29', 'Islam', 'Tan Malaka', 'SUNARSO', 'RIMA FITRI YANTI', 'XI IPS 3'),
(188, 'DZALULI ALFARIZI', 'L', '0067453493', 'AMPANG GADANG', '2006-01-03', 'Islam', 'KOTO BARU ', 'Azrulwan', 'HERNI FATRI', 'X IPA 2'),
(189, 'Dzikra Az Zahra Gunawan', 'P', '0045904858', 'Kuranji', '2004-03-03', 'Islam', 'Kuranji', 'Gunawan', 'Nitalya Syamsir', 'XII IPA 3'),
(190, 'Dzikra Az Zahri Gunawan', 'P', '0047285344', 'Kuranji', '2004-03-03', 'Islam', 'Kuranji', 'Gunawan', 'Nitalya Syamsir', 'XII IPA 1'),
(191, 'Dzulfikar Arif', 'L', '0025993323', 'Payakumbuh', '2002-09-12', 'Islam', 'Guguak', 'Afri Yasman', 'Ilnawati', 'XI IPS 1'),
(192, 'EFRI ELSA WENIKA', 'P', '0068378907', 'KUBU GADANG', '2006-04-06', 'Islam', 'KOTO PUJI', 'Wedia Putra', 'Rika Gusmini Erlinda', 'X IPA 3'),
(193, 'ELSA ANGGI PUTRI', 'P', '0054320829', 'Dangung-Dangung', '2005-04-12', 'Islam', 'Kubang Tungkek', 'Nasirwan', 'Siti Aisyah', 'X IPA 2'),
(194, 'ELSA APRILIA', 'P', '0048385422', 'RONAH MAEK', '2004-04-10', 'Islam', 'RONAH MAEK', 'CENDRAWADI', 'APRIDA NINGSIH', 'X IPS 3'),
(195, 'Elsa Tianti Yufara', 'P', '0048884033', 'Payakumbuh', '2005-03-02', 'Islam', 'Jorong Kunangan', 'Ngasaro', 'Faiza Handayani', 'X IPA 3'),
(196, 'ELSIN NORINTA', 'P', '0046198666', 'BALAI TAMPUAK PINANG', '2004-07-05', 'Islam', 'BALAI TAMPUAK PINANG', 'Tarmizi', 'ELIA NORA', 'X IPS 4'),
(197, 'Elvita Wahyuni', 'P', '0052011206', 'Payakumbuh', '2005-05-13', 'Islam', 'Tiakar', 'Novieldi', 'Arianti', 'XI IPS 1'),
(198, 'EMBUN DINI DESNA SARI', 'P', '0046172500', 'MUNGKA', '2004-06-12', 'Islam', 'LUBUAK SIMATO', 'Defrianto', 'EL NINA WATI', 'X IPS 3'),
(199, 'Engki Kurniawan', 'L', '0048283883', 'Baruah Gunuang', '2004-06-13', 'Islam', 'Baruah Gunuang', 'Saifullah', 'Susmiati', 'XI IPA 3'),
(200, 'ENJELI DWI MELATI LENGGO GENI', 'P', '0038606535', 'Ampang Gadang', '2003-07-19', 'Islam', 'Kubang Tungkek', 'Andi Ilham', 'Dwi Nora Anggraini', 'XII IPA 4'),
(201, 'ENJELIKA PUTRI', 'P', '0051720023', 'MUNGKA', '2005-11-27', 'Islam', 'KAMPUANG TANGAH', 'Joni', 'POPI FRANSISKA', 'X IPS 2'),
(202, 'ENJELLIA', 'P', '0038689534', 'KOTO TINGGI MAEK', '2004-02-18', 'Islam', 'KOTO TINGGI MAEK', 'HAIRUL', 'FITRA YUNITA', 'XII IPS 5'),
(203, 'Erland Agsya Agustian', 'L', '0054439549', 'Guguak', '2005-08-31', 'Islam', 'Guguak', 'Agustiawarman', 'Syafrawati', 'XI IPA 4'),
(204, 'ERLANGGA GUSRI', 'L', '0047549267', 'KAMPUNG TANGAH', '2004-08-04', 'Islam', 'TALANG', 'ARI LASSO', 'YULIA TALMA', 'XI IPA 2'),
(205, 'EVILLA AGUSTI FITRIANA', 'P', '0047795728', 'Kubu Gadang', '2004-08-06', 'Islam', 'Jorong Koto Tuo', 'ALIWARMEN', 'RAMA DARNIS', 'XI IPS 2'),
(206, 'Fachri Rahmatul Usqa', 'L', '0052195581', 'Mungka', '2005-04-17', 'Islam', 'Kampung Tengah', 'Yudefi', 'Nelfia Herayenti', 'X IPS 5'),
(207, 'FACHRINUR HALIM', 'L', '0049831928', 'Talang Maur', '2004-10-06', 'Islam', 'Kubang Tungkek', 'Reflinizal D.J', 'Nurhasna M', 'XI IPA 4'),
(208, 'FADIL MAULANA SYAHRIL', 'L', '0045974930', 'TIAKAR', '2004-12-29', 'Islam', 'JORONG TIAKAR', 'SYHARIL HOIDI', 'IRNA ASMARNI', 'XI IPA 1'),
(209, 'Fadilah', 'P', '0068800993', 'Batam', '2006-11-05', 'Islam', 'Guguak Nunang', 'Suhendi', 'Lohida Sari Handri', 'X IPA 3'),
(210, 'FADILAH JUNIATI PUTRI', 'P', '0028094473', 'TABEK PANJANG', '2002-06-22', 'Islam', 'BELUBUS', 'HANDRA', 'YELI ELFITA', 'XII IPA 2'),
(211, 'FADILLATUL AZAHRA FOUR PUTRI', 'P', '0046172437', 'MUNGKA', '2004-12-25', 'Islam', 'PADANG HARAPAN', 'INDRA', 'UPIK', 'X IPS 2'),
(212, 'Fadli Hakim', 'L', '0045671866', 'Tiakar', '2004-03-21', 'Islam', 'Tiakar', 'Bambang Irawan', 'Azizah Fatmi', 'XI IPA 4'),
(213, 'Fadli Saputra', 'L', '0035999103', 'Bukittinggi', '2003-10-28', 'Islam', 'Kubang Tungkek', 'Djarwoto', 'Yenti Dahlia', 'XII IPA 4'),
(214, 'Fahira Hidayana', 'P', '0035873357', 'Pekan Baru', '2003-05-18', 'Islam', 'Ketinggian', 'Syamsir Hidayat', 'Suzana Siregar', 'XII IPA 3'),
(215, 'FAHRESA SUKRIAH', 'P', '0035896100', 'Kubang', '2003-05-27', 'Islam', 'Pincuran Botuang', 'AGUS WARMAN', 'DESVITA WATI', 'XI IPS 2'),
(216, 'FAHRUL MAI HENDRI', 'L', '0042118412', 'MUNGKA', '2004-05-03', 'Islam', 'PADANG MUNGKA', 'HENDRI', 'WEL PUTRI LIATI', 'XII IPA 3'),
(217, 'FAHRUL RIZKI', 'L', '0035931262', 'Simalanggang', '2003-11-05', 'Islam', 'Koto Tuo', 'MAWARDI', 'DENA IRAWATI', 'XI IPS 3'),
(218, 'FAIRA RIANI', 'P', '0044226998', 'SIMPANG SUGIRAN', '2004-12-08', 'Islam', 'JR TALAO BUKIT APIT', 'ERWIN', 'MERI SUSANTI', 'XI IPA 4'),
(219, 'FAIZIL AZIM', 'L', '0035896023', 'KURANJI', '2003-08-12', 'Islam', 'KURANJI', 'INDRA FIANDI', 'REDELITA BENNY', 'XII IPS 5'),
(220, 'Fajar Hidayah', 'L', '0053599821', 'Baruah Gunuang', '2005-12-27', 'Islam', 'Bandar Rait', 'Erizal', 'Frisma Lili', 'X IPA 3'),
(221, 'FAJAR RAMADHAN', 'L', '0039514540', 'TIAKAR', '2003-10-18', 'Islam', 'TIAKAR GUGUAK', 'DASRIL', 'KASRIAH', 'XI IPS 4'),
(222, 'Fajar Siddiq', 'L', '0059511925', 'Ampang Gadang', '2005-01-29', 'Islam', 'Balai Mansiro', 'Refrizon', 'Yenni Warti', 'XI IPS 1'),
(223, 'FAJAR YOGIANSYAH', 'L', '0058660752', 'Koto Tuo', '2005-08-04', 'Islam', 'Jorong Koto Tuo', 'WIRA FATMA YOGI', 'EMILZA PUTRI', 'X IPS 3'),
(224, 'FALAH HIBATULLAH', 'L', '0069997735', 'PIOBANG', '2006-01-21', 'Islam', 'PARUMPUNG', 'Yudha saputra', 'WATI OKTAVIA', 'X IPA 4'),
(225, 'Fani Julia Putri', 'P', '0068825282', 'Dangung-Dangung', '2006-07-07', 'Islam', 'Balai Mansiro', 'Afnil', 'Santi Eka Putri', 'X IPS 3'),
(226, 'FANIA SANDELA', 'P', '0046559997', 'KUBANG', '2004-08-12', 'Islam', 'TANJUNG BARULAK', 'Indra Wizet', 'ASMI YETRI', 'X IPA 4'),
(227, 'FANNY LOVIA BUNDA', 'P', '0053578362', 'DANGUNG-DANGUNG', '2005-12-27', 'Islam', 'TIAKAR', 'ADITIAWARMAN', 'ALINDA', 'X IPS 1'),
(228, 'FANYA ROZA ANDRIANI', 'P', '0055081999', 'Tabek Panjang', '2005-04-23', 'Islam', 'Kubang Tungkek', 'Andri', 'Roza Firdaus', 'XI IPA 4'),
(229, 'Fardeo Satria', 'L', '0046198328', 'Taeh Baruah', '2004-07-26', 'Islam', 'Dalam Koto', 'Murni', 'Halisni Wati', 'X IPS 2'),
(230, 'Fardhatul Sharly', 'P', '0045658776', 'Payakumbuh', '2004-11-10', 'Islam', 'Kuranji', 'Yon Suherman', 'Meri Guswarni', 'XI IPS 2'),
(231, 'Farel Putra Ananda', 'L', '0035979441', 'Mungka', '2003-08-20', 'Islam', 'Simpang Tiga Kenanga', 'Nanda Candra', 'Susri Yanti', 'XII IPS 4'),
(232, 'FARHAN KURNIA', 'L', '0056465644', 'GUGUAK', '2005-02-07', 'Islam', 'JORONG GUGUAK VIII KOTO', 'DEDI KURNIAWAN', 'ENULIZA', 'XI IPS 2'),
(233, 'FARISSA WULANDARI', 'P', '0055928536', 'SEI ANTUAN', '2005-12-24', 'Islam', 'LUBUAK SIMATO', 'Oktavia Hendra', 'HARNITA GUSTENTI', 'X IPA 2'),
(234, 'FATHIA AZ-ZAHRA', 'P', '0048692348', 'Ampang Gadang', '2004-06-23', 'Islam', 'Kubang Tungkek', 'Endrizal', 'Dina Aptia Putri', 'XI IPS 1'),
(235, 'Fatimah Azzahra', 'P', '0058062891', 'Dalam Koto', '2005-12-06', 'Islam', 'Padang Parit Panjang', 'Dwi Sulistiyono', 'Yesi Herlina', 'X IPS 1'),
(236, 'FATIMAH FAUZIA MILDA', 'P', '0058818466', 'SIMPANG SUGIRAN', '2005-11-03', 'Islam', 'BONCAH', 'Terdiwanto', 'LAFRIDA', 'X IPS 1'),
(237, 'Fatimah Zahara', 'P', '0044499354', 'Kubu Gadang', '2004-05-04', 'Islam', 'Dalam koto', 'Amfirman', 'Rosdiana', 'XI IPA 1'),
(238, 'Fatimah Zahira Putri', 'P', '0046214255', 'Kubu Gadang', '2004-08-18', 'Islam', 'Kubu Gadang', 'Endi Erizal', 'Saflia Devi', 'XI IPA 2'),
(239, 'Fatimah Zikra', 'P', '0035930257', 'Kampuang Tangah', '2003-05-25', 'Islam', 'Kampung Tangah', 'Khairul', 'Rina Hartati', 'XII IPS 2'),
(240, 'Fatma Ramadhani', 'P', '0035979977', 'Taratak', '2003-11-15', 'Islam', 'Taratak', 'Ismen. Y', 'Alfis Hendra', 'XII IPA 1'),
(241, 'FATMATUL AZZAHRA', 'P', '0044702128', 'Mungka', '2004-04-21', 'Islam', 'Jorong Koto Tuo', 'IMDRIFAL', 'PERA NOVIA', 'XI IPA 4'),
(242, 'FAUZI ARRAHIM', 'L', '0054184933', 'TABEK PANJANG', '2005-05-22', 'Islam', 'BUKIT APIT', 'Rinaldi', 'ZULFIANI', 'X IPS 3'),
(243, 'Fauziah Yulira', 'P', '3043097809', 'Mungka', '2004-02-13', 'Islam', 'Kubang Tungkek', 'Yul Hasman', 'Yera Gustina', 'XII IPA 2'),
(244, 'Fauziatul Mardiah', 'P', '0051994002', 'Kaludan', '2005-01-13', 'Islam', 'Kaludan', 'Ramyendi', 'Musniati', 'XI IPS 4'),
(245, 'FAUZIL HIDAYATULLAH', 'L', '0066907844', 'PAYAKUMBUH', '2006-02-01', 'Islam', 'LAKUNG SIMPANG SUGIRAN', 'RISMAN. AR', 'ITNAHUDA', 'X IPA 4'),
(246, 'FAZIRA AZ ZAHRA', 'P', '0048671247', 'GUGUK', '2004-12-26', 'Islam', 'GUGUAK ', 'HENDRA GUNAWAN ', 'ERIKA FITRI', 'XI IPS 4'),
(247, 'Fazira Dio Hidayatullah', 'L', '0048907778', 'Suliki', '2004-06-02', 'Islam', 'Baruah Gunuang', 'Basni', 'Asmayulis', 'XI IPA 1'),
(248, 'FEBBY ROSALINA', 'P', '0033293282', 'KUBANG', '2003-08-22', 'Islam', 'KOTO BARU', 'JAMAL MENAFRI', 'YANURSIAH', 'XII IPS 3'),
(249, 'FEBI ANDRIYANI', 'P', '0063228591', 'Guguk Nunang', '2006-01-06', 'Islam', 'Belubus', 'Harwandi', 'Mia Fandu Winata', 'X IPS 4'),
(250, 'Febiola Firginita', 'P', '0051994945', 'Tabek Panjang', '2005-02-19', 'Islam', 'Dangung-dangung Kenagarian Guguak VIII Koto', 'Edison', 'Safitri Mulyati', 'XI IPA 1'),
(251, 'Febri Anisa Umara', 'P', '0059153586', 'Tiakar', '2005-02-09', 'Islam', 'Tiakar', 'Ardi Warman', 'Surnini', 'XI IPS 1'),
(252, 'FEBRIA ISMA LOLI', 'P', '0025993419', 'TIAKAR', '2003-02-02', 'Islam', 'TIAKAR', 'GUSLAN PUTRA', 'SURMA DEWI', 'XI IPS 5'),
(253, 'FEBRINA AULIA RAHMI', 'P', '0058767510', 'Dangung-dangung', '2005-05-07', 'Islam', 'Kubang Tungkek', 'Edi Irwan', 'Safni', 'X IPS 5'),
(254, 'Febryan', 'L', '0054555346', 'Kampuang Tangah', '2005-05-02', 'Islam', 'Kampunr Tengah', 'Ismadi', 'Fitria Yeti', 'XI IPS 2'),
(255, 'Fernando Agasy', 'L', '0037292936', 'Kubang', '2003-05-05', 'Islam', 'Tabek Maju', 'Chandra Wirawand', 'Yenni surya', 'XII IPA 2'),
(256, 'Fernando Engla Prajaya', 'L', '0041525137', 'Batusangkar', '2004-02-28', 'Islam', 'Taratak', 'Jonaidi', 'Elna Yunita', 'XI IPS 4'),
(257, 'FIDEA MONICA', 'P', '0023732373', 'Dangung-dangung', '2002-02-05', 'Islam', 'Kubang Tungkek', 'M. Sundus', 'Susfa Yenti', 'XII IPS 4'),
(258, 'Figho Elang Perkasa', 'L', '0042035198', 'Sei. Antuan', '2004-04-27', 'Islam', 'Lubuak Simato', 'Musmulyadi', 'Diawati', 'XII IPS 2'),
(259, 'Fikri Sandi Almonda', 'L', '0033293874', 'Sipingai', '2003-11-19', 'Islam', 'Sipingai', 'Yuhermon', 'Gusmamelia', 'XII IPS 1'),
(260, 'FILZA FITRI', 'P', '0036019557', 'Payakumbuh', '2003-10-28', 'Islam', 'Jorong Belubus', 'Martin Ardinal', 'U s n a ', 'XII IPA 2'),
(261, 'FIONA PERMATA', 'P', '0051375065', 'Kubu Gadang', '2005-07-25', 'Islam', 'Kubu Gadang', 'Adrianto', 'Afrina Yoni', 'X IPS 3'),
(262, 'FIRA AFRIZA', 'P', '0052414485', 'KUBANG', '2005-03-26', 'Islam', 'KUBANG', 'AFDAL', 'EZA NELFI', 'XI IPS 1'),
(263, 'Fira Febri Sandi', 'P', '0053056324', 'Dangung-Dangung', '2005-02-08', 'Islam', 'Kubang Tungkek', 'Efendi', 'Sri Novianti', 'XI IPS 3'),
(264, 'Fira Rahmadani', 'P', '0052061173', 'Sopan Tanah', '2005-10-25', 'Islam', 'sopan tanah', 'Asripen', 'Rina Susanti', 'X IPS 1'),
(265, 'FIRLI MAKFIRATUN', 'P', '0025367276', 'Sipingai', '2002-09-28', 'Islam', 'Sipingai', 'Afyuddin', 'Erna Linda', 'XII IPS 2'),
(266, 'FIRLY WAHYUNI ILLAHI', 'P', '0032181817', 'GUGUAK', '2003-05-04', 'Islam', 'KUBANG TUNGKEK', 'MASREFRI', 'SRI YANTI', 'XII IPA 1'),
(267, 'Firman Sakti', 'L', '0025993422', 'Bukittinggi', '2002-12-23', 'Islam', 'Balai Mansiro', 'Syamsirwan', 'Rianti', 'XII IPS 5'),
(268, 'Fithrati Zahari', 'P', '0035355983', 'Payakumbuh', '2003-04-02', 'Islam', 'Guguak', 'Erfis', 'Friyeni', 'XII IPS 4'),
(269, 'Fito Patrio', 'L', '0029003472', 'Mungka', '2002-09-21', 'Islam', 'Simpang Goduang', 'Warman', 'Nelmawati', 'XII IPS 1'),
(270, 'FITRAH RAMADHANI', 'P', '0041919263', 'KURANJI', '2004-07-28', 'Islam', 'TIAKAR', 'AHMAD TARMIZI', 'EPA RIANTI', 'XII IPA 4'),
(271, 'Fitratul Dwi Fony', 'P', '0042118381', 'Mungka', '2004-05-24', 'Islam', 'Simpang Tiga Kenanga', 'Anepa Wisra', 'Fifi Pasni', 'XII IPA 2'),
(272, 'Fitri Yulianti', 'P', '0025938948', 'Ampang Gadang II', '2002-06-10', 'Islam', 'Ampang Gadang II', 'Nibus', 'Nimar', 'XII IPS 2'),
(273, 'FITRIA NINGSIH', 'P', '0017511356', 'MUNGKA', '2001-04-24', 'Islam', 'SOPAN', 'EDISON', 'SASMITA', 'XII IPS 3'),
(274, 'FRENDI ARIANDA', 'L', '0037113311', 'PERAWANG', '2003-12-20', 'Islam', 'BONCAH', 'DANIEL SAHULEKA', 'RIA GUSTIANI', 'XII IPS 4'),
(275, 'FRISKA WULANDARI', 'P', '0056188014', 'KAMPUNG TENGAH', '2005-07-23', 'Islam', 'TALANG', 'YUFRIADI', 'YELMALONA', 'X IPS 3'),
(276, 'Frizi Fadella Resta', 'P', '0044294818', 'Tabek Panjang', '2004-04-21', 'Islam', 'Tiakar', 'Irdanus', 'Susi Hari Yanti', 'XI IPS 1'),
(277, 'FUJA ANDINI', 'P', '0035896243', 'KOTO BARU', '2003-11-30', 'Islam', 'PADANG ARAI', 'IRIL HARTONO', 'ELIA', 'XII IPA 2'),
(278, 'FUJA SEKAR APRILLA', 'P', '0049145173', 'PADANG JAPANG', '2004-04-04', 'Islam', 'Jopang Manganti', 'ERWIN', 'EWI DARLIS', 'XI IPA 1'),
(279, 'Ghaitsa Zahira Shofa', 'P', '0051994952', 'Padang', '2005-08-25', 'Islam', 'Jorong Balai Mansiro Kenagarian GUguak VIII Koto', 'Rudy Martin', 'Yosi ardelina', 'XI IPA 4'),
(280, 'GHANIYAH LATIFA PUTRI', 'P', '0055053913', 'LUKA PANJANG', '2005-06-25', 'Islam', 'DUSUN NAN DUO', 'Edison', 'MIRYESNI', 'X IPS 4'),
(281, 'GHILANG PUTRA DARIZKY', 'L', '0058922765', 'SULIKI', '2005-09-23', 'Islam', 'TIAKAR', 'Al Khindi Miza', 'DARNA SRI HERLINA', 'X IPS 2'),
(282, 'Ghufron Hanafid', 'L', '0032388800', 'Payakumbuh', '2003-04-17', 'Islam', 'Bukit Apit', 'Syafrul. S', 'Yesi Iryani', 'XII IPA 4'),
(283, 'Gia Rani', 'P', '0049963932', 'Sei Antuan', '2004-06-09', 'Islam', 'Lubuak Simato', 'Edmon', 'Rinda', 'XI IPA 3'),
(284, 'GILANG PRATAMA ', 'L', '0056103239', 'SEI. TALANG', '2005-07-13', 'Islam', 'KURANJI', 'SYAFRIAL', 'TIRTA WENTI', 'XI IPA 3'),
(285, 'GISKA AULIA PUTRI', 'P', '0049327252', 'Guguk NUnang', '2004-11-23', 'Islam', 'Jorong Belubus', 'Darming', 'Fatimah Ansirni', 'XI IPS 4'),
(286, 'GISKA TRENDIANI', 'P', '0054390847', 'Simalanggang', '2005-01-12', 'Islam', 'Jorong Koto Tuo', 'RAFLI EDISON', 'EFRI YENDA', 'XI IPS 1'),
(287, 'GITA WARDANI', 'P', '0048739927', 'PEKANBARU', '2004-06-18', 'Islam', 'TIAKAR', 'ZAMRIL', 'HELIANTI', 'XII IPS 1'),
(288, 'GIVA YOLANDA', 'P', '0033389923', 'Payakumbuh', '2003-07-17', 'Islam', 'Batu Nan Limo', 'Wandi Saprianto', 'Ratna Herayanti', 'XII IPA 2'),
(289, 'GIVKA ALYSIA', 'P', '0046660180', 'SULIKI', '2004-12-16', 'Islam', 'TAN MALAKA', 'RICKY AGUSTENDI', 'MARTIN NERI ELFIA', 'XI IPA 2'),
(290, 'GRISTHOVER LORENZO', 'L', '0032632708', 'PAYAKUMBUH', '2003-04-14', 'Islam', 'JOPANG', 'ALMISASRA', 'SUSILAWATI', 'XI IPS 1'),
(291, 'Gufran Riski Ananda', 'L', '0023911785', 'Mungka', '2002-03-17', 'Islam', 'Lubuak Simato', 'Risman', 'Susi Darwita', 'XII IPA 3'),
(292, 'GUSNIDA ZARARAH', 'P', '0054828900', 'TARATAK', '2005-08-12', 'Islam', 'TARATAK', 'YANI ARMAN', 'FITRI YANTI', 'X IPA 1'),
(293, 'GUSTI RANDA', 'L', '0046065178', 'MUNGKA', '2004-04-15', 'Islam', 'PADANG MUNGKA', 'HENDRIZAL', 'NOVIENSI DASWATI', 'XI IPA 1'),
(294, 'Habibi', 'L', '0052692837', 'Mungka', '2005-04-30', 'Islam', 'Lobuah Lintang', 'M. Fadlil', 'Rice Meizenti', 'XI IPA 3'),
(295, 'HABIBUR RAHMAN INDRA', 'L', '3054151889', 'KUBANG', '2005-12-21', 'Islam', 'KOTO BARU', 'Indra Masrul', 'ELVIA NENDRA', 'X IPS 4'),
(296, 'HABIL AL BUQHORY', 'L', '0057541489', 'TANJUNG PATI', '2005-03-22', 'Islam', 'KOTO BARU SIMALANGGANG', 'Tasman Putra', 'ELFIDA ERITA', 'X IPS 3'),
(297, 'HABIL AL VHAYED', 'L', '0032631872', 'Payakumbuh', '2003-02-16', 'Islam', 'Koto Tuo Mungka', 'AL JUNAIDI', 'IMATA ZIKA', 'XII IPA 4'),
(298, 'HABIL ARASYID', 'L', '0066414817', 'GUGUAK', '2006-07-23', 'Islam', 'GUGUAK', 'Nazwen', 'NELHAYATI', 'X IPS 5'),
(299, 'Habil Ariadi', 'L', '0044504383', 'Payakumbuh', '2004-06-14', 'Islam', 'Kuranji', 'Dedi Nofianto', 'Aria Zurneti', 'XI IPS 5'),
(300, 'HAFIFA KHAIRUN NISAH', 'P', '3048401039', 'Piobang', '2004-09-30', 'Islam', 'SIMPANG SUGIRAN', 'JONI HERMANTO', 'WIDIA NOVALIA', 'XI IPA 1'),
(301, 'Hafifah', 'P', '0034484472', 'Ampang Gadang', '2003-07-28', 'Islam', 'Balai Talang', 'Syafdinul Hakemi', 'Erni Wati', 'XII IPA 2'),
(302, 'HAFIZAH DWIEKA PUTRI', 'P', '0046198058', 'LIMBANANG', '2004-10-08', 'Islam', 'TAN MALAKA', 'EKA GOESLAN', 'DESWITA', 'XI IPA 4'),
(303, 'Hafizah Mutmainnah', 'P', '0042349446', 'Guguk', '2004-08-04', 'Islam', 'Guguak', 'Nusa Indra', 'Ismi Maria Fitri', 'XI IPA 2'),
(304, 'HAFIZATUL ISMI', 'P', '0066365245', 'BARUAH GUNUANG', '2006-01-20', 'Islam', 'BARUAH GUNUANG I', 'Andrialdi', 'RAHMINI NELFIDA', 'X IPS 5'),
(305, 'Hafsyah Laila Asyura', 'P', '0043960352', 'Guguak', '2004-03-01', 'Islam', 'Guguak', 'Mutriono', 'Wafni Erita', 'XII IPS 2'),
(306, 'HALDIS ALVARO', 'L', '0041895325', 'BANYUWANGI', '2004-05-17', 'Islam', 'KETINGGIAN', 'OFETRI BECHTEL', 'HENDRI UMI ASIH', 'XII IPA 2'),
(307, 'HALIMAH TUSADIAH', 'P', '0042208226', 'Kuranji', '2004-03-24', 'Islam', 'Belubus', 'Zulkifli', 'Milda Fariantis', 'XII IPS 1'),
(308, 'Halimatussakdiah', 'P', '0062782964', 'Baruah Gunuang', '2006-07-12', 'Islam', 'Baruah Gunuang I', 'Ashabul Muhsinin', 'Mardatillah', 'X IPA 1'),
(309, 'HAMDANI ABABIL', 'L', '0043143429', 'SUNGAI TALANG', '2004-05-23', 'Islam', 'KALUDAN', 'ZULSUFRIANDI', 'RISNAWATI', 'X IPS 2'),
(310, 'HANA FITRI INDRAYANTI UTAMI', 'P', '0029095201', 'BATAM', '2002-06-08', 'Islam', 'KUBANG TUNGKEK', 'ABDI INDRA', 'RENTI ERLINDA', 'XII IPS 4'),
(311, 'HANATUL ZAHRA', 'P', '0065167072', 'MUNGKA', '2006-07-22', 'Islam', 'KOTO BARU MUNGKA', 'Idnafis', 'WARNI F', 'X IPS 5'),
(312, 'Hanifa Salsabilla', 'P', '0041919260', 'Payakumbuh', '2004-03-17', 'Islam', 'Guguak', 'Cep Herman', 'Mila Sari', 'XII IPA 1'),
(313, 'Hanifah', 'P', '0057381319', 'Mungka', '2005-05-25', 'Islam', 'Kubang Tungkek', 'Wakasmar', 'marini oktavia', 'XI IPA 2'),
(314, 'Hanifah Zahra', 'P', '0042090642', 'Belubus', '2004-01-19', 'Islam', 'Belubus', 'Abdul Nasrul', 'Santi Marni', 'XII IPA 4'),
(315, 'HANIFATUL SYAFIQAH', 'P', '0056801499', 'PIOBANG', '2005-09-23', 'Islam', 'BONCAH', 'Firman', 'DIKA KARMILA', 'X IPA 3'),
(316, 'Hanny Harziah', 'P', '0067955703', 'Piobang', '2006-01-26', 'Islam', 'Sungai Takuk', 'Yoppi Rostiawan', 'MELDA ELISA', 'X IPS 3'),
(317, 'Hanum Fadhyiatul Rahmah', 'P', '0045958119', 'Simpang Sugiran', '2004-05-12', 'Islam', 'Baliak', 'Yusritel', 'Fitri Emilia', 'XI IPA 4'),
(318, 'HARDIKA ARISMINANDA', 'L', '0045975447', 'PAYAKUMBUH', '2004-08-17', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'ARLISMAN', 'AISYAH SYAFNIR', 'XI IPS 5'),
(319, 'Haril Saputra', 'L', '0052692836', 'Padang Lawas', '2005-03-10', 'Islam', 'Simpang Tiga Kenanga', 'Rasmi', 'Rahma Yeni', 'XI IPS 5'),
(320, 'HARKE SAPANSIL', 'L', '0023480884', 'MUNGKA', '2002-10-01', 'Islam', 'JORONG MAUR', 'MARWAN', 'EFI YARNI', 'XI IPS 3'),
(321, 'HAURA ZOYA AZKA', 'P', '0053540816', 'Kubang Tungkek', '2005-06-10', 'Islam', 'Kubang Tungkek', 'AFYUN NALDI', 'DESI RIFRI YENTI', 'XI IPA 4'),
(322, 'HAZIZAH NUR AISYAH', 'L', '0035979737', 'Kubu Gadang', '2003-12-01', 'Islam', 'Kubu Gadang', 'Afrizal Candra', 'Eka Putri', 'X IPS 5'),
(323, 'HAZIZATUL ZAHWA', 'P', '0057971468', 'SULIKI', '2005-12-19', 'Islam', 'TALAO BUKIT APIT', 'EVIANTO', 'ROZA', 'X IPA 4'),
(324, 'HERSEFIA JENIKA', 'P', '0047114714', 'MUNGKA', '2004-11-15', 'Islam', 'TALANG', 'WIRLON EFENDI', 'DESI ASWITA', 'XI IPA 4'),
(325, 'HIKMAHTUL INDRA', 'P', '0044757523', 'KUBANG', '2004-12-12', 'Islam', 'KOTO BARU', 'NUR INDRA', 'TITI REFNI.N', 'XI IPA 4'),
(326, 'HILDA DELFIRA PUTRI', 'P', '0048580582', 'BUKIT APIT', '2004-02-02', 'Islam', 'JR TALAO BUKIT APIT', 'DEFI SUSANDRA', 'MIRA ELFI', 'XI IPA 2'),
(327, 'HILMA PUTRIANA SARI', 'P', '0041483094', 'BUKIT APIT', '2004-04-18', 'Islam', 'TALAO BUKIT APIT', 'AFRINAL', 'NORA ELFI SUSANTI', 'X IPS 5'),
(328, 'Hilyatul Aulia', 'P', '0046172054', 'Mungka', '2004-12-19', 'Islam', 'Simpang Tiga Kenanga', 'Defrianto', 'Yeni Fahrini', 'XI IPA 2'),
(329, 'HISYAM JALIL', 'L', '0065482571', 'TABEK PANJANG', '2006-08-20', 'Islam', 'GUGUAK', 'Yalhendri', 'ROZI DESRITA', 'X IPS 5'),
(330, 'HUSNUL KHOTIMAH', 'P', '0035387077', 'PIOBANG', '2003-10-24', 'Islam', 'JR TALAO BUKIT APIT', 'SUNARDI', 'OSNIATI', 'XI IPA 2'),
(331, 'Hutama Priaga', 'L', '0043004336', 'Kp. Tengah', '2004-08-10', 'Islam', 'Kampung Tangah', 'Iswandi', 'Zulkasmawati', 'XI IPS 4'),
(332, 'IBRAHIM ALAM', 'L', '0044160367', 'PAYAKUMBUH', '2004-06-04', 'Islam', 'JORONG MUNGKA TENGAH', 'INDRA MANGUN SAKTI', 'SUKRINI', 'XI IPA 2'),
(333, 'ICHWANNUL ICHSAN. A', 'L', '0068865510', 'KURANJI', '2006-04-03', 'Islam', 'KURANJI', 'Alfizal', 'HASVENNITA', 'X IPA 3'),
(334, 'ILHAM', 'L', '0053463251', 'TABEK PANJANG', '2005-03-13', 'Islam', 'guguak', 'yondra ordison', 'Rini Susanti', 'XI IPA 4'),
(335, 'ILHAM NOVALDI', 'L', '0031964020', 'MUNGKA', '2003-01-10', 'Islam', 'MUNGKA TENGAH', 'EDISON', 'GUSTI ARLEN', 'XII IPS 2'),
(336, 'ILHAM NOVEBRI', 'L', '0053546926', 'Payakumbuh', '2005-11-29', 'Islam', 'Koto Tuo', 'ADRIANTO', 'EFRIYENTI', 'X IPS 3'),
(337, 'ILHAM RAMADHAN', 'L', '0045657169', 'Kubang Tungkek', '2004-10-29', 'Islam', 'Kubang Tungkek', 'RINALDI', 'NURIAH', 'XI IPS 1'),
(338, 'ILHAM RAMADHANI', 'L', '0053623340', 'Tabek Panjang', '2005-10-10', 'Islam', 'Guguk Nunang', 'Eko Wibowo', 'Ratna Indria Sari', 'X IPA 1'),
(339, 'IMRA NOVRI AZIZAH. R', 'P', '0037448973', 'Soriak', '2003-11-07', 'Islam', 'Soriak', 'Imdarlis', 'Raidatul Masdar', 'XII IPS 3'),
(340, 'INANG RESTIKA SARI', 'P', '0018732811', 'BALAI TAMPUAK PINANG', '2001-06-01', 'Islam', 'BALAI TAMPUAK PINANG', 'USMAN', 'IMUT', 'XII IPA 3'),
(341, 'Inayah Azzuri', 'P', '0067099264', 'Tanjung Pati', '2006-07-30', 'Islam', 'Dalam Koto', 'Dodi alfitri', 'Yusriani', 'X IPA 4'),
(342, 'INDAH NURUL ADHA', 'P', '0066552182', 'KURANJI', '2006-01-02', 'Islam', 'KURANJI', 'Zeldi Sadri', 'TITIK ANGGRAINI', 'X IPA 4'),
(343, 'Indah Permata Sari', 'P', '0035952984', 'Dangung-Dangung', '2003-10-14', 'Islam', 'Balai Talang', 'Faizul', 'Desfiani Reza', 'XII IPA 3'),
(344, 'INDAH ULFAZIAH', 'P', '0045388750', 'Payakumbuh', '2004-06-14', 'Islam', 'Kubang Tungkek', 'Syafrul Hidayat', 'Selvia Febriani', 'XI IPS 2'),
(345, 'INDRA NARIZAL', 'L', '0047879497', 'Kubu Gadang', '2004-12-06', 'Islam', 'Kubu Gadang', 'Amrizal', 'Nina Nuraini', 'XI IPA 2'),
(346, 'INDRI GUSTI RAHAYU', 'P', '0047825707', 'Koto Tuo', '2004-08-31', 'Islam', 'Jorong Koto Tuo', 'SYAFRIL', 'YENI MARLINA', 'XI IPS 4'),
(347, 'Indri Nur Afifah', 'P', '0042256981', 'Guguk Nunang', '2004-01-19', 'Islam', 'Guguk Nunang', 'Faidal Islami', 'Mirwana Iswita', 'XII IPS 4'),
(348, 'Indri Putri Fahrezi', 'P', '3045152337', 'Jakarta', '2004-05-02', 'Islam', 'Jopang', 'Petra Ezi Fahrezi', 'Winarsih', 'XI IPS 2'),
(349, 'INDRIA NINGSIH', 'P', '0026735471', 'Padang Japang', '2002-12-17', 'Islam', 'Padang Japang', 'Oyon Indra', 'Lilis Suryani', 'XII IPS 1'),
(350, 'INKA', 'P', '0040652628', 'Bandar Lampung', '2004-08-04', 'Islam', 'Tiakar', 'HAZNIL AZHAR', 'HELDA NURBAYA', 'XII IPA 3'),
(351, 'INTAN AULIA PUTRI', 'P', '0048838314', 'Guguk Nunang', '2004-01-26', 'Islam', 'Jorong Belubus', 'Elfizal', 'Efnidar', 'XI IPS 1'),
(352, 'INTAN NOVIA PUTRI', 'P', '0041850798', 'IKAN BANYAK', '2004-06-30', 'Islam', 'KOTO PANJANG', 'KASWAL NOFRIADI', 'VIVI YANTI', 'XI IPS 3'),
(353, 'INTAN PERMATA BUNDA', 'P', '0037046101', 'SIMPANG ABU', '2003-08-10', 'Islam', 'SIMPANG ABU', 'LIWER', 'ALYUSMARNIDA', 'XII IPA 1'),
(354, 'IQBAL SALAHUDYAR', 'L', '0054358402', 'Payakumbuh', '2005-01-18', 'Islam', 'Kubang Tungkek', 'Dedy', 'Linda Yanti', 'XI IPA 2'),
(355, 'IQBAL WIDIANTIKA', 'L', '0026091175', 'Taeh', '2002-02-20', 'Islam', 'Jorong Koto Tuo', 'YANNA ROZA', 'RIKA ELFIA', 'XI IPS 1'),
(356, 'Irfan Ramadhan', 'L', '0045958577', 'Payakumbuh', '2004-11-07', 'Islam', 'Tan Malaka', 'HENOK', 'USNI', 'X IPS 2'),
(357, 'IRFANDI IRSYAD', 'L', '0053978005', 'TARATAK', '2005-11-27', 'Islam', 'TARATAK', 'Imzawardi', 'YEMMIRAYETI', 'X IPS 1'),
(358, 'IRMA YANTI NUR ILLAHI', 'P', '0042035624', 'AMPANG GADANG', '2004-09-12', 'Islam', 'Ampang Gadang', 'Adi Armaya', 'FEBRI YANTI', 'XII IPA 1'),
(359, 'IYOKO NARASAKI HIROSHI', 'P', '0036053755', 'MUNGKA', '2004-07-20', 'Islam', 'Talago', 'HERI DERMAWAN', 'MELIA EROZA', 'XII IPA 1'),
(360, 'JECYCA ENDRIATI', 'P', '0036053630', 'Parumpung', '2003-07-11', 'Islam', 'Simpang Sugiran', 'ENDRI ATMON', 'TENTI GUSNIATI', 'XII IPA 3'),
(361, 'Jeliza Adinda. JR', 'P', '0046424541', 'Payakumbuh', '2004-06-03', 'Islam', 'Guguak', 'Jefrizon', 'Elya Roza', 'XI IPA 2'),
(362, 'Jestin Hardexia', 'L', '3059342098', 'Koto Tangah Simalanggang', '2004-08-17', 'Islam', 'Simpang Tiga Kenanga', 'Deni Eka Putra', 'Haryade', 'XI IPS 1'),
(363, 'JIHAN ALIFIA ARIYANI', 'P', '0056402783', 'PAYAKUMBUH', '2005-11-27', 'Islam', 'KURANJI', 'Suria', 'MARNIATI', 'X IPA 4'),
(364, 'JIHAN FIDHYATMI', 'P', '0041919128', 'Payakumbuh', '2004-08-21', 'Islam', 'Pincuran Betung', 'MUHAMMAD BAHSAN ALBANA', 'WALISMI', 'XII IPA 2');
INSERT INTO `siswa` (`id`, `nama`, `Jenis_kelamin`, `nisn`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `nama_ayah`, `nama_ibu`, `kelas`) VALUES
(365, 'Jonathan Mulia', 'L', '0068474346', 'Payakumbuh', '2006-05-29', 'Islam', 'Guguk Nunang', 'Jonianto', 'Lia Gustina', 'X IPS 3'),
(366, 'Jovanka Vara Dila', 'P', '0041824624', 'Jakarta', '2004-08-07', 'Islam', 'Lubuak Simato', 'Nasril Sultan Syarif', 'Lisa Susanti', 'XI IPA 1'),
(367, 'Juandino', 'L', '0045657675', 'Mungka', '2004-06-02', 'Islam', 'Jorong Ketinggian Kenagarian GUguak VIII Koto', 'Mahdya Roki', 'Maswina Ariani', 'XI IPS 4'),
(368, 'JUMADIL HAKIM', 'L', '0079920601', 'KUBANG', '2007-04-30', 'Islam', 'KUBANG TUNGKEK', '', 'YULI ARISCA', 'X IPA 2'),
(369, 'JUNITA', 'P', '0059009498', 'TIAKAR', '2005-06-06', 'Islam', 'JORONG TIAKAR', 'RUSDI', 'ELIAWATI', 'X IPA 2'),
(370, 'Kailatul Rahmi', 'P', '0037633700', 'Tabek Panjang', '2003-10-21', 'Islam', 'Guguk Nunang', 'Ali Usman', 'Titi Suprapti', 'XI IPS 5'),
(371, 'KANADWI LARETISI', 'P', '0069272193', 'LUBUAK SIMATO', '2006-03-08', 'Islam', 'LUBUAK SIMATO', 'Jendrina Putra', 'YELNI PUTRI', 'X IPA 4'),
(372, 'KARINA ADRIA KATRIAN', 'P', '0057146960', 'PAYAKUM BUH', '2005-11-19', 'Islam', 'SULIKI PASAR', 'PONRI YAGUS AFENDI', 'NASMA YULIA FITRI', 'X IPA 3'),
(373, 'Karine Lovia Falenika', 'P', '0068140973', 'Batu Galeh', '2006-02-02', 'Islam', 'Lubuak Simato', 'Doni Candra', 'Yuni Siska Maria', 'X IPS 2'),
(374, 'KARMILA RAHMADINA', 'P', '0053630080', 'MUNGKA', '2005-10-05', 'Islam', 'SIMPANG TIGA KENANGA', 'Gemis', 'YELIA SUSANTI', 'X IPS 3'),
(375, 'Kartika Anggraini', 'P', '0042258283', 'Tabek Panjang', '2004-01-25', 'Islam', 'Kubang Tungkek', 'Afrizal', 'Mira Aliyunirda', 'XII IPS 5'),
(376, 'KASIH IFRIANTI', 'P', '0052586369', 'TABEK PANJANG', '2005-12-27', 'Islam', 'GUGUAK', 'M. Ifral', 'NOFRINI YUNITA', 'X IPA 3'),
(377, 'Kasihntan Sukma Bunda', 'P', '0035873298', 'Baruah Gunuang', '2003-11-30', 'Islam', 'Baruah Gunuang', 'Agus Miwanto', 'Esni Mardeli', 'XII IPS 1'),
(378, 'Kesti Citra', 'P', '0046374250', 'Lubuak Simato', '2004-11-26', 'Islam', 'Lubuak Simato', 'Replitasmen', 'Jumati', 'XI IPA 4'),
(379, 'Kesya Vhibia Putri', 'P', '0042212312', 'Bikuttinggi', '2004-02-15', 'Islam', 'Sipingai', 'Basripon', 'Yanda Novita', 'XII IPS 3'),
(380, 'KHAILA FITRIA RAMADHANI', 'P', '0058866852', 'PIOBANG', '2005-10-11', 'Islam', 'LOKUANG', 'EWIN IRIADI', 'AMOY FERONIKA', 'X IPA 2'),
(381, 'KHAIRA MAULANI', 'P', '0052436465', 'KURANJI', '2005-05-22', 'Islam', 'JORONG KURANJI', 'ALMAIZAR', 'ARDINA PUTRI', 'XI IPS 2'),
(382, 'Khairinisa Afdila', 'P', '0044405795', 'Bukit Tinggi', '2004-10-03', 'Islam', 'Padang Jopang', 'Benni Afrianto', 'Roza Emildawati', 'XI IPA 3'),
(383, 'KHAIRUN ANNISA', 'P', '0029848858', 'Tabek Panjang', '2002-10-17', 'Islam', 'Belubus', 'Risnaldi', 'Sunarti', 'XII IPS 2'),
(384, 'KHAIRUNNISA ALIFA', 'P', '0059878228', 'PEKANBARU', '2005-03-01', 'Islam', 'Pincuran Botuang', 'YUHALDI', 'ALIF NINGSIH', 'XI IPA 1'),
(385, 'KHALIKUS IKHLAS', 'L', '3041755408', 'Sipingai', '2004-07-01', 'Islam', 'Sipingai', 'Afyuddin', 'Ernalinda', 'X IPS 5'),
(386, 'Khalisha Azzahra', 'P', '0035896244', 'Tulang Bawang', '2003-12-14', 'Islam', 'Guguak', 'Yuli Ampera Erfin', 'Linda Riny Oktavia', 'XII IPA 4'),
(387, 'Kiki Gantari', 'L', '0052778413', 'Ampang Gadang', '2005-01-24', 'Islam', 'Kubang Tungkek', 'Iswarman', 'Erninda', 'XI IPS 2'),
(388, 'KITTI ANDRIANI', 'P', '0029208526', 'Mungka', '2002-01-23', 'Islam', 'Koto Tuo', 'UJANG', 'IRMAWATI', 'XII IPS 2'),
(389, 'KURNIA FAJAR ILLAHI', 'P', '0051347149', 'Payakumbuh', '2005-02-22', 'Islam', 'Jorong Belubus', 'Yurzal', 'Nurhayati', 'XI IPA 2'),
(390, 'Kurnia Ramadhan Bintang Ariade', 'L', '0045958127', 'Payakumbuh', '2004-11-02', 'Islam', 'Jorong Baliak', 'Ade Putra', 'Ade Fitriani', 'XI IPA 1'),
(391, 'LAILA PERMATA SARI', 'P', '0055386379', 'KOTO BARU SMLG', '2005-06-24', 'Islam', 'TIAKAR', 'Suhendri', 'ERMA JUITA', 'X IPA 3'),
(392, 'LAILA TASYA MAULIDIA', 'P', '0042708492', 'MEDAN', '2004-05-01', 'Islam', 'KURANJI', 'SUPRIONO', 'MISLIATI', 'XII IPS 4'),
(393, 'Lara Andini Putri', 'P', '0046058016', 'padang kandi', '2004-08-24', 'Islam', 'padang kandi', 'Refrizal', 'Esi Susanti', 'XI IPS 4'),
(394, 'LARASATI ASNAWI', 'P', '0064365178', 'Pekanbaru', '2006-01-05', 'Islam', 'Jl. Gelugur Gg. Gelugur', 'Adril', 'Erlina', 'X IPA 1'),
(395, 'Latifah Khairunnisa', 'P', '0035979993', 'Padang Japang', '2003-08-23', 'Islam', 'Tanjung Jati', 'Yunaldi', 'Yelvi Syam', 'XII IPA 2'),
(396, 'LATIVA INDA PRAWANSYAH', 'P', '0026796634', 'Datar', '2002-11-05', 'Islam', 'Jr.Datar', 'Syahrial', 'Afrida Nurdias', 'XI IPS 4'),
(397, 'LAURA PUTRI FENINDRA', 'P', '0045467033', 'Koto Baru Smlg', '2004-07-02', 'Islam', 'Tanmalaka', 'M. INDRA', 'PENI RAHMA YANTI', 'XI IPS 1'),
(398, 'LEJIA ARTHA', 'P', '0049119200', 'PADANG LOWEH', '2004-04-30', 'Islam', 'TALANG', 'MULYADI', 'WIWI SUSANTI', 'XI IPA 2'),
(399, 'LESTARI ANDRIANI', 'P', '0056798852', 'Guguk Nunang', '2005-03-03', 'Islam', 'Belubus', 'Suhanda', 'Norinis', 'X IPS 3'),
(400, 'LINDA WATI', 'P', '0045958413', 'KUBANG', '2004-07-17', 'Islam', 'KOTO BARU', 'PARLINDUNGAN', 'NILA WATI', 'XI IPS 2'),
(401, 'LIRA SONIA', 'P', '0045975442', 'DANGUNG-DANGUNG', '2005-04-27', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'SAFMAIDIA', 'RINI MEDIA PUTRI', 'XI IPA 1'),
(402, 'LIZA RATNA SARI', 'P', '0035930032', 'MUNGKA', '2003-12-25', 'Islam', 'SOPAN', 'MASRI UJANG', 'YARTI  ISNEL', 'XII IPA 1'),
(403, 'LONIA KHAIRANI', 'P', '0017315867', 'Dangung-Dangung', '2001-05-26', 'Islam', 'Kubang Tungkek', 'Yusriadi', 'Erawati', 'XI IPS 5'),
(404, 'Lovela Marsalona', 'P', '0054344957', 'Mungka', '2005-11-13', 'Islam', 'Jorong Balai Mansiro Kenagarian Guguak VIII Koto', 'Weky Kurnia', 'Wira Anggraini', 'X IPA 2'),
(405, 'LUNA AIFA LIYA', 'P', '0051994943', 'BUKITTINGGI', '2005-01-15', 'Islam', 'Jorong Balai Mansiro Kenagarian Guguak VIII Koto', 'Jenizar', 'NOVITA SRI YANTI', 'XI IPA 1'),
(406, 'Luthfia Natasya Chania', 'P', '0049359580', 'Muliorejo', '2004-12-26', 'Islam', 'Jl. Setia Ujung', 'Heryanto Chan', 'Fajar Mutia', 'XII IPS 5'),
(407, 'M Aqil Ferinda', 'L', '0036125495', 'Guguk', '2001-12-30', 'Islam', 'Kuranji', 'Pamrizal', 'Indrawati', 'XII IPA 4'),
(408, 'M FAHRI AKBAR ARROYAN', 'L', '0063734462', 'TABEK PANJANG', '2006-06-26', 'Islam', 'GUGUAK', 'Jon', 'SEPRI YANTI', 'X IPS 3'),
(409, 'M FAIZ ALFAUZI', 'L', '0054763201', 'PAYAKUMBUH', '2005-04-03', 'Islam', 'TARATAK', 'HUSNIL FAUZI', 'MIRA HAYATI', 'X IPA 1'),
(410, 'M Rezeki Azani Putra', 'L', '0044552392', 'Dalam Koto', '2004-05-12', 'Islam', 'Dalam Koto', 'Afrizul', 'nuthayati', 'X IPS 1'),
(411, 'M Rivanda Sembiring', 'L', '0041995908', 'Namu Ukur', '2004-08-19', 'Islam', 'Balai Talang', 'Salomo', 'Mesra Juliani', 'XI IPS 3'),
(412, 'M. AGUNG', 'L', '0053266977', 'Belubus', '2005-06-02', 'Islam', 'Jorong Belubus', 'Uyung Oktavia', 'Wirda Nengsih', 'X IPS 2'),
(413, 'M. AHSANUL FIKRI', 'L', '0055847487', 'BARUAH GUNUANG', '2005-03-09', 'Islam', 'BARUAH GUNUANG', 'Ardi', 'ALNITA YENTI', 'X IPS 4'),
(414, 'M. ALDI', 'L', '0047270332', 'KOTO BARU SIMALANGGANG', '2004-11-29', 'Islam', 'TABEK PANJANG', 'Jafrizal', 'DARNIATIS', 'X IPA 3'),
(415, 'M. Ariel', 'L', '0054345669', 'Kampung Tangah', '2005-04-02', 'Islam', 'Kampung Tengah', 'Warmen', 'Retnawati', 'X IPS 5'),
(416, 'M. ASKA MUZAKI', 'L', '0061010952', 'GUGUK', '2006-01-17', 'Islam', 'TIAKAR', 'M. Syahrul', 'NOVIA HARLINA', 'X IPS 2'),
(417, 'M. AZIZS MAULANA', 'L', '0064689816', 'KUBU GADANG', '2006-04-05', 'Islam', 'TAEH BARUAH', 'Imon', 'DESRI YONALTI', 'X IPA 4'),
(418, 'M. Fadel Nugraha', 'L', '0046887915', 'Guguak', '2004-08-07', 'Islam', 'Kubang Tungkek', 'Lazuardi Eka Putra', 'Tuti Arianti', 'XI IPS 5'),
(419, 'M. Farhan Felidanus', 'L', '0049770415', 'Padang Japang', '2004-06-21', 'Islam', 'Padang Jopang', 'Felizar', 'Usmaniar', 'XII IPS 5'),
(420, 'M. FHATUR ALFARIZI', 'L', '0026090748', 'MUNGKA', '2002-09-13', 'Islam', 'KOTO TUO MUNGKA', 'MUCHTARUDDIN', 'ENIS', 'XII IPA 3'),
(421, 'M. Hendra Revano', 'L', '0057123249', 'Guguk Nunang', '2005-06-14', 'Islam', 'Guguk Nunang', 'Hendri Warman', 'Yora Deswita', 'X IPA 2'),
(422, 'M. IBRAHIM MOVIC', 'L', '0047655632', 'KALUDAN', '2004-12-04', 'Islam', 'KALUDAN', 'KENEDI ANDRI', 'NORA PURNAMA', 'XI IPS 3'),
(423, 'M. IDRIS', 'L', '0035873352', 'TIAKAR', '2003-09-29', 'Islam', 'TIAKAR', 'YANRIZAL', 'MEGA SATRIA', 'XII IPA 2'),
(424, 'M. ILMI SYAHRUL RAMADHAN', 'L', '0054554346', 'PEKANBARU', '2005-10-09', 'Islam', 'BELUBUS', 'Hendra Irawan', 'LIA ANDRIANI', 'X IPA 4'),
(425, 'M. KARIM', 'L', '0059843827', 'MUNGKA', '2005-10-22', 'Islam', 'KETINGGIAN', 'Mahdya Roki', 'MASWINA ARIANI', 'X IPA 4'),
(426, 'M. LATIF HAKIKI', 'L', '0069018118', 'MUNGKA', '2006-03-04', 'Islam', 'SIMPANG TIGA KENANGA', 'YOFI FEBRIANTO', 'ELIZABET', 'X IPA 3'),
(427, 'M. NADHIF RAMADHAN', 'L', '0035896289', 'Kuranji', '2003-10-30', 'Islam', 'KURANJI', 'YON EFRIZAL', 'Rahmawati', 'XII IPS 2'),
(428, 'M. PADIL ZIKRI', 'L', '0029456007', 'PAYAKUMBUH', '2003-02-20', 'Islam', 'Belubus', 'Erdiman', 'Rosnita', 'XII IPS 3'),
(429, 'M. RAMADHANI', 'L', '0034169375', 'GUGUK', '2003-11-07', 'Islam', 'GUGUAK', 'Jasrul', 'Zulnatri', 'X IPS 3'),
(430, 'M. Rayhan Agsyandra', 'L', '0045008319', 'Padang Japang', '2004-08-27', 'Islam', 'Padang Jopang', 'Syafril Gani', 'Nora Gustina', 'XII IPA 2'),
(431, 'M. Syah Alam Munawar', 'L', '0051994005', 'Kuranji', '2005-04-07', 'Islam', 'Kuranji', 'Afrinal', 'Meliawati', 'X IPA 4'),
(432, 'M. Vajri', 'L', '0046455322', 'Koto Baru', '2004-07-05', 'Islam', 'Koto Baru Mungka', 'Yusran', 'Neni Yaslinda', 'XI IPA 1'),
(433, 'M. ZIKRI', 'L', '0042118504', 'KUBU GADANG', '2004-08-24', 'Islam', 'JORONG MUNGKA TENGAH', 'ERWANDI', 'PETTRI AIDA', 'XI IPS 1'),
(434, 'M. Zikri Gusriansyah', 'L', '0028636479', 'Guguk Nunang', '2003-08-16', 'Islam', 'Guguk Nunang', 'Rudi Iskandarsyah', 'Asmita', 'X IPA 4'),
(435, 'M.FADIL ILLAHI', 'L', '0054963462', 'KOTO BARU SMLG', '2005-04-06', 'Islam', 'Jln.Tanmalaka', 'SYAFRI YENDI', 'ENRI HEPPY', 'XI IPS 2'),
(436, 'M.FADLAN', 'L', '0026090236', 'BUKITTINGGI', '2004-08-01', 'Islam', 'MUNGKA TENGAH', 'EMIL SAPUTRA', 'ZURNITA', 'XI IPS 4'),
(437, 'M.REHAN PUTRA GAZANA', 'L', '0042118540', 'KUBU GADANG', '2004-04-14', 'Islam', 'PADANG KOTO TUO', 'AFRINALDI', 'ZURDI MEGAWATI', 'X IPS 4'),
(438, 'M.Rifki Ardi', 'L', '0035873390', 'Tabek Panjang', '2003-12-01', 'Islam', 'GUGUAK', 'Doni Ardi', 'Weli Yanti', 'XII IPS 4'),
(439, 'M.Robby Saputra', 'L', '0048324069', 'Bangkinang', '2004-09-14', 'Islam', 'Koto Gadang Maek', 'Robert Masmar', 'Aprilia Susanti', 'XI IPS 1'),
(440, 'MAGHFIRA RAURATUL INSANI', 'P', '0035930118', 'BALAI TAMPUAK PINANG', '2003-04-13', 'Islam', 'BALAI TAMPUAK PINANG', 'ESPI MULYADI', 'LILA ELPEPI', 'XII IPA 2'),
(441, 'Maharani Fauziah', 'P', '0042090643', 'Kuranji', '2004-03-05', 'Islam', 'Belubus', 'Mardi Bagindo Malin', 'Helteti', 'XII IPS 5'),
(442, 'MAIDINA PUTRI', 'P', '0052693014', 'Simalanggang', '2005-05-16', 'Islam', 'LABUAH LINTANG', 'UTIRIMAN', 'DEWI', 'X IPS 2'),
(443, 'MAISYARATUL FADRI', 'P', '0054585618', 'TALANG', '2005-08-13', 'Islam', 'TALANG', 'Ulfadri', 'RIVA KURNIA', 'X IPA 1'),
(444, 'MARDHATUL AFIF', 'L', '0052555493', 'KUBANG', '2005-08-18', 'Islam', 'GUGUAK', 'Syaiful Miarto', 'NENI ARIOS ROZEL', 'X IPA 1'),
(445, 'Mardiah Hayati', 'P', '0035873350', 'Tiakar', '2003-07-15', 'Islam', 'Tiakar', 'Amrizal', 'Edneli Irawati', 'XII IPS 1'),
(446, 'MARSHA DWI AGRIAN', 'P', '0064965119', 'MUNGKA', '2006-08-14', 'Islam', 'PADANG LAWAS', 'ANDRI  SRI YANTO', 'ELFI RIKA', 'X IPS 1'),
(447, 'MARSYA ELIA PUTRI', 'P', '0059831150', 'MUNGKA', '2005-02-06', 'Islam', 'DUSUN NAN DUO', 'Afrizon', 'DAHTIARMON', 'X IPS 3'),
(448, 'Marta Gina Hidayati', 'P', '0061969525', 'Tabek Panjang', '2006-03-06', 'Islam', 'Guguak', 'AFRI YASMAN', 'Ilnawati', 'X IPA 4'),
(449, 'Maulana Haziq Firdaus', 'L', '0025993325', 'Bukittinggi', '2002-10-21', 'Islam', 'Guguak', 'Jasmijol', 'Nelia Irawati', 'XII IPS 5'),
(450, 'Maulidheyna Bayora', 'P', '0035835399', 'Payakumbuh', '2003-05-17', 'Islam', 'Limbanang', 'Edy Zen', 'Wilda Fiarti', 'XII IPA 4'),
(451, 'MAULIDI IHSAN', 'L', '0023914918', 'SIMALANGGANG', '2002-06-02', 'Islam', 'PARIT DALAM', 'ZULSAFRIZON', 'ASMI DARNIS', 'XI IPS 4'),
(452, 'Maulidina Ulfi', 'P', '0055420795', 'Guguak', '2005-05-06', 'Islam', 'Guguak', 'Yarma Helisol', 'Yen Elvi', 'XI IPS 1'),
(453, 'Mayang Dwi Aisyah', 'P', '0053461199', 'Dalam Koto', '2005-05-31', 'Islam', 'Dalam Koto', 'Wandi', 'Roza Trisani', 'X IPA 4'),
(454, 'MAYANG SARI', 'P', '0052733791', 'DALAM KOTO', '2005-05-17', 'Islam', 'PARIT DALAM', 'Zulsafrizon', 'ASMIDARNIS', 'X IPS 3'),
(455, 'MEGA SAPUTRI', 'P', '0033268717', 'GUGUK', '2003-07-10', 'Islam', 'GUGUAK', 'EDIWAR', 'ERNIWITA', 'XII IPS 2'),
(456, 'MEIDIANDA ZARINAH PUTRI', 'P', '0042070320', 'Pua Data', '2004-05-28', 'Islam', 'Pua Data', 'Maidya Junaidi', 'Desi Ramayanti', 'XI IPA 3'),
(457, 'MEILITA DWI ANGGRAINI', 'P', '0045593867', 'Palembang', '2004-05-27', 'Islam', 'TANJUNG BARULAK', 'SURYANTO', 'DESRA MAEZENI', 'XII IPS 2'),
(458, 'MEISYA NURUL AZIZAH', 'P', '0056538610', 'DANGUNG-DANGUNG', '2005-05-24', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'JAFRIAL', 'LILI AFNI WATI', 'X IPS 2'),
(459, 'MELA AYU ASARI', 'P', '0042035585', 'KUBANG', '2004-03-06', 'Islam', 'AMPANG GADANG', 'RIZAL', 'SRI MALA DEWI', 'XI IPS 3'),
(460, 'MELA SRI RAHAYU', 'P', '0051426441', 'TARATAK', '2005-06-15', 'Islam', 'TARATAK', 'Mulyadi Darmal', 'YULIA METRA', 'X IPA 2'),
(461, 'MELLA RAMADIA', 'P', '0055146510', 'DANGUNG-DANGUNG', '2005-04-05', 'Islam', 'TARATAK', 'WARNI AJIS', 'NISWATI', 'X IPS 5'),
(462, 'Melni Shelvia Ramadhanti', 'P', '0025295529', 'Bonjol', '2002-12-02', 'Islam', 'Limbanang', 'Helman', 'Era Yusnita', 'XII IPA 1'),
(463, 'MELSI SAFITRI', 'P', '0069669054', 'Kubang Tungkek', '2006-03-14', 'Islam', 'Kubang Tungkek', 'Ismail', 'Santi', 'X IPS 4'),
(464, 'Meysha Citra Endzamiya', 'P', '0052415326', 'Dumai', '2005-05-06', 'Islam', 'Koto Kociak', 'Jhon Hendri', 'Ermiza Finansih', 'XI IPS 1'),
(465, 'Mhd. Fahrullino Charter', 'L', '0035930126', 'Simalanggang', '2003-09-10', 'Islam', 'Simpang Kapuak', 'Joni Karter', 'Weli Nofia', 'XII IPS 3'),
(466, 'Michel Fazi', 'L', '0035872920', 'Soriak', '2003-08-23', 'Islam', 'Soriak', 'Yon Faizir', 'Endang Susi Molina', 'XII IPS 4'),
(467, 'MIFTAHUL HANIFAH', 'P', '0063383085', 'KURANJI', '2006-05-24', 'Islam', 'JORONG KURANJI', 'MATRUDI EFENDI', 'DESNIATI', 'X IPA 3'),
(468, 'MIFTAHUL RIZKI', 'L', '0045671878', 'Guguak', '2004-12-31', 'Islam', 'Jorong Tiakar ', 'Refriardi', 'Yulia Zen', 'XI IPS 2'),
(469, 'MITO HABIL', 'L', '0056131716', 'TALANG', '2005-03-14', 'Islam', 'TALANG', 'DON FIKAR', 'DELMI', 'X IPS 5'),
(470, 'MOH. AQEEL RASYID', 'L', '0067584542', 'PADANG', '2006-01-16', 'Islam', 'Kubang', 'MOH.SYUKRI.SE', 'FITRIYAH AZWIR', 'X IPA 1'),
(471, 'MONICA PERMATA SARI', 'P', '0018719795', 'KOTO BARU', '2001-07-12', 'Islam', 'MUNGKA', 'Hendri Mulyadi. S', 'DESMILEL FITRA', 'XII IPS 5'),
(472, 'MONICA WIDIANTI', 'P', '0035919508', 'KAMPUNG TANGAH', '2003-07-31', 'Islam', 'TALANG', 'DODI ARIANTO', 'ANDRI YANTI', 'XI IPS 1'),
(473, 'MUHAMAD ALDI', 'L', '0032875296', 'KOTO BARU', '2003-08-21', 'Islam', 'Koto Baru Simalanggang', 'SYAMSUNIBAR', 'DARNI', 'XII IPS 1'),
(474, 'Muhamad Aziz', 'L', '0051363723', 'Guguk Nunang', '2005-07-23', 'Islam', 'Guguk Nunang', 'Agus Roli', 'Asna Yesi', 'X IPA 3'),
(475, 'MUHAMAD HABIL', 'L', '0058346608', 'TABEK PANJANG', '2005-07-03', 'Islam', 'JR TALAO BUKIT APIT', 'EKISMAN', 'ELDA MELIA', 'X IPA 4'),
(476, 'MUHAMAD HASSAN GHANI', 'L', '0046895067', 'Ampang Gadang', '2004-11-12', 'Islam', 'Jl. Mahkota Alam Raya', 'Exoven', 'Dewi Nopita', 'XI IPS 5'),
(477, 'MUHAMAD ILHAM NURDIN', 'L', '0025295859', 'PEKANBARU', '2002-08-06', 'Islam', 'TIAKAR', 'KHAIRUL', 'YANTI NOVITA', 'XII IPS 2'),
(478, 'Muhammad Aditya', 'L', '0053620238', 'Bekasi', '2005-09-09', 'Islam', 'Guguk Nunang', 'Yudi Amri', 'Refi Susanti', 'XI IPS 5'),
(479, 'MUHAMMAD AL AMIN', 'L', '0036055544', 'MUNGKA', '2003-01-23', 'Islam', 'PADANG HARAPAN', 'JANNATA WIDIANTO', 'LISMAR YURITA', 'XII IPA 2'),
(480, 'Muhammad Al Gazali', 'L', '0057260874', 'Mungka', '2005-05-22', 'Islam', 'Lobuah Lintang', 'Yulkhaidir', 'Delvi Kusmawati', 'XI IPA 2'),
(481, 'MUHAMMAD AL KHAFFI', 'L', '0067880470', 'MUNGKA', '2006-03-29', 'Islam', 'MAUR', 'FERI YODA ASMARA', 'NELLY IRAWATY', 'X IPS 1'),
(482, 'MUHAMMAD ALFIS', 'L', '0044773580', 'PAYAKUMBUH', '2004-11-25', 'Islam', 'SIMPANG GODUANG', 'Warman', 'NELMAWATI', 'X IPS 5'),
(483, 'MUHAMMAD AQIL', 'L', '0031525094', 'Kampung Tengah', '2003-10-23', 'Islam', 'TALANG', 'DON FIKAR', 'DELMI', 'X IPS 1'),
(484, 'MUHAMMAD ASLAM KAMIL', 'L', '0035896281', 'KURANJI', '2003-06-24', 'Islam', 'KURANJI', 'AS AFRION SULASMANTRI', 'RESKA HARMENTI', 'XII IPA 4'),
(485, 'MUHAMMAD DANIL', 'L', '0045656956', 'BARUAH GUNUANG', '2004-11-26', 'Islam', 'BARUAH GUNUANG I', 'Zulhendri', 'MAILIA NORA', 'X IPS 2'),
(486, 'MUHAMMAD DEFRIAL SYAH', 'L', '0032533877', 'GUGUAK', '2002-08-06', 'Islam', 'TIAKAR', 'GUSRIAL PUTRA', 'ADINA', 'XII IPS 3'),
(487, 'MUHAMMAD DZAKI GUMAY', 'L', '0041895322', 'DANGUNG-DANGUNG', '2004-01-17', 'Islam', 'KETINGGIAN', 'YUNIZAR', 'YENI MAIROZA', 'XII IPA 3'),
(488, 'Muhammad Dzakwan', 'L', '0026735470', 'Payakumbuh', '2002-11-01', 'Islam', 'Padang Jopang', 'Riadi', 'Ardes Marfita', 'XII IPA 2'),
(489, 'Muhammad Fadhil Adscon', 'L', '0046212118', 'Koto Tangah Simalanggang', '2004-02-07', 'Islam', 'Jorong Koto Tuo', 'HASAN', 'LISMALIZA', 'X IPS 4'),
(490, 'Muhammad Fadhli', 'L', '4033809199', 'Bukittinggi', '2003-06-15', 'Islam', 'Koto Baru Simalanggang', 'Epi Gusnanto', 'Nurhidayati', 'XI IPS 3'),
(491, 'MUHAMMAD FAJAR ILHAM', 'L', '0021102171', 'Simpang Sugiran', '2002-07-15', 'Islam', 'SIMPANG SUGIRAN', 'EDI WARMAN', 'WELNI', 'XII IPS 1'),
(492, 'MUHAMMAD FARHAN', 'L', '0067220873', 'TANJUNG PATI', '2006-04-09', 'Islam', 'TALANG', 'AFRIZAL', 'LAILA NISMA', 'X IPS 5'),
(493, 'MUHAMMAD FERDI', 'L', '0052561805', 'Bunga Tanjung Maek', '2005-03-29', 'Islam', 'Jorong Bunga Tanjung', 'YOHANIS', 'PELMA YENITA', 'X IPA 2'),
(494, 'MUHAMMAD HABIB', 'L', '0057249680', 'PAYAKUMBUH', '2005-04-15', 'Islam', 'KETINGGIAN', 'Yusrizal', 'NOVI SUSANTI', 'X IPA 3'),
(495, 'MUHAMMAD HABIL PUTRA HERMANTO', 'L', '0051057397', 'PADANG', '2005-04-05', 'Islam', 'BALAI TALANG', 'Hermanto', 'ELMIATI', 'X IPS 2'),
(496, 'MUHAMMAD HAFIS', 'L', '0045657863', 'PIOBANG', '2004-05-15', 'Islam', 'JR TALAO BUKIT APIT', 'DUMAIRI', 'ASNIDA WERNI', 'XI IPS 3'),
(497, 'MUHAMMAD HAFIZD', 'L', '0054058321', 'MUNGKA', '2005-01-11', 'Islam', 'LUBUAK SIMATO', 'Masril Umar', 'LIZA WARTI', 'X IPA 3'),
(498, 'MUHAMMAD HAIKAL', 'L', '0045657687', 'AMPANG GADANG', '2004-12-04', 'Islam', 'AMPANG GADANG', 'ARHAM ARDI', 'ROSDIANA', 'XI IPA 3'),
(499, 'Muhammad Hamdan', 'L', '0026092524', 'Mungka', '2002-06-13', 'Islam', 'Talang Maur', 'Yalminas', 'Cinta Nelwati', 'XII IPA 4'),
(500, 'Muhammad Hanif', 'L', '0054197351', 'Suliki', '2005-12-24', 'Islam', 'suliki baruah', 'Rismen', 'yetra nefi', 'X IPS 2'),
(501, 'Muhammad Harry Mukhti', 'L', '0055402603', 'Guguk Nunang', '2005-09-22', 'Islam', 'Guguk Nunang', 'Sunarto', 'Susi Herlina', 'X IPA 2'),
(502, 'Muhammad Hasbi', 'L', '0053091476', 'Guguk', '2005-03-01', 'Islam', 'Guguk Nunang', 'Arsiswa (nama,Jenis_kelamin,nisn,tempat_lahir,tgl_', 'Efni Dewita', 'XI IPA 3'),
(503, 'Muhammad Haykal', 'L', '0042002168', 'Payakumbuh', '2004-09-27', 'Islam', 'Talago', 'Kasmaizal', 'Hirda Nengsih', 'XI IPA 1'),
(504, 'MUHAMMAD IBRA', 'L', '0027933749', 'MUNGKA', '2002-01-22', 'Islam', 'MUNGKA TENGAH', 'AZENDI PUTRA', 'WERI YULIA', 'XI IPS 2'),
(505, 'Muhammad Ihsan', 'L', '0053445790', 'Payakumbuh', '2005-04-04', 'Islam', 'Batu Nan Limo', 'Amril Rais', 'Susridawati. R', 'XI IPS 5'),
(506, 'MUHAMMAD IKHSAN MUTORIK', 'L', '0025938478', 'Aur Duri ', '2002-12-06', 'Islam', 'Aur Duri', 'Awal Tri warni', 'Nurseflinda', 'XI IPS 3'),
(507, 'Muhammad Iqbal', 'L', '0025938513', 'Koto Gadang', '2002-06-23', 'Islam', 'Koto Gadang Maek', 'Cal Putra', 'Reni Nafitri', 'XI IPS 5'),
(508, 'MUHAMMAD NICKY KURNIAWAN', 'L', '0052751253', 'Bukittinggi', '2005-07-14', 'Islam', 'Kubu Gadang', 'Ikrar Dinata', 'Seprianda', 'XI IPA 3'),
(509, 'MUHAMMAD NUR HARYO DWI PANGGA', 'L', '0046214264', 'Kubu Gadang', '2004-12-17', 'Islam', 'Kubu Gadang', 'Sagiman', 'Dewita Wirnayeti', 'X IPS 3'),
(510, 'MUHAMMAD PINTO', 'L', '0046214259', 'Kubu Gadang', '2004-10-05', 'Islam', 'Kubu Gadang', 'Ambri', 'Wantrio Putri', 'X IPS 3'),
(511, 'MUHAMMAD RAFI', 'L', '0051248141', 'PAYAKUMBUH', '2005-09-29', 'Islam', 'Tambun Ijuk', 'DARMAWAN', 'MEIRINA', 'X IPA 1'),
(512, 'MUHAMMAD RAFI AMILTON', 'L', '0056647804', 'KOTO BARU', '2005-05-18', 'Islam', 'KOTO BARU', 'ZENDRA', 'NOVIA WITRI', 'XI IPS 3'),
(513, 'Muhammad Rahim Saputra', 'L', '0036156433', 'Guguk Nunang', '2004-06-30', 'Islam', 'Guguk Nunnag', 'Wira Mustika', 'Yuli Oktavia', 'XII IPS 5'),
(514, 'MUHAMMAD RAJWAL FARID', 'L', '0051053364', 'PAYAKUMBUH', '2005-08-30', 'Islam', 'Padang Koto Tuo', 'Awal Azhari', 'Rina Romela', 'XI IPS 2'),
(515, 'Muhammad Raka Fahrezi', 'L', '0055349005', 'Jakarta', '2005-07-15', 'Islam', 'Padang Parit Panjang', 'Samasdi', 'Yustiti Ningsih', 'XI IPS 2'),
(516, 'MUHAMMAD RAMADHAN. MG', 'L', '0045658775', 'GUGUAK', '2004-10-16', 'Islam', 'KURANJI', 'ADMIRAL', 'GUSNIARTI', 'XI IPS 5'),
(517, 'MUHAMMAD RAZIF', 'L', '0049026038', 'TAEH BARUH', '2004-04-03', 'Islam', 'PADANG KOTO TUO', 'DASRIL', 'ERIA YESI', 'XI IPA 1'),
(518, 'MUHAMMAD REZA AZIZ', 'L', '0042116232', 'Simpang Sugiran', '2004-01-30', 'Islam', 'Bukit Apit', 'ABDUL AZIZ CHAN', 'SYAFNIATI', 'XI IPA 4'),
(519, 'MUHAMMAD REZA FAHLEVI', 'L', '0046460006', 'MUNGKA', '2004-04-14', 'Islam', 'SIMPANG ABU', 'ANDRI ANDI', 'SESI NOFRITA', 'XI IPA 1'),
(520, 'Muhammad Ridho', 'L', '0043607038', 'Koto Tuo', '2004-09-22', 'Islam', 'Koto Tuo Mungka', 'Yusdarso', 'Rita Wati', 'XI IPA 4'),
(521, 'MUHAMMAD RIDWAN', 'L', '0035896064', 'SUNGAI TALANG', '2003-08-04', 'Islam', 'SUNGAI TALANG', 'SOFIANTO', 'PEPI SUSANTI', 'XII IPA 1'),
(522, 'Muhammad Rio', 'L', '0044534045', 'Sumpur Kudus', '2004-07-23', 'Islam', 'Kubang Tungkek', 'Nonti', 'Nuryanti', 'XI IPS 2'),
(523, 'Muhammad Rizki', 'L', '0035854347', 'Duri', '2003-12-12', 'Islam', 'Padang Jopang', 'Multia Indra', 'Erawati', 'XII IPA 2'),
(524, 'MUHAMMAD THARIQ AFIF', 'L', '0035873348', 'TIAKAR', '2003-06-04', 'Islam', 'TIAKAR', 'FERI CANDRA', 'YASNITA DEWI PUTRI', 'XI IPS 2'),
(525, 'MUHAMMAD TIRTA YOGA', 'L', '0054730373', 'Batam', '2005-04-01', 'Islam', 'Kubang Tungkek', 'Abdi Indra', 'Renti Erlinda', 'XI IPS 4'),
(526, 'MUHAMMAD VACHRUL', 'L', '0032632770', 'JOPANG MANGANTI', '2003-01-11', 'Islam', 'MANGANTI', 'INDRA GUNAWAN', 'NOVATMA', 'XII IPA 4'),
(527, 'MUHAMMAD YAASIIN', 'L', '0054419427', 'KUBANG', '2005-03-14', 'Islam', 'KUBANG ', 'Zul Halim', 'RAHMADESI', 'X IPS 1'),
(528, 'MUHAMMAD YASINFA ARISYI', 'L', '0052434403', 'DANGUNG-DANGUNG', '2005-04-20', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'WANDI', 'ANI WINARTI DEWI', 'XI IPS 4'),
(529, 'MUHAZZIB GUSHARI', 'L', '0064098418', 'SULIKI', '2006-08-07', 'Islam', 'KETINGGIAN', 'RIKI RAHMAT', 'NUR HALIMAH', 'X IPA 3'),
(530, 'Mujahidin Alfarizi', 'L', '0044723287', 'Guguk', '2004-08-13', 'Islam', 'Guguak', 'Zil Afham', 'Riflen Suharti', 'XI IPS 4'),
(531, 'Mulya Dea Akmal', 'P', '0051583084', 'Mungka', '2005-03-08', 'Islam', 'Jopang', 'Akmal', 'Dewi Susanti', 'XI IPA 1'),
(532, 'MULYA RISKA PUTRI', 'P', '0053360677', 'KOTO BARU SIMALANGGANG', '2005-11-05', 'Islam', 'TABEK PANJANG', 'Mulyadi', 'ROZA GUSTINA', 'X IPS 2'),
(533, 'Mulyana Difa', 'P', '0049068554', 'Guguk Nunang', '2004-08-29', 'Islam', 'Guguk Nunang', 'Indra Mulyadi', 'Winarsih', 'XI IPS 3'),
(534, 'Musaddiq', 'L', '3046583608', 'Kubang', '2004-04-21', 'Islam', 'Koto Baru', 'Muhsin', 'Ernawati', 'XII IPA 4'),
(535, 'MUTHIA AZZAHRA', 'P', '0045975446', 'MUNGKA', '2004-08-04', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'M. RIDHA', 'DESWITRA EKA PUTRI', 'XI IPS 4'),
(536, 'MUTHIARA NAJMY', 'P', '0052070392', 'BANDUNG', '2005-09-27', 'Islam', 'GUGUAK', 'Mulyadi', 'MARTHA EMILIA', 'X IPA 2'),
(537, 'MUTIA GUSRINA PUTRI', 'P', '0053401140', 'Dangung-Dangung', '2005-08-10', 'Islam', 'Tiakar', 'Indra Putra Datuak Andiko', 'Rina Martini', 'X IPS 5'),
(538, 'Mutiara Delvia', 'P', '0057700889', 'Guguak', '2005-03-23', 'Islam', 'Guguak', 'Sofyan Arianto', 'Mitra Linda', 'XI IPA 3'),
(539, 'MUTIARA DINANTY', 'P', '0035873358', 'KUBANG TUNGKEK', '2003-07-14', 'Islam', 'KETINGGIAN', 'RUSMAIDI', 'TITI SUMARNI', 'XII IPS 1'),
(540, 'MUTIARA FITRIA RAHMAN', 'P', '0056187433', 'SULIKI', '2005-12-14', 'Islam', 'SIMMPANG TIGA KENANGA', 'Manrico Putra', 'FIFI DINA SARI', 'X IPA 4'),
(541, 'MUTIARA KASIH', 'P', '0060155190', 'Simpang Sugiran', '2003-11-23', 'Islam', 'Simpang Sugiran', 'RINAL DEFFRIANTO', 'ESSY', 'XI IPA 1'),
(542, 'MUTIARA RIZAL PUTRI', 'P', '0056073990', 'PAYAKUMBUH', '2005-12-04', 'Islam', 'KETINGGIAN', 'Yusrizal', 'RITAWATI', 'X IPA 3'),
(543, 'Nabil Ayatillah', 'L', '0059941171', 'Bekasi', '2005-05-12', 'Islam', 'Belubus', 'Dodi. M', 'Erva Yora', 'XI IPA 3'),
(544, 'NABIL LATUL AKBAR', 'L', '0055451179', 'SULIKI', '2005-05-07', 'Islam', 'BARUAH GUNUANG I', 'Pilman Asmadi', 'DAHLIANTI', 'X IPA 1'),
(545, 'NABILA AISYAH RANI', 'P', '0062553798', 'MUNGKA TENGAH', '2006-01-20', 'Islam', 'MUNGKA TENGAH', 'Budi Anto', 'ONFIA NINGSIH', 'X IPS 5'),
(546, 'NABILA ANA TASYA', 'P', '0045958347', 'SIMPANG SUGIRAN', '2004-11-19', 'Islam', 'LAKUNG SIMPANG SUGIRAN', 'P. DT. PAYUAK', 'YUSNETI', 'XI IPS 3'),
(547, 'NABILA HANA FADIYAH', 'P', '0059344370', 'BATAM', '2005-07-26', 'Islam', 'JORONG BALIAK', 'Indra Meri', 'DEWI SUSIANTI', 'X IPA 2'),
(548, 'NABILA NUR AISYIAH', 'P', '0052268173', 'Kuranji', '2005-08-28', 'Islam', 'Jorong Belubus', 'Rio Sephianto', 'Erliza', 'X IPA 1'),
(549, 'Nabila Ramadhani', 'P', '0069535351', 'Payakumbuh', '2006-10-05', 'Islam', 'Jl. TAN MALAK KUBANG TUNGKEK', 'Afrinaldi Sofyan', 'Weli Fitra', 'X IPA 4'),
(550, 'Nabila Septiyan Zani', 'P', '0008223044', 'Payakumbuh', '2005-09-27', 'Islam', 'Jorong Pauh', 'Yanuardi', 'Etim Marwati', 'X IPA 4'),
(551, 'Nabila Suci Putri', 'P', '0046865016', 'Lima Puluh Kota', '2004-12-14', 'Islam', 'Jorong Sopan Tanah', 'Efendi', 'Iyun', 'XI IPS 2'),
(552, 'Nabila Ulfah', 'P', '0042118436', 'Bukittinggi', '2004-09-21', 'Islam', 'Lobuah Lintang', 'Rudi Harianto', 'Nurhasnah', 'XI IPA 1'),
(553, 'NADARI SALSABILA', 'P', '0052433561', 'MUNGKA', '2005-06-10', 'Islam', 'JORONG TIAKAR', 'GUSRIAL PUTRA', 'ADINA', 'XI IPS 1'),
(554, 'NADIA SALSABIELLA', 'P', '0035873346', 'TIAKAR', '2003-04-29', 'Islam', 'TIAKAR', 'MARDI', 'LILI ATTINA NINGSIH', 'XII IPS 2'),
(555, 'NADIVA KHAIRUNNISA', 'P', '0058408729', 'KOTO BARU', '2005-08-08', 'Islam', 'MUNGKA TENGAH', 'Fahlim Zetra', 'HELMA FITRIENTI', 'X IPS 1'),
(556, 'Nadiyatul Jannah', 'P', '0045670891', 'Payakumbuh', '2004-04-27', 'Islam', 'Batu Kubu', 'Ropiatul Ukba', 'Nil Marwita', 'XI IPA 3'),
(557, 'NAFA IKA PUTRI', 'P', '0037602262', 'Simpang Goduang', '2003-06-06', 'Islam', 'SOPAN', 'YUSRIZAL', 'Nina Wati', 'XII IPA 3'),
(558, 'NAFISAH HENDRI', 'P', '0059902072', 'MUNGKA', '2005-12-15', 'Islam', 'SIMPANG TIGA KENANGA', 'Hendri Sudarno', 'NILAMAWATI', 'X IPS 5'),
(559, 'NAHDATUL NURJANAH', 'P', '0023753955', 'Talago', '2002-09-09', 'Islam', 'Kubang', 'Asmardi', 'Amna', 'XII IPS 3'),
(560, 'NAILA MAI ZAHRA', 'P', '0052948456', 'MUNGKA', '2005-05-30', 'Islam', 'DUSUN NAN DUO', 'Enda', 'DESMI YANTI', 'X IPS 5'),
(561, 'NAILAH SAHASIKA', 'P', '0058511764', 'PAYAKUMBUH', '2005-12-08', 'Islam', 'KURANJI', 'M. Saleh', 'NORITA. SY', 'X IPA 1'),
(562, 'Nailah Salsabila', 'P', '0035953004', 'Baruah Gunuang', '2003-10-13', 'Islam', 'Baruah Gunuang', 'Afrizal', 'Lili Hatul Hayani', 'XII IPS 4'),
(563, 'NAILAL KHAIRIAH', 'P', '0033061074', 'Padang Japang', '2003-04-09', 'Islam', 'Padang Jopang', 'Nurdarisman', 'Syafrida', 'XII IPA 1'),
(564, 'NAJLA KAYYISHA', 'P', '0065793631', 'PAYAKUMBUH', '2006-03-13', 'Islam', 'JORONG TIAKAR', 'AFRIZAL', 'RINI ELFA SARI', 'X IPA 3'),
(565, 'Najwa Azuma', 'P', '0053044381', 'Dharmasraya', '2005-01-30', 'Islam', 'Kubang', 'Zulhanif', 'Mai Yeni', 'XI IPA 4'),
(566, 'Najwa Davina Azqa', 'P', '0061797165', 'Payakumbuh', '2006-01-17', 'Islam', 'Guguak', 'Benny Vitria', 'Syurlindawati', 'X IPA 2'),
(567, 'Nanda Permanika', 'L', '3056949352', 'Solok', '2005-05-09', 'Islam', 'Boncah', 'Rika Rikardo', 'Nining', 'XI IPS 4'),
(568, 'Nandra Chandra Pratama', 'L', '0040137722', 'Banjar', '2004-05-16', 'Islam', 'Kubang Tungkek', 'Donny Candra', 'Lisdia', 'XI IPS 1'),
(569, 'Narko Triswan', 'L', '0043303073', 'Mungka', '2004-09-19', 'Islam', 'Padang Batang Jor. Simpang Tiga Kenanga', 'Iwandi Trisman', 'Rifa Yeli', 'X IPA 2'),
(570, 'Nasya Amelia Putri', 'P', '0041919262', 'Payakumbuh', '2004-03-30', 'Islam', 'Guguak', 'Melhendra', 'Tina Sintia', 'XII IPS 1'),
(571, 'NATASYA NURHIDAYAH', 'P', '0058477311', 'KURANJI', '2005-08-28', 'Islam', 'KURANJI', 'FIRYANDI', 'NENEN PUTRI SUSANTI', 'X IPA 3'),
(572, 'NATASYA SALSABILA', 'P', '0053475637', 'DANGUNG-DANGUNG', '2005-08-28', 'Islam', 'TAN MALAKA', 'CANDRA PUTRA', 'KIKY HANGGARA SAPUTRI', 'X IPS 4'),
(573, 'Natasya Yofariska', 'P', '0045958123', 'Payakumbuh', '2004-09-01', 'Islam', 'Jorong Baliak', 'Yofial', 'Yumfarisna', 'XI IPS 1'),
(574, 'NAUFAL ADRIAN', 'L', '0057644931', 'Payakumbuh', '2005-09-11', 'Islam', 'Pincuran Betung', 'Adrianopel', 'Desnina Suhatri', 'X IPA 3'),
(575, 'NAUFAL ASHIDDIQI', 'L', '0038487644', 'TIAKAR', '2003-09-05', 'Islam', 'TIAKAR', 'ASRUL', 'FUZINEM', 'XII IPS 1'),
(576, 'NAUFAL NABIL ARIQ', 'L', '0056920953', 'Bukittinggi', '2005-12-25', 'Islam', 'KOTO BARU', 'Irman', 'FATIMAH HASNIATI, S.Sos', 'X IPA 4'),
(577, 'Nauval Alim', 'L', '0032980384', 'Padang Japang', '2003-04-09', 'Islam', 'Padang Japang', 'Khairizal', 'Refnida', 'XII IPS 2'),
(578, 'NAVILAH MAYZA', 'P', '0046999318', 'Padang Lawas', '2004-12-01', 'Islam', 'Padang Batang Jor. Simpang Tiga Kenanga', 'Zaifinal', 'Mayeni', 'XI IPA 4'),
(579, 'NAYLA AFIFA RAMADHANI', 'P', '0056400430', 'GUGUK', '2005-11-01', 'Islam', 'GUGUAK', 'Apriadi', 'DESI HASMIANTI', 'X IPS 1'),
(580, 'NAZLA ADENIA PUTRI', 'P', '0069747619', 'PAYAKUMBUH', '2006-01-03', 'Islam', 'AMPANG GADANG', 'Adrizal', 'ENDELI', 'X IPA 1'),
(581, 'NELLA SOPIA', 'P', '0029399433', 'Payakumbuh', '2002-04-24', 'Islam', 'Tanjung Jati', 'Mon Efriadi', 'Netra Iranda', 'XII IPS 3'),
(582, 'NIA NUGRAH EINI', 'P', '0042258285', 'Ampang Gadang', '2004-02-25', 'Islam', 'Kubang Tungkek', 'Zul Azmi', 'Yusmesra', 'XI IPS 5'),
(583, 'NIGEL VALERYANTO', 'L', '0051993672', 'Payakumbuh', '2005-04-16', 'Islam', 'Kubang Tungkek', 'YARSI EKA SANTO', 'YOSSI SAHAR ', 'XI IPA 3'),
(584, 'NIKEN MAIPUTRI YULIANTI', 'P', '0044101341', 'Kubu Gadang', '2004-02-15', 'Islam', 'Jorong Koto Tuo', 'ADRIANTO', 'YENTI', 'XI IPS 1'),
(585, 'NILAM PERMATA SARI', 'P', '0056684631', 'MUNGKA', '2005-07-01', 'Islam', 'SIMPANG ABU', 'CANDRA', 'YENTI ELFINA', 'X IPS 4'),
(586, 'Nindia Putri Lestari', 'P', '0045962392', 'Dalam Koto', '2004-08-15', 'Islam', 'Dalam Koto', 'Irpendri', 'Yusmainil', 'XI IPA 1'),
(587, 'NINDYA SHAFWA', 'P', '0066661414', 'SUNGAI TALANG', '2006-03-23', 'Islam', 'GUGUAK NUNANG', 'Imalladias', 'WIDARTI', 'X IPS 1'),
(588, 'NOBELIYA RAHMADHANI', 'P', '0051387621', 'MAEK', '2005-10-15', 'Islam', 'KOTO TINGGI II', 'Nofridos', 'DONI NOPITA', 'X IPS 2'),
(589, 'NOLA WULAN DARI', 'P', '0046560883', 'PAYAKUMBUH', '2004-09-29', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'SUBEKTI ALNERI', 'RENI', 'XI IPS 5'),
(590, 'NONI ANJANI', 'P', '0036019550', 'Kuranji', '2003-06-10', 'Islam', 'Belubus', 'Hamdi', 'M e n i', 'XII IPS 4'),
(591, 'Noval Anugerah', 'L', '0037683278', 'Bandung', '2003-11-01', 'Islam', 'Kubang Tungkek', 'Saiful Gani', 'Desi Khairunnisa', 'XII IPA 2'),
(592, 'NOVIA FITRI', 'P', '0045671874', 'Tiakar', '2004-11-15', 'Islam', 'Jorong Tiakar', 'Mursalis', 'Asna Gustimar', 'XI IPS 3'),
(593, 'NUR AINI', 'P', '0035979606', 'Kubu Gadang', '2003-06-09', 'Islam', 'Koto Puji', 'Amin Bin Buaman', 'Wiwina Yulianti', 'X IPS 2'),
(594, 'NUR FADILA', 'P', '0035896153', 'DANGUNG-DANGUNG', '2003-12-08', 'Islam', 'BALAI MANSIRO', 'UJANG SATI', 'PURNAMA WATI', 'XII IPA 3'),
(595, 'Nur Fadillah', 'P', '0046057127', 'Piobang', '2004-07-21', 'Islam', 'Bukik Apik', 'Imsal', 'Teti', 'XI IPA 2'),
(596, 'Nur Hafizah', 'P', '0045974923', 'Kuranji', '2004-08-04', 'Islam', 'Tiakar', 'Yannovi', 'Erlina Gusti', 'XI IPS 4'),
(597, 'NUR MINIS GEA', 'P', '0056982788', 'TALANG', '2005-02-14', 'Islam', 'Talang Maur', 'ABDUL AZIZ NOVE', 'MISRA', 'X IPS 3'),
(598, 'NUR OBY SURISTYAN', 'L', '0059547688', 'KURANJI', '2005-08-25', 'Islam', 'KURANJI', 'SUDIRMAN', 'RISNA DIANTI', 'X IPS 2'),
(599, 'Nuraini', 'P', '0036055548', 'Mungka', '2003-04-09', 'Islam', 'Padang Harapan', 'Irwandi', 'Nurhatina', 'XII IPA 2'),
(600, 'NURFEZA YURTIKA', 'P', '0035896284', 'KURANJI', '2003-08-27', 'Islam', 'KURANJI', 'YURFASOL', 'IRDATI', 'XII IPS 5'),
(601, 'Nurhaimi', 'P', '0068954533', 'Ampang Gadang', '2006-05-09', 'Islam', 'Ampang Gadang', '', 'Dewi Oktavia', 'X IPA 2'),
(602, 'Nurhayati Sasmita', 'P', '3039019557', 'Aur Duri Mahat', '2003-10-18', 'Islam', 'Aur Duri', 'Beni Aswar', 'Mesrawati', 'XI IPS 4'),
(603, 'Nuril Khairin', 'P', '0052552483', 'Koto Tinggi', '2005-05-31', 'Islam', 'Lubuak Aua', 'Khairul Bulkaini', 'Firdawati', 'XI IPA 4'),
(604, 'Nurkhalika Albasirah', 'P', '0052550453', 'Piobang', '2005-02-15', 'Islam', 'Bukik Apik', 'Yuda Mardani', 'Nova Rini', 'XI IPS 4'),
(605, 'NURSAERA', 'P', '0046198048', 'Parumpung', '2004-06-22', 'Islam', 'Jorong Parumpung', 'YULIANDI', 'PEPI HIDAYAT', 'X IPA 1'),
(606, 'NURSYAH BANIL AISYAH', 'P', '0067157546', 'GURUN', '2005-09-21', 'Islam', 'LUBUAK JANTAN', 'ADI BING SLAMET', 'RESI FITRIANA', 'X IPA 1'),
(607, 'Nurul Aini', 'P', '0035979984', 'Kubang', '2003-10-16', 'Islam', 'Kubang', 'Zubir', 'Yurnita', 'XII IPA 3'),
(608, 'Nurul Atika Mayshira', 'P', '0063390025', 'Padang', '2006-05-27', 'Islam', 'Jl. Denai IV/4', 'Agus Tamar', 'Lima Yunis', 'X IPS 4'),
(609, 'NURUL FADHILAH', 'P', '0035896154', 'DANGUNG-DANGUNG', '2003-12-10', 'Islam', 'Jorong Balai Mensiro Kenagarian GUguak VIII Koto', 'Akmal', 'ZUL HASNA', 'XI IPS 3'),
(610, 'Nurul Fauziah', 'P', '0035979434', 'Mungka', '2003-06-10', 'Islam', 'Simpang Tiga Kenanga', 'Fauzi', 'Ade Irma', 'XII IPA 4'),
(611, 'NURUL FAUZIAH', 'P', '0063106448', 'PAUH SANGIT', '2006-01-03', 'Islam', 'SIAMANG BUNYI', 'Nursamson', 'FITRIA MARLENI', 'X IPA 1'),
(612, 'Nurul Karima', 'P', '0044979639', 'Padang Batang', '2004-04-04', 'Islam', 'Padang Batang Jor. Simpang Tiga Kenanga', 'Ulfat Mento', 'Nurda Elen', 'XI IPA 4'),
(613, 'Ofiyandi', 'L', '0032534131', 'Ampang Gadang', '2003-01-13', 'Islam', 'Balai Talang', 'Dodi Saptono', 'Yannismar', 'XII IPA 1'),
(614, 'OLIVIA ANGELA', 'P', '0052413977', 'PERAWANG', '2005-03-30', 'Islam', 'SIMPANG SUGIRAN', 'DODI INDRA', 'SYLVIANI EKA PUTRI', 'XI IPS 3'),
(615, 'OLIVIYA', 'P', '0036176001', 'KOTO TINGGI MAEK', '2003-04-25', 'Islam', 'KOTO TINGGI II', 'DONDI PUTRA', 'LIMRAWATI', 'XII IPA 1'),
(616, 'Pepriatul Sholeh', 'L', '0068022605', 'Taratak', '2006-02-24', 'Islam', 'Taratak', 'Indra Saputra', 'Elmateti', 'X IPS 3'),
(617, 'PERMATA NOVISA', 'P', '0051975499', 'SUNGAI NANING', '2005-04-05', 'Islam', 'SUNGAI NANIANG', 'Wendri Haryadyono', 'SUS PIDA', 'X IPS 1'),
(618, 'Prima Arega Delvio', 'L', '0053864227', 'Kubang Tungkek', '2005-07-31', 'Islam', 'Kubang Tungkek', 'Bakhtiar', 'Eli Marni', 'X IPS 4'),
(619, 'Prima Ramia Ferwana', 'P', '0052437021', 'Dangung-Dangung', '2005-11-13', 'Islam', 'Tan Malaka Balai Talang', 'Feri Atman', 'Pristiowati', 'XI IPS 4'),
(620, 'Puja Elmiati', 'P', '0054648568', 'Sei Antuan', '2005-01-26', 'Islam', 'Lubuak Simato', 'Eldi H', 'Imarni', 'XI IPA 1'),
(621, 'PUSPA DARA JELITA', 'P', '0045657285', 'KALUDAN', '2004-11-25', 'Islam', 'KALUDAN NAGARI SUNGAI TALANG', 'MARJULIS AYU', 'MARNIS', 'XI IPS 3'),
(622, 'PUTRA ONDRIALDI', 'L', '0032636500', 'Kubang Balambak', '2003-04-30', 'Islam', 'Koto Tinggi Kubang Balambak', 'Onrialdi', 'Hayatun Nupus', 'XII IPA 4'),
(623, 'Putri Adinda', 'P', '0035979439', 'Mungka', '2003-07-29', 'Islam', 'Simpang Tiga Kenanga', 'Endi', 'Mimi Farida', 'XII IPA 1'),
(624, 'Putri Afima Hayati', 'P', '0042067911', 'Dangung-Dangung', '2004-02-20', 'Islam', 'Padang Harapan', 'Dalisyon', 'Erma Tuti', 'XI IPA 4'),
(625, 'PUTRI FARADILA', 'P', '0056584324', 'KAMPUNG TANGAH', '2005-10-13', 'Islam', 'KAMPUANG TANGAH', 'Afriza', 'LILA SUSANTI', 'X IPS 4'),
(626, 'PUTRI FAUZIAH', 'P', '0048537532', 'GUGUK', '2004-12-25', 'Islam', 'GUGUAK', 'M.FAUZA', 'EMZARNI', 'XI IPA 2'),
(627, 'PUTRI JUWENDA', 'P', '0056248883', 'TIAKAR', '2005-07-22', 'Islam', 'TIAKAR', 'Weldi Anwar', 'ZULFA NETRA', 'X IPS 4'),
(628, 'Putri Khairatul Hukmi', 'P', '0035979446', 'Mungka', '2003-09-10', 'Islam', 'Korong Jor. Simpang Tiga Kenanga', 'ALSON', 'Dedtitiwarni', 'XI IPS 4'),
(629, 'Putri Patresia', 'P', '0058258768', 'Mungka', '2005-02-09', 'Islam', 'Lubuak Simato', 'Hendrika', 'Neka Susanti', 'X IPA 4'),
(630, 'Putri Regina', 'P', '0045070883', 'Mungka', '2004-07-12', 'Islam', 'Korong Jor. Simpang Tiga Kenanga', 'MASFUL', 'Wirda Hamdan', 'XI IPS 1'),
(631, 'PUTRI WAHYUNI', 'P', '0052414489', 'KUBANG', '2005-06-21', 'Islam', 'KUBANG', 'MELYADI', 'DAHLIA', 'XI IPS 5'),
(632, 'PUTRI WULANDARI', 'P', '0046331639', 'MAUR', '2004-10-11', 'Islam', 'JORONG MAUR', 'AFRIZAL', 'RAHMAWATI', 'XI IPA 3'),
(633, 'QORIAH', 'P', '0035930015', 'SIMPANG ABU', '2003-04-24', 'Islam', 'SIMPANG ABU', 'ZAINAL', 'WARNIS', 'XI IPS 1'),
(634, 'Queenta Shakilla Haswen', 'P', '0045958183', 'Tanjung Jati', '2004-09-14', 'Islam', 'Tanjung Jati', 'Haswen Tardy', 'Reni Martin', 'X IPS 2'),
(635, 'RADIP YUANDA PUTRA', 'L', '0065205043', 'PIOBANG', '2006-04-11', 'Islam', 'LAKUNG SIMPANG SUGIRAN', 'SAFNI YUNIZAL', 'DARTIM', 'X IPS 4'),
(636, 'Radja Rafi Azikra', 'L', '0030957865', 'Padang', '2003-08-29', 'Islam', 'Mungka', 'Andre Mahendra', 'Yulfiza', 'XII IPS 1'),
(637, 'RAFLI DESMANTO', 'L', '0032490669', 'KOTO TINGGI', '2003-01-01', 'Islam', 'KOTO TINGGI', 'DEDI WIRNAS', 'HELMAWATI', 'XII IPA 1'),
(638, 'RAGIL ANTONI', 'L', '0066200127', 'MUNGKA', '2006-02-06', 'Islam', 'SIMPANG ABU', 'Desrianto', 'AFRIYENTI', 'X IPS 2'),
(639, 'Rahfi Aldim', 'L', '0035896011', 'Bukit Apit', '2003-03-02', 'Islam', 'Bukit Apit', 'Zulkifli', 'Eva Safrini', 'XII IPA 3'),
(640, 'RAHIMA HASNA', 'P', '0035043100', 'Ampang', '2003-10-20', 'Islam', 'SIMPANG SUGIRAN', 'DELWI YANDI', 'YUS LAILI', 'XI IPS 3'),
(641, 'RAHMA DIANA FITRI', 'P', '0035919901', 'SIMPANG ABU', '2003-11-14', 'Islam', 'SIMPANG ABU', 'OYONG LIHARTO', 'YANTI', 'XII IPS 2'),
(642, 'RAHMA MULIANI', 'P', '0052096928', 'SULIKI', '2005-11-28', 'Islam', 'Kubang Tungkek', 'AFRIZON', 'IRTATI', 'X IPA 1'),
(643, 'Rahma Oktafia', 'P', '0046199996', 'Kubu Gadang', '2004-10-17', 'Islam', 'Kubu Gadang', 'Riswandi', 'Irlen Deswita', 'XI IPA 3'),
(644, 'RAHMAD AFIF', 'L', '0045976992', 'KURANJI', '2004-06-10', 'Islam', 'KURANJI', 'Indrawan', 'SULASMINI', 'X IPA 4'),
(645, 'Rahmad Vicky Ananda', 'L', '0036596151', 'Kubu Gadang', '2003-06-07', 'Islam', 'Talago', 'Zamperi', 'Ermawati', 'XII IPA 4'),
(646, 'RAHMADEL NURSAL', 'L', '0053823872', 'KOTO TANGAH SIMALANGGANG', '2005-11-02', 'Islam', 'KAMPUANG TANGAH', 'Vigon Nursal', 'YELFI DESMI', 'X IPS 1'),
(647, 'RAHMAH AZZAHRA', 'P', '0049180506', 'Dangung-Dangung', '2004-11-04', 'Islam', 'Dangung-Dangung', 'HENGKI GUSMERI', 'HERLIN MELIANA', 'XI IPA 2'),
(648, 'Rahmah Salsabila', 'P', '0046639767', 'Ampang Gadang', '2004-09-25', 'Islam', 'Ampang Gadang', 'Mhd.Gusril', 'Marleni', 'XI IPS 3'),
(649, 'Rahmat Fahril', 'L', '0047853330', 'Guguk Nunang', '2004-06-06', 'Islam', 'Guguk Nunang', 'Masril', 'Yulmiati', 'X IPA 1'),
(650, 'RAHMAT FAJRI', 'L', '0051993671', 'Dangung-Dangung', '2005-03-04', 'Islam', 'Kubang Tungkek', 'GAZALI', 'MARDIANIS', 'X IPA 2'),
(651, 'Rahmatul Fauzi', 'L', '0035873365', 'Dangung-Dangung', '2003-11-10', 'Islam', 'Guguak', 'Endri Yusmedi', 'Walfa Istati', 'XII IPA 3'),
(652, 'RAHMATUL MAISARAH', 'P', '0041608572', 'PALUPUH', '2004-04-10', 'Islam', 'Mungka Tangah', 'DEDI CHANDRA', 'IRFAH', 'XII IPA 2'),
(653, 'RAHMATUN FIRLI', 'P', '0036019552', 'Belubus ', '2003-07-05', 'Islam', 'Belubus', 'Maskafri', 'Nina Gustia', 'XII IPS 3'),
(654, 'RAHMI AULIA PUTRI', 'P', '0042541470', 'KOTO BARU', '2004-07-02', 'Islam', 'PADANG HARAPAN', 'JONI ANDRIMAL', 'IYUS', 'XI IPA 4'),
(655, 'Rahmi Putri Suci', 'P', '0038838744', 'Batusangkar', '2003-10-27', 'Islam', 'Bulaan', 'Bambang Sumantri', 'Eliza Deflita', 'XI IPA 2'),
(656, 'RAHMI VIONI AULIA', 'P', '0051109838', 'BUKITTINGGI', '2005-01-22', 'Islam', 'Kubang Tungkek', 'JUNIWANTO', 'LISDA VIORA', 'X IPS 3'),
(657, 'Rahmi Yendri irman', 'P', '0051635615', 'Pekan baru', '2005-03-10', 'Islam', 'Jorong Bandar Rait', 'Zondri Irman', 'Yelni Murni', 'X IPA 4'),
(658, 'RAHUL SATRIA PUTRA', 'L', '0039463065', 'BANJA LOWEH', '2003-09-03', 'Islam', 'GUNTUANG', 'HENDRI ROZA', 'HIPRA ETI', 'XII IPS 4'),
(659, 'RAIHAN ARE WUDDA', 'L', '0068955227', 'PAYAKUMBUH', '2006-05-22', 'Islam', 'KOTO BARU SIMALANGGANG', 'Riki Dirsal', 'HELIA FATRI', 'X IPA 1'),
(660, 'RAMADAN', 'L', '0052413982', 'SIMPANG SUGIRAN', '2004-11-11', 'Islam', 'LAKUNG SIMPANG SUGIRAN', 'ALI NAFRI', 'UPIK LILI YULIANTI', 'X IPS 5'),
(661, 'Ramadani Hamidah', 'P', '0046172293', 'Padang Loweh', '2004-11-12', 'Islam', 'Simpang Tiga Kenanga', 'Safra Irwan', 'Yanti Yosfita', 'XI IPA 1'),
(662, 'Ramadhan Niki', 'L', '0036055559', 'Mungka', '2003-11-01', 'Islam', 'Padang Harapan', 'Alfian', 'Nurhayatis', 'XII IPA 1'),
(663, 'Ramadhani', 'L', '0027917210', 'Ampang', '2002-11-12', 'Islam', 'Ampang', 'Mayusri', 'Agusniati', 'XII IPS 5'),
(664, 'Randini Putri', 'P', '0035979453', 'Mungka', '2003-12-05', 'Islam', 'Padang Batang Jor. Simpang Tiga Kenanga', 'Edi Esmanto', 'Betri Yulianda', 'X IPS 5'),
(665, 'Rangga Jumates Fajria', 'L', '0042664540', 'Bukittinggi', '2004-06-11', 'Islam', 'Kubang Tungkek', 'Azwir', 'Elmainar', 'XI IPA 1'),
(666, 'Rangga Maulana Saputra', 'L', '0035865509', 'Bukik Togang', '2003-12-08', 'Islam', 'Simpang Goduang', 'Yasniwar', 'Isnel', 'XI IPA 3'),
(667, 'Rania Annesya', 'P', '0041895310', 'Payakumbuh', '2004-08-03', 'Islam', 'Kubang', 'Nesvy', 'Yanti Eka Putri', 'XII IPA 2'),
(668, 'RANTIKA RAFIANTI', 'P', '0051195694', 'Tandun', '2005-07-07', 'Islam', 'TANDUN', 'JAFRI. J', 'YULNETI', 'XI IPS 2'),
(669, 'RARA PUTRI', 'P', '0067585459', 'TANJUNG JATI', '2006-06-06', 'Islam', 'TANJUNG JATI', 'Eva Rizaldi', 'YESI KASMAR', 'X IPA 4'),
(670, 'RARA WULANDARI', 'P', '0046172042', 'MUNGKA', '2004-08-15', 'Islam', 'JORONG KOTO TUO', 'MUCHTARUDDIN', 'ENIS', 'XI IPA 3'),
(671, 'Ratu Arimbi Zahara', 'P', '0052818892', 'Padang', '2005-08-23', 'Islam', 'Kampung Tengah', 'Andre Mahendra', 'Yelfiza', 'XI IPA 2'),
(672, 'Ratu Cantika Putri', 'P', '0046172290', 'Mungka', '2004-09-12', 'Islam', 'Simpang Tiga Kenanga', 'M. Aguspen', 'Elfinda', 'XI IPS 2'),
(673, 'Raul Prima Gusni', 'L', '0035990012', 'Taratak', '2003-08-29', 'Islam', 'Taratak', 'Andrizal', 'Rozi Fitriza', 'XII IPA 1'),
(674, 'REFIL', 'L', '0052436462', 'TABEK PANJANG', '2005-02-02', 'Islam', 'JORONG TABEK PANJANG', 'RIZA PUTRA', 'YURNA LIZA', 'XI IPS 2'),
(675, 'Regiva Ariyani', 'P', '0066434906', 'Koto Baru', '2006-01-30', 'Islam', 'Koto Baru Simalanggang', 'Gustiar', 'Teti Herawati', 'X IPA 4'),
(676, 'REISTY NUGRAHA ANGGRAINI', 'P', '0042035179', 'BUKITTINGGI', '2004-03-17', 'Islam', 'MUNGKA TENGAH', 'Ir. YENDRI SIKUMBANG', 'LELIYETNA', 'XII IPS 1'),
(677, 'Rena Fadila', 'P', '0064237181', 'Jopang', '2006-02-26', 'Islam', 'Koto Baru Mungka', 'Refinal Indra', 'Rona Hendriana', 'X IPA 3'),
(678, 'RENDI JULIANDA', 'L', '0041987039', 'GUGUK NUNANG', '2004-07-21', 'Islam', 'BUKIT APIT', 'AGUSRIL', 'RENAWATI', 'X IPS 4'),
(679, 'RENGGA PUTRA PERDANA', 'L', '0046057887', 'PAYAKUMBUH', '2004-01-31', 'Islam', 'TARATAK', 'SAFWARMEN', 'ERNI HAFIZA', 'XI IPS 4'),
(680, 'Renggi', 'L', '0032266398', 'Sopan Gadang', '2003-06-30', 'Islam', 'Sopan Gadang', 'Yusrizal', 'Yundra', 'XII IPS 2'),
(681, 'RESI AMELIA PUTRI', 'P', '0036016095', 'KOTO BARU SIMALANGGANG', '2003-08-13', 'Islam', 'Koto Baru Simalanggang', 'NURMAN', 'FATIMAH YENI', 'XII IPA 1'),
(682, 'RESMULLIA', 'P', '0035873369', 'PAYAKUMBUH', '2003-10-22', 'Islam', 'JORONG KURANJI', 'IDRIANTO', 'ERMANIDA', 'XI IPS 5'),
(683, 'RESTINA AMELIA SARI', 'P', '0041956807', 'PAYAKUMBUH', '2004-02-06', 'Islam', 'SIMPANG GODUANG', 'YUHEPNI AMRI', 'SASMIATI', 'XII IPA 3'),
(684, 'Reswani A. Kanahaya', 'P', '0052364641', 'Piobang', '2005-06-09', 'Islam', 'Ampang', 'Budi Firdos', 'Diyen Novita', 'XI IPA 2'),
(685, 'Retno Adifo Utari', 'P', '3048248878', 'Payakumbuh', '2004-01-08', 'Islam', 'Padang Sikabu', 'Riadi', 'Maifo Rezki', 'XII IPA 3'),
(686, 'Reva Herlina', 'P', '0055761711', 'Tabek Panjang', '2005-03-17', 'Islam', 'Guguk Nunang', 'Yudarisman', 'Ria Susanti', 'XI IPA 1'),
(687, 'REVA LINA', 'P', '0056674575', 'Tabek panjang', '2005-01-04', 'Islam', 'Jorong Belubus', 'Ilham', 'Yan Hasna', 'X IPS 2'),
(688, 'REVA LINA AFRIYANI', 'P', '0053645496', 'TANDIKAT', '2005-04-20', 'Islam', 'DANGUNG-DANGUNG', 'ASRIL', 'MUJINAH', 'X IPS 4'),
(689, 'Revanda Violas', 'L', '0026735696', 'Sipingai', '2002-12-28', 'Islam', 'Sipingai', 'Maizar', 'Yulia Mesra', 'XII IPS 3'),
(690, 'Reyvan Zuhuri Maksum', 'L', '0042669133', 'Guguk Nunang', '2004-01-08', 'Islam', 'Guguk Nunang', 'Edwin Maksum', 'Delfarina', 'XI IPS 2'),
(691, 'REZA AULIA NOFITRI', 'P', '0032166003', 'Payakumbuh', '2003-09-28', 'Islam', 'KOTO TUO', 'ZENDRA YAHYA', 'NONI NOVIA', 'XII IPS 4'),
(692, 'REZA MEIZALANDA', 'L', '0036019549', 'Tabek Panjang', '2003-05-11', 'Islam', 'Belubus', 'Afrizal', 'Zulfitri', 'XII IPS 5'),
(693, 'REZI ANITA', 'P', '0026735066', 'KURANJI', '2001-12-30', 'Islam', 'KURANJI', 'HERWADI', 'RESMIATI', 'XII IPS 1'),
(694, 'REZI PUTRI FADIRMAN', 'P', '0035896285', 'KURANJI', '2003-08-30', 'Islam', 'KURANJI', 'NADIRMAN', 'EVA NELI', 'XII IPA 1'),
(695, 'REZKI AMALIA PUTRI', 'P', '0036053627', 'Batam Kota Batam', '2003-01-23', 'Islam', 'Simpang Sugiran', 'ADINUL ASROR', 'KUSTIYAH', 'XII IPA 3'),
(696, 'Rian Astani', 'L', '0002387469', 'Guguk Nunang', '2001-10-06', 'Islam', 'Guguk Nunang', 'Darlius', 'Pardiah', 'XII IPS 2'),
(697, 'RIANA ANDAM DEWI', 'P', '0069244147', 'Tanjung Uban', '2006-01-28', 'Islam', 'Guguk Nunang', 'Sulyefni', 'Helmiyati', 'X IPA 4'),
(698, 'RIDHO ANDHIKA PRATAMA', 'L', '0068360523', 'SIAMANG BUNYI', '2006-11-12', 'Islam', 'SIAMANG BUNYI', 'Nandi Herman Syah', 'EKA PUTRI', 'X IPS 1'),
(699, 'Ridho Firmansyah', 'L', '0035896143', 'Dangung-dangung', '2005-03-20', 'Islam', 'Kubang Tungkek', 'Aan Budi Kurniawan', 'Fitria Rahmi', 'XII IPA 1'),
(700, 'RIKA YULIANTI', 'P', '0017511208', 'SIMPANG ABU', '2001-07-28', 'Islam', 'SIMPANG ABU', 'EZI', 'MURNIATI', 'XII IPS 3'),
(701, 'RIKE FEBRIANI', 'P', '0023757810', 'TIAKAR', '2002-01-07', 'Islam', 'TIAKAR', 'MARTA', 'LIS MAWATI', 'XII IPS 4'),
(702, 'RINDI NATASYA PUTRI', 'P', '3054186698', 'KAMPUANG TANGAH', '2005-07-29', 'Islam', 'KAMPUANG TANGAH', 'Yuneidi', 'Hayatul Yusa', 'X IPS 4'),
(703, 'RINDU MAULANI PUTRI', 'P', '0055602019', 'DALAM KOTO', '2005-04-04', 'Islam', 'Dalam Koto', 'ANDRISMAN', 'NONI MARLINA', 'X IPS 1'),
(704, 'RIRIN HIJRATUL SAADA', 'P', '0031464637', 'Mungka', '2003-06-12', 'Islam', 'Kubang Tungkek', 'Mawardi', 'Inang Dewita', 'XII IPS 3'),
(705, 'RISSA IKA SINTIA', 'P', '0052668855', 'Guguk Nunang', '2005-09-16', 'Islam', 'Jorong Belubus', 'Selvia Delvis', 'Fitria Erlinda', 'X IPA 2'),
(706, 'Rita Ariani Putri', 'P', '0059086852', 'Padang Jopang', '2005-01-06', 'Islam', 'Padang Jopang', 'Heri Nizwar. ZA', 'Reni Marlinda', 'XI IPA 3'),
(707, 'RIVALDO', 'L', '0036551417', 'GUNTUNG', '2003-06-05', 'Islam', 'GUNTUANG', 'ULFI WEDRI', 'ARMIALIS', 'XII IPS 1'),
(708, 'RIVALDO KHAIRUSSALIM', 'L', '0041919607', 'Jakarta', '2004-02-12', 'Islam', 'Jorong Tiakar ', 'Walia Yuhendi', 'Zumaidah', 'XII IPA 1'),
(709, 'RIZCA AULIA ZAHRA', 'P', '0054866238', 'Tabek Panjang', '2005-05-10', 'Islam', 'Jorong Belubus', 'Yasim Bahari', 'Arnifal', 'XI IPA 1'),
(710, 'Rizky Adiputra', 'L', '0051249516', 'Bekasi', '2005-01-05', 'Islam', 'Kubang', 'Suhita Chandra', 'Yenni Mulyati', 'XI IPS 3'),
(711, 'Robi Aprilio', 'L', '0048588854', 'Talang Maur', '2004-04-23', 'Islam', 'Kampung Tengah', 'Basir', 'Yeri Wati', 'X IPS 3'),
(712, 'ROBIL GUNAWAN', 'L', '0047868921', 'BUKITTINGGI', '2004-08-07', 'Islam', 'Mungka Tengah', 'INDRA GUNAWAN', 'WASMAWATI', 'X IPS 5'),
(713, 'ROHIMA SAPUTRI', 'P', '0052413981', 'SIMPANG SUGIRAN', '2004-07-13', 'Islam', 'LAKUNG SIMPANG SUGIRAN', 'ALIASMON', 'ARMIATI', 'XI IPS 3'),
(714, 'ROHIQ NOUVEL SATRIA', 'L', '0056824064', 'KAMPUNG TENGAH', '2005-03-16', 'Islam', 'KAMPUNG TENGAH', 'Guswandi', 'ELFIA NURTATI', 'X IPA 2'),
(715, 'RONAL PAGUNDES', 'L', '0023465007', 'Sopan Gadang', '2002-06-02', 'Islam', 'Sopan Gadang', 'Saharis', 'Depi Yusnita', 'XII IPS 3'),
(716, 'ROSA YULIA CHANDRA', 'P', '0046199984', 'Kubu Gadang', '2004-07-01', 'Islam', 'Kubu Gadang', 'Candrawasih', 'Indra Yenti', 'XI IPS 4'),
(717, 'ROZIA JULIANTI', 'P', '0052795156', 'KURANJI', '2005-07-26', 'Islam', 'JORONG KURANJI', 'ERWIN EFENDI', 'RUSNIATI', 'XI IPA 4'),
(718, 'RUZANA RAHMI', 'P', '0069152460', 'PAYAKUMBUH', '2006-04-26', 'Islam', 'KOTO BARU ', 'FARIDAL', 'MUSWILDA', 'X IPA 2'),
(719, 'SABRI JONESTI', 'L', '0041919605', 'Tabek Panjang', '2004-05-22', 'Islam', 'Tiakar', 'Marjohan', 'Esti Sovia', 'XII IPA 3'),
(720, 'SAFRUL', 'L', '0025661863', 'Simpang Sugiran', '2002-10-03', 'Islam', 'Simpang Sugiran', 'JUNAIDI', 'JUSNADIAR', 'XI IPS 5'),
(721, 'SALMA AULIA PUTRI', 'P', '0035930022', 'SIMPANG ABU', '2003-08-11', 'Islam', 'SIMPANG ABU', 'ANWAR', 'ELTA RISNEL', 'X IPS 2'),
(722, 'Salmiatul Marwah', 'P', '0067740002', 'Dalam Koto', '2006-08-07', 'Islam', 'Padang Parit Panjang', 'Kondawarman', 'Elfi Budiarti', 'X IPS 2'),
(723, 'SALSA MARLINDA EFENDI', 'P', '0069780069', 'KUBU GADANG', '2006-03-26', 'Islam', 'PADANG KOTO TUO', 'NUR EFENDI', 'ROSLINDA', 'X IPS 3'),
(724, 'SALSABILA RAMADHANI', 'P', '0035979419', 'SIMALANGGANG', '2003-11-06', 'Islam', 'MUNGKA TENGAH', 'SENDI WARMAN', 'RIVA NENI', 'XI IPS 3'),
(725, 'SALSABILLA ARYA LAKSANA', 'P', '0057253788', 'KOTO TINGGI', '2005-08-09', 'Islam', 'KAMPUNG MELAYU', 'Eko Budi Laksana', 'RIA YULVIONA', 'X IPA 3'),
(726, 'SALSABILLA DESRIANTA', 'P', '0048316616', 'GUGUAK', '2004-12-05', 'Islam', 'JORONG GUGUAK', 'DES ELFIAN PUTRA', 'SUSTI NOVITA', 'XI IPS 1'),
(727, 'SALWA ZALIANTI', 'P', '0068924349', 'KURANJI', '2006-01-14', 'Islam', 'JORONG KURANJI', 'MUSRIZAL', 'SUSI SUSANTI', 'X IPA 3');
INSERT INTO `siswa` (`id`, `nama`, `Jenis_kelamin`, `nisn`, `tempat_lahir`, `tgl_lahir`, `agama`, `alamat`, `nama_ayah`, `nama_ibu`, `kelas`) VALUES
(728, 'Samsi Anggun', 'P', '0035990021', 'Kubang', '2002-01-30', 'Islam', 'Jorong Taratak', 'Samsir', 'Yeni Welnita', 'XII IPS 1'),
(729, 'Santika Dewi', 'P', '3034743508', 'Balai Tampuak Pinang', '2003-04-13', 'Islam', 'Balai Tampuak Pinang ', 'Rafnel Mulyadi', 'Murni', 'XI IPA 3'),
(730, 'Sarah Khairunnisa', 'P', '0053952724', 'Kuranji', '2005-06-24', 'Islam', 'Tiakar', 'Edwin', 'Oktavia Libra Yemi', 'XI IPS 4'),
(731, 'SARAH SAFITRI', 'P', '0028533093', 'SUAYAN TINGGI', '2003-02-12', 'Islam', 'KURANJI', 'MULYADI. R', 'ERMADENI', 'XII IPS 4'),
(732, 'SARIFAH AINI', 'P', '0053139260', 'MUNGKA', '2005-06-19', 'Islam', 'MUNGKA TENGAH', 'EDRI', 'RITA KISMAWATI', 'X IPS 3'),
(733, 'SASKIA KANAYA CHANIA', 'P', '3065286211', 'MULIOREJO', '2006-04-13', 'Islam', 'TANJUNG BARULAK', 'Heryanto Chan', 'FAJAR MUTIA', 'X IPA 1'),
(734, 'Satria Finto Saputra', 'L', '0041958404', 'Mungka', '2004-02-12', 'Islam', 'Koto Tuo Mungka', 'Syafrijon', 'Iwat', 'XII IPS 5'),
(735, 'Sauki Abdul Malik', 'L', '0042789710', 'Payakumbuh', '2004-08-04', 'Islam', 'Pamatang Aur', 'Mendri Hariono', 'Uwik', 'XI IPA 4'),
(736, 'SEFIA RAHAYU', 'P', '0036630066', 'PEKAN BARU', '2003-09-29', 'Islam', 'Kubang Tungkek', 'AFRIZAL', 'MULLINDA', 'XII IPA 1'),
(737, 'SELI PUTRI NURAINI', 'P', '0061802968', 'BOGOR', '2006-12-21', 'Islam', 'GUGUAK', 'Darmawan', 'IMIL SULASTRI', 'X IPS 2'),
(738, 'SELVI AMANDA FITRI', 'P', '0059028813', 'KOTO TANGAH SIMALANGGANG', '2005-12-05', 'Islam', 'Koto Baru Simalanggang', 'FERI SONEVIL', 'FITRIANI', 'X IPA 1'),
(739, 'SELVIA DELI', 'P', '0045974927', 'TIAKAR', '2004-09-18', 'Islam', 'TIAKAR', 'YUSMARDI', 'NESLIAWATI', 'XI IPA 3'),
(740, 'Selvia Yunika', 'P', '0041942183', 'Guguk Nunang', '2004-10-07', 'Islam', 'Guguak Nunang', 'Eriyanto', 'Yoni Marni', 'XI IPS 3'),
(741, 'SELVY DWI RAHMASARI', 'P', '0041919126', 'Dangung-Dangung', '2004-08-01', 'Islam', 'Pincuran Betung', 'Saiful Sofyan', 'GUSTI ELVINA', 'XII IPS 3'),
(742, 'Sentia Nofela', 'P', '0035979431', 'Mungka', '2003-04-20', 'Islam', 'Simpang Tiga Kenanga', 'Santa', 'Laila', 'XII IPA 1'),
(743, 'SEPRIADI', 'L', '0035896108', 'Kubang Tungkek', '2003-11-28', 'Islam', 'Kubang Tungkek', 'ASRIL', 'AFRITA', 'X IPS 3'),
(744, 'Septian Rolanda Putra', 'L', '0032534144', 'Ampang Gadang', '2003-09-10', 'Islam', 'Ampang Gadang', 'Darimus', 'Novia El Wati', 'XII IPS 1'),
(745, 'Sessy Felisya', 'P', '0036156432', 'Padang', '2003-06-29', 'Islam', 'Guguk Nunang', 'Yuliardi', 'Erni', 'XII IPS 2'),
(746, 'SHANIA MUITZI', 'P', '0042035173', 'mungka', '2004-01-24', 'Islam', 'MUNGKA TENGAH', 'SYAFRIMAN', 'LELI HARTATI', 'XII IPS 3'),
(747, 'Shasi Berliana Marshandi', 'P', '0052772540', 'Ampang Gadang', '2005-03-14', 'Islam', 'Kampuang Baru', 'Hengki Epika Yodi', 'Santi', 'XI IPA 4'),
(748, 'SHELY AULIA', 'P', '0047272568', 'Kuranji', '2004-04-08', 'Islam', 'Belubus', 'Masri', 'W a t i', 'XII IPS 1'),
(749, 'SHENA FITRIANI. A', 'P', '0051652876', 'KURANJI', '2005-10-31', 'Islam', 'GUGUK NUNANG', 'ABDUL HALIM', 'HENDRAYATI', 'X IPS 2'),
(750, 'Shifa Latifah', 'P', '0052938277', 'Mungka', '2005-04-21', 'Islam', 'Lubuak Simato', 'Endi Putra', 'Elfi Susanti', 'XI IPS 5'),
(751, 'SHINTA MULIA', 'P', '0054264604', 'KURANJI', '2005-10-04', 'Islam', 'TIAKAR', 'Yus Mulyadi', 'siswa (nama,Jenis_kelamin,nisn,tempat_lahir,tgl_la', 'X IPS 1'),
(752, 'SHINTANIA BUNDA', 'P', '0051994003', 'TANJUNG PATI', '2005-03-26', 'Islam', 'KURANJI GUGUAK VIII KOTO', 'ATARMAN', 'SUSI ERLINDA', 'XI IPA 1'),
(753, 'SHOFWAH NADYA', 'P', '0043306836', 'Simpang Sugiran', '2004-10-20', 'Islam', 'Simpang Sugiran', 'DEDDY HERMANTO', 'RINA WATI', 'X IPA 4'),
(754, 'SHOZANZA', 'P', '0043622310', 'Belubus', '2004-08-06', 'Islam', 'Jorong Belubus', 'Isral', 'Nofrita Remilda', 'XI IPA 4'),
(755, 'Silfani Alfina', 'P', '0055979003', 'Sorek', '2005-01-06', 'Islam', 'Balai Talang', 'Algusra', 'Satini', 'X IPS 5'),
(756, 'SILVI AZANI YOPUTRI', 'P', '0052855416', 'PANGKALAN', '2005-08-02', 'Islam', 'DUSUN NAN DUO', 'Armen Putra', 'YOPA SUSANTI', 'X IPS 3'),
(757, 'SILVIA AFDELINA', 'P', '0059853361', 'HALABAN', '2005-04-09', 'Islam', 'GUGUK NUNANG', 'ALFRINALDI', 'DERI ELFITA', 'X IPS 4'),
(758, 'SILVIA ALISMARNI', 'P', '0048025346', 'MUNGKA', '2004-06-19', 'Islam', 'PADANG KOTO TUO', 'ALEK SONI', 'LILI KONDAWATI', 'XI IPS 3'),
(759, 'SILVIA ANGGRAINI', 'P', '0024801266', 'SIMPANG ABU', '2002-08-16', 'Islam', 'SIMPANG ABU', 'IFNUR', 'ELMATOTI', 'XI IPA 2'),
(760, 'Silvia Yulianti', 'P', '0026090469', 'Mungka', '2002-07-07', 'Islam', 'Jor. Simpang Tiga Kenanga', 'Rusman', 'Tenta Irawati', 'XI IPS 1'),
(761, 'Sindi Deza Audia P', 'P', '0041387137', 'Talago', '2004-07-03', 'Islam', 'Tanjung Jati', 'Hendra Yasmar Rozak', 'Dewi Anita', 'XII IPS 1'),
(762, 'SINDY AULIA', 'P', '0053085029', 'PERAWANG', '2005-01-05', 'Islam', 'Simpang Sugiran', 'DANOL', 'WIWIK SATRIA', 'XI IPS 2'),
(763, 'SINTIA RAHMATIKA', 'P', '0035872921', 'SORIAK', '2003-09-07', 'Islam', 'Suliki', 'SYAHRIL', 'ZETRI YULITA', 'XII IPA 2'),
(764, 'SINTYA KARTIKASARI', 'P', '0035896151', 'KUBANG TUNGKEK', '2003-09-04', 'Islam', 'KUBANG TUNGKEK', 'ANIZUR INDRA PERTA', 'BINEM', 'XII IPA 1'),
(765, 'SISKI MULIANI', 'P', '0045975441', 'KUBANG TUNGKEK', '2004-04-16', 'Islam', 'KUBANG TUNGKEK GUGUAK VIII KOTO', 'INDRA', 'YASNI', 'XI IPS 1'),
(766, 'SITI AINI MARDIAH', 'P', '0027066581', 'Kubu Gadang', '2002-01-04', 'Islam', 'Koto Tuo', 'ADRIANTO', 'YENTI', 'XII IPS 1'),
(767, 'SITI AISYAH', 'P', '0046171807', 'Mungka', '2004-05-21', 'Islam', 'MANGANTI', 'RONI YULPADRI', 'SUSANTI FITRIA', 'XI IPS 2'),
(768, 'SITI AMINAH', 'P', '0045657277', 'KALUDAN', '2004-04-12', 'Islam', 'KALUDAN NAGARI SUNGAI TALANG', 'SUHELDI ERMAN', 'YUSMITA', 'XI IPS 5'),
(769, 'SITI ASY SYIFAA', 'P', '0056521358', 'BATAM, KOTA BATAM', '2005-07-02', 'Islam', 'Mungka', 'EFRIADI', 'SITI ROHINAH', 'XI IPS 2'),
(770, 'Siti Aulia Rahma', 'P', '0045446118', 'Batam', '2004-07-03', 'Islam', 'Taratak', 'Raflis', 'Diah Chomelia', 'XI IPA 2'),
(771, 'Siti Fadilah', 'P', '0045671877', 'Tiakar Guguk', '2004-12-12', 'Islam', 'Tiakar', 'Benny Aedhi', 'Mardiati', 'XI IPS 5'),
(772, 'Siti Habibah.H', 'P', '0044036266', 'Bukittinggi', '2004-05-10', 'Islam', 'Kubang', 'Sri Hendra Yasfi', 'Novilia.M', 'XI IPS 3'),
(773, 'SITI INAYAH MARDATILA', 'P', '0045958703', 'PAYAKUMBUH', '2004-11-17', 'Islam', 'KUBANG', 'Ir. JHONI SUSANTO', 'ELVA SUSANTI, AMd', 'XI IPA 4'),
(774, 'Siti Khadijah', 'P', '3058290676', 'Guguak', '2005-01-24', 'Islam', 'Guguak', 'Isnaldi', 'Eva Yulia Mesra', 'XI IPS 4'),
(775, 'SITI MAISARAH', 'P', '0053867126', 'MUNGKA', '2005-03-06', 'Islam', 'SIMPANG TIGA KENANGA', 'Eri Akbar', 'ROSMAINEL', 'X IPA 2'),
(776, 'Siti Purwanti Ningsih', 'P', '0048610757', 'Dangung-Dangung', '2004-12-30', 'Islam', 'Balai Mansiro', 'Edrianto A', 'Lasmi', 'XI IPS 2'),
(777, 'SOFI HUSNA AFIFAH', 'P', '0035896156', 'DANGUNG-DANGUNG', '2003-12-24', 'Islam', 'BALAI MANSIRO', 'ALI USMAR', 'OSTATI', 'XI IPS 2'),
(778, 'SONIA BERLIANTI', 'P', '0045407969', 'DANGUNG-DANGUNG', '2004-07-08', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'JASWIR', 'ELI DAWANA', 'XI IPS 4'),
(779, 'SRI ANGGELA FEBRIANI', 'P', '0035979392', 'MUNGKA', '2003-02-04', 'Islam', 'MUNGKA TENGAH', 'ZONI PUTRA', 'INDRAWATI', 'XII IPA 3'),
(780, 'SRI MADEA ADDIANTY', 'P', '0035930264', 'Kampung Tangah', '2003-05-23', 'Islam', 'Talang', 'ADRIANTO', 'RIMRA SUSANTI', 'XII IPS 2'),
(781, 'SRI MAYA INDANDARI', 'P', '0002340602', 'TIAKAR', '2000-03-11', 'Islam', 'TIAKAR', 'ELFIZEN', 'DANTI', 'XII IPS 3'),
(782, 'SRI PUSPITA SARI', 'P', '0035930019', 'SIMPANG ABU', '2003-07-24', 'Islam', 'JORONG SOPAN', 'IDEPRIADI', 'ASMA', 'XI IPS 5'),
(783, 'SRI RAHAYU', 'P', '0035919853', 'MUNGKA', '2003-08-05', 'Islam', 'MANGANTI', 'RAFLES. B', 'UPIK SARBIATI', 'XII IPS 4'),
(784, 'SRI RIZKA BAROKAH', 'P', '0051003304', 'DANGUNG-DANGUNG', '2005-04-20', 'Islam', 'JORONG TIAKAR', 'RIKI SANDRA', 'ENDANG KUSRINA', 'X IPS 5'),
(785, 'SRI YULIA ANANDA', 'P', '0048469679', 'MUNGKA', '2004-07-18', 'Islam', 'TALANG', 'PUTRA JOKI', 'ESI', 'X IPA 4'),
(786, 'SUCI AINIL FITRI', 'P', '0026735425', 'Kubang', '2002-11-25', 'Islam', 'Limo Koto', 'Amri', 'Asmiati', 'XII IPS 5'),
(787, 'SUCI AULIA RAHMADANI', 'P', '0043725762', 'Belubus', '2004-10-12', 'Islam', 'Jorong Belubus', 'Zainil', 'Upik', 'X IPA 4'),
(788, 'Suci Febrianti', 'P', '0041895339', 'Tabek Panjang', '2004-02-17', 'Islam', 'Guguak', 'Yaldi Gusnono', 'Supriyanti', 'XII IPS 1'),
(789, 'SUCIANA PUTRI', 'P', '0036371675', 'KURANJI', '2003-12-26', 'Islam', 'KURANJI', 'AWAL SABRI', 'SUSILAWATI', 'XII IPA 1'),
(790, 'Sucita Farhana', 'P', '0038968000', 'DANGUNG-DANGUNG', '2003-11-24', 'Islam', 'TIAKAR', 'ZULWASRI', 'SALMA DESNI', 'XII IPS 2'),
(791, 'Sucitra Aulia', 'P', '0017433785', 'Payakumbuh', '2001-03-07', 'Islam', 'Guguk Nunang', 'Effendi', 'Dalmawita', 'XII IPS 3'),
(792, 'SULTAN HAWARI HAMNOLDI', 'L', '0052734652', 'Payakumbuh', '2005-09-16', 'Islam', 'Taeh Baruah', 'Renold', 'Metrianda', 'XI IPA 1'),
(793, 'Surya Abdulah', 'L', '0036156439', 'Guguk Nunang', '2003-11-13', 'Islam', 'Guguk Nunang', 'Khairul', 'Epi Susanti', 'XII IPS 4'),
(794, 'SURYA AFRIADI', 'L', '0058727972', 'BANGKINANG', '2005-04-26', 'Islam', 'JORONG TIAKAR', 'YULMA HENDRI', 'MARTINA HARIANI', 'XI IPA 2'),
(795, 'SURYA TEDI RAHMAN', 'L', '0047547869', 'Tabek Panjang', '2004-11-02', 'Islam', 'Jorong Belubus', 'Hendri', 'Yeni Oktavia', 'XI IPS 5'),
(796, 'SYABILLATUL AZKIA', 'P', '0035873383', 'KURANJI', '2003-09-30', 'Islam', 'KURANJI', 'MULIADI', 'NELIA AZWITA', 'XII IPS 5'),
(797, 'SYADEFI MULYA', 'P', '0043686690', 'TANAH DATAR', '2004-12-14', 'Islam', 'KURANJI', 'Syafriadi', 'MUSPIDA YANTI', 'X IPS 4'),
(798, 'SYADZA OKTIFANI', 'P', '0045657683', 'PAYAKUMBUH', '2004-10-03', 'Islam', 'Jorong Kubang Tungkek Kenagarian Guguak VIII Koto', 'Muhammad Almispani', 'ASFIYANTI', 'XI IPA 3'),
(799, 'Syafitro Elwadi T.P', 'L', '0035896116', 'Ampang Gadang', '2003-11-26', 'Islam', 'Pincuran Botuang', 'Wadi Erizal', 'Elda Arina', 'XII IPS 1'),
(800, 'SYARIFAH AINI', 'P', '0035931279', 'Koto Tangah Simalanggang', '2003-10-11', 'Islam', 'Koto Tuo', 'YUSMAN', 'YARNIATI', 'XII IPA 3'),
(801, 'SYARIVAL EFENDI DESMIZAL', 'L', '0045992270', 'Suliki', '2004-12-12', 'Islam', 'Pua Data', 'Miswa Horiza', 'Desi Fetri Yeni', 'XI IPA 4'),
(802, 'SYIFA UMATUM KHAIRO', 'P', '0044505749', 'PAYAKUMBUH', '2004-11-29', 'Islam', 'KALUDAN NAGARI SUNGAI TALANG', 'SAHARUDIN', 'NOFA ERLINDA', 'XI IPS 5'),
(803, 'T.Arvandhio Nayanda', 'L', '0042614385', 'Medan', '2004-10-13', 'Islam', 'Guguak ', 'T MUHAMMAD NAYAN', 'Desi Oktavia', 'XII IPA 3'),
(804, 'TAKBIROTUL RAMADHANI SYAHRIL', 'L', '0035873355', 'DEPOK', '2003-11-24', 'Islam', 'TIAKAR', 'SYAHRIL HOIDI', 'IRNA ASMARNI', 'XII IPA 3'),
(805, 'Tari Apia', 'P', '0047804119', 'Koto Baru', '2004-07-06', 'Islam', 'Koto Baru Mungka', 'UJANG', 'Sariani', 'X IPA 2'),
(806, 'Tari Nurhaliza', 'P', '0045958126', 'Simpang Sugiran', '2005-10-04', 'Islam', 'Jorong Baliak', 'Alfianda', 'Reni Efrita', 'XI IPS 1'),
(807, 'TASRIA SARE', 'P', '0052551360', 'TARATAK', '2005-01-10', 'Islam', 'TARATAK', 'REFRIZAL', 'SANEL FIANELI', 'XI IPA 2'),
(808, 'TAUFIK AR RAHMAN', 'L', '0035931278', 'Kubu Gadang', '2003-10-26', 'Islam', 'Koto Tuo Mungka', 'ANDRA. S', 'WIWI ANGRAINI', 'XII IPS 2'),
(809, 'Taufik Hidayat', 'L', '0064502591', 'Payakumbuh', '2006-06-12', 'Islam', 'Jorong Lakuang', 'Anda', 'Reni Usneni', 'X IPS 2'),
(810, 'TAUFIK RAMADHAN', 'L', '0026091202', 'Simalanggang', '2002-10-27', 'Islam', 'Jorong Koto Tuo', 'YUSNALDI PUTRA', 'NURLAILA', 'XI IPS 4'),
(811, 'Taufiqqurahman Razzaq', 'L', '0045958129', 'Tabek Panjang', '2004-11-12', 'Islam', 'Jorong Boncah', 'Salman', 'Siska Erlinda', 'XI IPA 3'),
(812, 'TEDDY HENDRI', 'L', '0036053632', 'BATAM', '2003-08-04', 'Islam', 'BONCAH', 'HENDRY', 'VIVI SUSANTI', 'XII IPS 3'),
(813, 'TEFANY MEIZA ANANTA', 'P', '0067638793', 'KURANJI', '2006-05-06', 'Islam', 'KURANJI', 'Eza Sabral', 'MESI SEKAR SARI', 'X IPS 1'),
(814, 'Tegar Amdriana', 'L', '0044131596', 'Lima Puluh Kota', '2004-06-24', 'Islam', 'Kubang Tungkek', 'Suparlan', 'Mahdalena Amir', 'XII IPA 1'),
(815, 'Tengku Imam Akbar', 'L', '0046622204', 'Koto Baru SMLG', '2004-04-27', 'Islam', 'Sungai Deras', 'SAWALUDDIN', 'Benny Wenty', 'XII IPA 1'),
(816, 'TESA MALINDA', 'P', '0033305546', 'TIAKAR GUGUAK', '2003-06-14', 'Islam', 'TIAKAR', 'ADITIAWARMAN', 'ALINDA', 'XII IPS 4'),
(817, 'THIYO KHOIRUL ILHAM', 'L', '0052943471', 'AMPANG GADANG', '2005-09-15', 'Islam', 'BALAI TALANG', 'Abu Bakar', 'MEGA MARIATI', 'X IPS 2'),
(818, 'Tiara Ostafiana', 'P', '0046273199', 'Kuranji', '2004-04-06', 'Islam', 'Guguk Nunang', 'Osmar', 'Asti Yuliana', 'X IPS 4'),
(819, 'TIARA PUSPITA DEWI', 'P', '0021511779', 'KURANJI', '2002-06-03', 'Islam', 'KURANJI', 'ASKAR', 'RIZA SUSANTI', 'XII IPS 5'),
(820, 'Ulfa Maiza', 'P', '0023912016', 'Mungka', '2002-05-11', 'Islam', 'Lobuah Lintang', 'Wardiantoni', 'Iwit Nazulia', 'XI IPA 3'),
(821, 'ULFAH SEPTY ANISA', 'P', '0058105347', 'TALAGO', '2005-09-23', 'Islam', 'TALAGO', 'Mukhlis', 'ELMAWATI', 'X IPS 5'),
(822, 'Ulfatul Hasanah', 'P', '0046198061', 'Parumpung', '2004-11-03', 'Islam', 'Parumpung', 'Jaswir', 'Nini Harteti', 'XI IPS 3'),
(823, 'ULYA. MS', 'P', '0026645956', 'DANGUNG-DANGUNG', '2002-05-10', 'Islam', 'dangung-dangung Kenagarian GUguak VIII Koto', 'Mastur MS', 'SUSIATI', 'XI IPS 5'),
(824, 'UMMUL LATIFA', 'P', '0042802839', 'TALANG', '2004-06-27', 'Islam', 'JORONG TALANG', 'SAJIONO', 'TATI ERNITA', 'X IPS 2'),
(825, 'VELLY NOMIZA', 'P', '0051585754', 'Tabek Panjang', '2005-11-20', 'Islam', 'Jorong Tiakar ', 'Mairizal', 'Ir.Erlinawati', 'X IPA 2'),
(826, 'VIA NITA RAHMA DINI', 'P', '0042739631', 'GUNTUNG', '2004-02-05', 'Islam', 'GUNTUANG', 'ONDRI ARIANTO', 'YEMPI ELVINORA', 'XII IPA 2'),
(827, 'VICKRAM', 'L', '0035919511', 'KAMPUNG TENGAH', '2003-09-08', 'Islam', 'TALANG', 'HARMON', 'ANDE YULIA', 'X IPS 3'),
(828, 'Viola Permata Sari', 'P', '0056123889', 'Mungka', '2005-02-20', 'Islam', 'Korong Jor. Simpang Tiga Kenanga', 'Azwan', 'Rasmawati', 'X IPA 4'),
(829, 'Vioni Arfadila Winda', 'P', '0041957115', 'Kampung Tangah', '2004-01-08', 'Islam', 'Kampung Tangah', 'Indrawadi', 'Widia Murni', 'XII IPA 1'),
(830, 'VIONI DWI AMANDA', 'P', '0056206646', 'KAMPUNG TANGAH', '2005-06-24', 'Islam', 'KAMPUNG TANGAH', 'Dede Sutedi', 'SOFIA TRISNI', 'X IPS 1'),
(831, 'VIONI PUTRI FAZILA', 'P', '0041956718', 'MANGANTI', '2004-07-03', 'Islam', 'MANGANTI', 'DODI EKA PUTRA', 'NON ERFIDA', 'XII IPA 4'),
(832, 'VIVI DITIA PUTRI', 'P', '3048369593', 'TALANG', '2004-06-08', 'Islam', 'TALANG MAUR', 'EDI AGUSTIA', 'AYANG PUTRI', 'XI IPA 3'),
(833, 'VONI TRIDARA AGUSTIN', 'P', '0045975448', 'MUNGKA', '2004-08-19', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'JANIUR', 'EVAYANTI', 'XI IPS 2'),
(834, 'VONNY CANTIKA', 'P', '0035953105', 'Koto Gadang Maek', '2003-06-05', 'Islam', 'Ronah', 'Ari Chandra', 'Resmita', 'XII IPA 3'),
(835, 'WAFIQ NOFRIA AZIZAH', 'P', '0057793583', 'Kubu Gadang', '2005-12-07', 'Islam', 'Mungka', 'Nofriadi', 'Ria Anjelina', 'X IPS 1'),
(836, 'WAHDINI DWI RAHMADAN', 'P', '0055995430', 'MUNGKA', '2005-10-28', 'Islam', 'KOTO TINGGA', 'ERDI NUZIAD EFENDI', 'DEWI DELFITRA', 'X IPS 1'),
(837, 'Wahyu Fadhilah', 'L', '0049713342', 'Mungka', '2004-05-25', 'Islam', 'Simpang Tiga Kenanga', 'Tata Ufria', 'Rosmi Nelfita', 'XI IPS 2'),
(838, 'Wahyu Hidayat', 'L', '0025978735', 'Bukittinggi', '2002-10-29', 'Islam', 'Pincuran Botuang', 'SAIFAN SAADI', 'Erika', 'XI IPS 2'),
(839, 'WANDA HAMIDA', 'P', '0026735033', 'SUNGAI TALANG', '2002-07-09', 'Islam', 'SUNGAI TALANG', 'ZULFAHMI', 'YURLITA', 'XII IPA 2'),
(840, 'Welani Sari', 'P', '0052552482', 'Koto Tinggi', '2005-05-05', 'Islam', 'Lubuak Aua', 'Ifendi', 'Nofrita Ningsih', 'XI IPA 4'),
(841, 'WIDYA RATNA SUNDARI', 'P', '0035896105', 'DANGUNG-DANGUNG', '2003-07-29', 'Islam', 'BALAI MANSIRO', 'INDRA FAHRIZAL', 'FIFI SUMARNI', 'XII IPS 1'),
(842, 'WINDI APRILIA', 'P', '0054647850', 'TALAGO', '2005-04-15', 'Islam', 'TAN MALAKA KM 17', 'WIRMAN EFENDI', 'GENI SULASTRI', 'XI IPS 5'),
(843, 'WINDY PERMATA SARI', 'P', '0056399576', 'Belubus', '2005-06-29', 'Islam', 'Jorong Belubus', 'Ondrizal', 'Yonita', 'XI IPS 4'),
(844, 'WULAN DWI ANANDA', 'P', '0058599336', 'Tiakar', '2005-11-30', 'Islam', 'Tiakar', 'Alamsyah', 'Etrirahayu', 'X IPS 1'),
(845, 'YAHYA RIANDIKA', 'L', '0059531131', 'PAYAKUMBUH', '2005-12-29', 'Islam', 'BATU NAN LIMO', 'Safnil', 'SRI MAHYENI LUBIS', 'X IPA 1'),
(846, 'YAUMAL HADID', 'L', '0017351496', 'Talago', '2001-10-01', 'Islam', 'Talago', 'M. AZIZ', 'DIAN SUFI ING PAMRIH', 'XII IPS 2'),
(847, 'YAYA MEI PUTRI', 'P', '0041561316', 'KAMPUNG TENGAH', '2004-05-02', 'Islam', 'TALANG', 'ZENDRA', 'ENDRAWATI', 'X IPS 3'),
(848, 'YAYANG ICCU PUTRI', 'P', '0052733794', 'BUKITTINGGI', '2005-08-25', 'Islam', 'DALAM KOTO', 'Musriwan', 'WELDANITA', 'X IPA 4'),
(849, 'YAZID', 'L', '0052245477', 'AMPANG', '2005-10-10', 'Islam', 'JORONG AMPANG NAGARI PIOBANG', 'NURMATIAS', 'ELFIA', 'X IPA 2'),
(850, 'YELSA AULIA', 'P', '0052805170', 'BALAI TAMPUAK PINANG', '2005-02-12', 'Islam', 'BALAI TAMPUAK PINANG', 'ASTONO MIHARDI', 'SUSI MERTIKA WATI', 'X IPS 3'),
(851, 'Yeza Arifah', 'P', '0042095629', 'Sopan Tanah', '2004-08-01', 'Islam', 'Sopan Tanah', 'Syafrizal', 'Elfa Yusnita', 'XII IPS 3'),
(852, 'YOGA OKTAVIANDI', 'L', '0017353481', 'PADANG', '2001-10-09', 'Islam', 'KETINGGIAN', 'DEDI MAIZUL PUTRA', 'JULI HARTATI', 'XII IPS 4'),
(853, 'Yohana Desfitri', 'P', '0025993429', 'Taratak', '2002-12-09', 'Islam', 'Taratak', 'Indra Saputra', 'Elma Teti', 'XII IPS 3'),
(854, 'YOMI GUSMA HENDRA', 'L', '9994692215', 'MUNGKA', '1999-10-04', 'Islam', 'MAUR', 'MANSUARNI', 'GUSNEL', 'XII IPS 3'),
(855, 'Yomi Kurniawan', 'L', '0036156430', 'Guguk Nunang', '2003-08-10', 'Islam', 'Guguk Nunang', 'Joni Eka Putra', 'Eva Susanti', 'XII IPS 1'),
(856, 'YOSI FEBRIANI', 'P', '0023757811', 'TIAKAR', '2002-02-09', 'Islam', 'TIAKAR', 'MARDETA MAIZAI', 'IRNA MURNI', 'XII IPS 5'),
(857, 'YULI VERONIKA SIAGIAN', 'P', '0042305436', 'KANDIS', '2004-07-24', 'Islam', 'SIBORAS', 'SETIA SIAGIAN', 'YATINEM', 'XI IPA 1'),
(858, 'YULIA WINDRI', 'P', '0066861096', 'Kubu Gadang', '2006-01-02', 'Islam', 'Koto Puji', 'Wirman Daus', 'Yulniati', 'X IPS 2'),
(859, 'YULVIA A. RAHMAN', 'L', '0025993754', 'Guguk', '2002-12-12', 'Islam', 'Ketinggian', 'Yulius Endri', 'Eli Yusmarni', 'XII IPS 2'),
(860, 'YUNISA RAHMAH', 'P', '0035873376', 'KURANJI', '2003-06-22', 'Islam', 'KURANJI', 'BEDI ISMANTO', 'INDIKE RAHMI PUTRI', 'XII IPA 2'),
(861, 'YUNIZA FALLAH', 'P', '0045658770', 'KURANJI', '2004-06-05', 'Islam', 'KURANJI', 'SYAHRIZAL', 'NELMI SAFITRI', 'XI IPS 2'),
(862, 'Yusuf Hadi', 'L', '0041919155', 'Bukittinggi', '2004-10-13', 'Islam', 'Balai Mansiro', 'Junaidi Mazni', 'Hafizah', 'XII IPS 3'),
(863, 'YUYU HUTRI ANJELI', 'P', '0044716468', 'SUNGAI TALANG', '2004-08-17', 'Islam', 'SUNGAI TALANG', 'JUSMEN', 'LISNA WATI', 'XI IPS 5'),
(864, 'ZAFIRA ZAHWA', 'P', '0069650523', 'Koto Baru', '2006-02-26', 'Islam', 'Jln Tan Malaka', 'EPI SWANTO', 'IRA KARTIKA DEWI', 'X IPA 4'),
(865, 'Zahara Putri Warman', 'P', '0041957114', 'Kampung Tangah', '2004-01-02', 'Islam', 'Kampung Tangah', 'Aswirman', 'Warni', 'XII IPS 4'),
(866, 'ZAHARATUL JANNAH', 'P', '0036157329', 'Sungai Talang', '2003-07-13', 'Islam', 'Kubang Tungkek', 'Anton Nismen', 'Rosna Nengsi', 'XI IPS 5'),
(867, 'ZAHRA JUNIVA', 'P', '0046982429', 'Jopang', '2004-06-10', 'Islam', 'MANGANTI', 'DARMON', 'EMLINDA WATI', 'XI IPA 4'),
(868, 'ZAHRA SINTA BELA', 'P', '0056130202', 'PIOBANG', '2005-06-10', 'Islam', 'BALIAK', 'Wardoyo', 'ERIEN HANNETA', 'X IPA 3'),
(869, 'ZAHRAINI ASSYIFA KHALBI', 'P', '0053883143', 'KAMPUNG TANGAH', '2005-10-22', 'Islam', 'KAMPUNG TANGAH', 'Yandarson', 'WIDIAWATI', 'X IPS 4'),
(870, 'ZAHWA AULIA RAHMAH', 'P', '0067006528', 'Batam', '2006-02-15', 'Islam', 'Simpang Sugiran', 'SEFRI ZONEDI', 'ELVIA MERLINA', 'X IPA 2'),
(871, 'ZAINIATUL KHADIJAH', 'P', '0053825030', 'TALANG ANAU', '2005-09-06', 'Islam', 'LUAK BEGAK', 'Ahmad Huzil', 'IRAWATI', 'X IPA 1'),
(872, 'ZAKI DEFITRA PRIMA', 'L', '0058406201', 'TABEK PANJANG', '2005-11-09', 'Islam', 'GUGUAK', 'Khairuman', 'YUSNA WATI', 'X IPS 2'),
(873, 'Zaki Hartono', 'L', '0049949293', 'Jakarta', '2004-02-24', 'Islam', 'Tan Malaka', 'Rudi Hartono', 'Gusnini', 'XI IPS 5'),
(874, 'ZAKIA PUTRI AULIA', 'P', '0052415328', 'PADANG JAPANG', '2005-05-30', 'Islam', 'KOTO KOCIAK', 'TEDDY NAZAR ', 'NEDRAWATI', 'XI IPS 4'),
(875, 'Zana Yulianti', 'P', '0042095630', 'Sopan Tanah', '2004-02-01', 'Islam', 'Sopan Tanah Maek', 'Basri', 'Despi Wihasnita', 'XI IPS 1'),
(876, 'ZAQI FIRMANSYAH', 'L', '0032615131', 'Kubu Gadang', '2003-02-08', 'Islam', 'Kubu Gadang', 'Syaiful', 'Yenti Supriana', 'X IPS 5'),
(877, 'Zara Cleophilla Koswara', 'P', '0051991855', 'Tanjung Jati', '2005-05-25', 'Islam', 'Balai Mansiro', 'Riki Koswara', 'Wiwis Sri Handayani', 'XI IPA 2'),
(878, 'ZEKI PURNAMA SAPUTRA', 'L', '0028636939', 'Manggilang', '2002-08-27', 'Islam', 'Kubang Tungkek', 'Zainal Putra', 'Zulhayati', 'XI IPS 3'),
(879, 'ZEKO PURNAMA SAPUTRA', 'L', '0028636940', 'MANGGILANG', '2002-08-27', 'Islam', 'KUBANG TUNGKEK', 'Zainal Putra', 'ZULHAYATI', 'XII IPS 5'),
(880, 'Zicko Chester Rakuen', 'L', '0041308552', 'Talang Maur', '2004-07-11', 'Islam', 'Kampung Tengah', 'Yantha Adma. F', 'Mutiara Widiani', 'X IPS 3'),
(881, 'ZIKRA RAMADHANI', 'P', '0026096592', 'SIMPANG ABU', '2002-11-11', 'Islam', 'Simpang Abu', 'YON SAPARDI', 'YEFRIANTI', 'XII IPA 2'),
(882, 'ZILZA EKA PUTERI', 'P', '0045975459', 'AMPANG GADANG', '2004-12-24', 'Islam', 'KETINGGIAN GUGUAK VIII KOTO', 'HENDRA', 'HENI YUSNITA', 'X IPA 1'),
(883, 'ZIZI KHAIRATUL WITAMI', 'P', '0035896429', 'Kuranji', '2003-09-24', 'Islam', 'Tiakar', 'Wizarmi', 'Novita Rahmi', 'XII IPS 1'),
(884, 'ZOYA NOVITA SARI', 'P', '0045958345', 'SIMPANG SUGIRAN', '2004-10-23', 'Islam', 'LAKUNG SIMPANG SUGIRAN', 'KUNI', 'ERMIANIS', 'XI IPS 2'),
(885, 'Zulhendri Hidayatul Putra', 'L', '0035873338', 'Kubang', '2003-02-22', 'Islam', 'Koto baru', 'Abdul Halim', 'Israwati', 'XII IPA 2'),
(886, 'ZULKIA YOLANDA PUTRA', 'L', '0066586755', 'AMPANG GADANG', '2006-01-19', 'Islam', 'BALAI TALANG', 'Fiandri', 'NELFIANTI', 'X IPS 1');

-- --------------------------------------------------------

--
-- Struktur dari tabel `tahun_ajaran`
--

CREATE TABLE `tahun_ajaran` (
  `id_tahun` bigint(20) UNSIGNED NOT NULL,
  `tahun` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `status` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

-- --------------------------------------------------------

--
-- Struktur dari tabel `tendik`
--

CREATE TABLE `tendik` (
  `id` int(11) NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `Jenis_kelamin` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tempat_lahir` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `tgl_lahir` date NOT NULL,
  `nip` varchar(20) COLLATE utf8mb4_unicode_ci DEFAULT NULL,
  `agama` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `alamat_jalan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `kecamatan` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `pangkat_golongan` varchar(50) COLLATE utf8mb4_unicode_ci DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Dumping data untuk tabel `tendik`
--

INSERT INTO `tendik` (`id`, `nama`, `Jenis_kelamin`, `tempat_lahir`, `tgl_lahir`, `nip`, `agama`, `alamat_jalan`, `kecamatan`, `pangkat_golongan`) VALUES
(1, 'Abbas', 'L', 'BUNGA TANJUNG MAHAT', '1964-10-10', '196410101986021007', 'Islam', 'KUBANG TUNGKEK', 'Kec. Guguak', 'III/b'),
(2, 'Eko Fatria', 'L', 'TABEK PANJANG', '1984-02-06', NULL, 'Islam', 'TABEK PANJANG', 'Kec. Guguak', NULL),
(3, 'Emzarni', 'P', 'Guguak', '1976-06-05', NULL, 'Islam', 'Guguak', 'Kec. Guguak', NULL),
(4, 'Febrida Silvia', 'P', 'DANGUNG-DANGUNG', '1983-02-09', NULL, 'Islam', 'GUGUAK', 'Kec. Guguak', NULL),
(5, 'Ficki Kurniawan', 'L', 'SIMALANGGANG', '1988-02-14', NULL, 'Islam', 'KOTO BARU SIMALANGGANG', 'Kec. Payakumbuh', NULL),
(6, 'Fitri Yanti', 'P', 'KUBANG TUNGKEK', '1979-08-20', '197920082014082004', 'Islam', 'GUGUAK', 'Kec. Guguak', 'III/a'),
(7, 'Huswatul Hasanah', 'P', 'KOTO BARU SIMALANGGANG', '1990-03-15', NULL, 'Islam', 'TAEH BUKIK', 'Kec. Payakumbuh', NULL),
(8, 'Muh. Hijaz', 'L', 'PANGKEP', '1968-08-17', '196808171995011001', 'Islam', 'PILADANG', 'Kec. Akabiluru', 'IV/a'),
(9, 'Nasril', 'L', 'MAHAT', '1967-04-19', '196704191986031001', 'Islam', 'TABEK PANJANG', 'Kec. Payakumbuh', 'III/a'),
(10, 'Sri Amelia', 'P', 'DANGUNG-DANGUNG', '1984-04-28', NULL, 'Islam', 'KUBANG TUNGKEK', 'Kec. Guguak', NULL),
(11, 'Suriyati', 'P', 'KUBANG', '1983-02-04', NULL, 'Islam', 'KUBANG', 'Kec. Guguak', NULL),
(12, 'Syawaludin', 'L', 'P. SIANTAR', '1970-12-22', NULL, 'Islam', 'KUBANG TUNGKEK', 'Kec. Guguak', NULL),
(13, 'Weni Septia', 'P', 'TIAKAR', '1990-09-05', NULL, 'Islam', 'TIAKAR', 'Kec. Guguak', NULL),
(14, 'Yogi Putra. A', 'L', 'SIMALANGGANG', '1988-09-10', NULL, 'Islam', 'Talago', 'Kec. Guguak', NULL),
(15, 'Yori Mulyadi', 'P', 'Parumpung', '1996-10-09', NULL, 'Islam', 'Kubang Tungkek', 'Kec. Guguak', NULL);

-- --------------------------------------------------------

--
-- Struktur dari tabel `user`
--

CREATE TABLE `user` (
  `id` bigint(20) UNSIGNED NOT NULL,
  `nama` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `username` varchar(100) COLLATE utf8mb4_unicode_ci NOT NULL,
  `email` varchar(50) COLLATE utf8mb4_unicode_ci NOT NULL,
  `password` varchar(255) COLLATE utf8mb4_unicode_ci NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `failed_jobs_uuid_unique` (`uuid`);

--
-- Indeks untuk tabel `guru`
--
ALTER TABLE `guru`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `migrations`
--
ALTER TABLE `migrations`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `password_resets`
--
ALTER TABLE `password_resets`
  ADD KEY `password_resets_email_index` (`email`);

--
-- Indeks untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  ADD PRIMARY KEY (`id`),
  ADD UNIQUE KEY `personal_access_tokens_token_unique` (`token`),
  ADD KEY `personal_access_tokens_tokenable_type_tokenable_id_index` (`tokenable_type`,`tokenable_id`);

--
-- Indeks untuk tabel `siswa`
--
ALTER TABLE `siswa`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  ADD PRIMARY KEY (`id_tahun`);

--
-- Indeks untuk tabel `tendik`
--
ALTER TABLE `tendik`
  ADD PRIMARY KEY (`id`);

--
-- Indeks untuk tabel `user`
--
ALTER TABLE `user`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `failed_jobs`
--
ALTER TABLE `failed_jobs`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `guru`
--
ALTER TABLE `guru`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=201;

--
-- AUTO_INCREMENT untuk tabel `migrations`
--
ALTER TABLE `migrations`
  MODIFY `id` int(10) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=10;

--
-- AUTO_INCREMENT untuk tabel `personal_access_tokens`
--
ALTER TABLE `personal_access_tokens`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `siswa`
--
ALTER TABLE `siswa`
  MODIFY `id` int(11) UNSIGNED NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=887;

--
-- AUTO_INCREMENT untuk tabel `tahun_ajaran`
--
ALTER TABLE `tahun_ajaran`
  MODIFY `id_tahun` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT untuk tabel `tendik`
--
ALTER TABLE `tendik`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=16;

--
-- AUTO_INCREMENT untuk tabel `user`
--
ALTER TABLE `user`
  MODIFY `id` bigint(20) UNSIGNED NOT NULL AUTO_INCREMENT;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
