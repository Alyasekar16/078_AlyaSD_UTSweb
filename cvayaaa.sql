-- phpMyAdmin SQL Dump
-- version 5.2.2
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Waktu pembuatan: 13 Nov 2025 pada 17.00
-- Versi server: 8.0.30
-- Versi PHP: 8.1.10

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `cvayaaa`
--

-- --------------------------------------------------------

--
-- Struktur dari tabel `about`
--

CREATE TABLE `about` (
  `id_about` int NOT NULL,
  `nama` varchar(50) NOT NULL,
  `judul` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `photo` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `about`
--

INSERT INTO `about` (`id_about`, `nama`, `judul`, `deskripsi`, `photo`) VALUES
(122, 'Alya ', 'Halo, Saya Alya - seorang Creative Developer', 'Saya adalah mahasiswa Teknik Informatika semester 5 yang tertarik pada creative development, menggabungkan teknologi dengan desain dan pengalaman pengguna. Saya senang bereksperimen dalam pengembangan web dan antarmuka aplikasi yang interaktif serta estetik.', 'profile.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `academic`
--

CREATE TABLE `academic` (
  `id_academic` int NOT NULL,
  `gelar` varchar(50) NOT NULL,
  `universitas` varchar(100) NOT NULL,
  `deskripsi` text NOT NULL,
  `tahunmasuk` year NOT NULL,
  `tahunselesai` varchar(20) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `academic`
--

INSERT INTO `academic` (`id_academic`, `gelar`, `universitas`, `deskripsi`, `tahunmasuk`, `tahunselesai`) VALUES
(1, 'Mahasiswa S1 Teknik Informatika', 'Universitas Muhammadiyah Sukabumi', 'Sedang menempuh pendidikan S1 bidang Informatika', '2023', 'sekarang'),
(2, 'SMA Jurusan IPA', 'SMA Negri 1 Cisaat', 'Lulus dengan minat di bidang teknologi dan desain', '2020', '2023'),
(223, 'AI Engineer Path', 'IDCamp 2025', 'Program beasiswa nasional yang diselenggarakan oleh Indosat Ooredoo Hutchison sebagai bagian dari pilar Digital Education dalam inisiatif Corporate Social Responsibility. Program ini berfokus pada pengembangan talenta digital Indonesia di bidang Artificial Intelligence, dengan kurikulum berbasis industri yang dikembangkan oleh Dicoding. Saya mengikuti AI Engineer Path yang mencakup pembelajaran dasar pemrograman Python, Machine Learning, serta penerapan algoritma AI dalam kasus nyata.', '2025', '2025'),
(224, 'AI Course Series', 'Pijak in collaboration with IBM SkillsBuild', 'Program kolaboratif antara Pijak dan IBM SkillsBuild yang dirancang untuk membekali peserta dengan keterampilan teknis dan profesional di bidang Artificial Intelligence. Materi yang dipelajari meliputi Introduction to Artificial Intelligence, Introduction to Generative AI, dan AI Ethics. IBM berkomitmen dalam meningkatkan literasi digital dan mempersiapkan generasi profesional menuju era ekonomi berbasis AI', '2025', 'sekarang');

-- --------------------------------------------------------

--
-- Struktur dari tabel `contact`
--

CREATE TABLE `contact` (
  `id_contact` int NOT NULL,
  `namacontact` int NOT NULL,
  `email` int NOT NULL,
  `subjek` int NOT NULL,
  `pesan` text NOT NULL,
  `date` datetime NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `contact`
--

INSERT INTO `contact` (`id_contact`, `namacontact`, `email`, `subjek`, `pesan`, `date`) VALUES
(0, 0, 0, 0, 'neckrjhfrj', '2025-11-13 07:07:43'),
(0, 0, 0, 0, ' xshvrvb', '2025-11-13 07:08:10');

-- --------------------------------------------------------

--
-- Struktur dari tabel `portfolio`
--

CREATE TABLE `portfolio` (
  `id_portfolio` int NOT NULL,
  `judulproject` varchar(100) CHARACTER SET utf8mb4 COLLATE utf8mb4_0900_ai_ci NOT NULL,
  `kategori` enum('UI/UX','Development','Photography') NOT NULL,
  `deskripsi` text,
  `gambar` varchar(255) DEFAULT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `portfolio`
--

INSERT INTO `portfolio` (`id_portfolio`, `judulproject`, `kategori`, `deskripsi`, `gambar`) VALUES
(1, 'Sayur.go - UI/UX Design', 'UI/UX', 'SayurGo adalah proyek desain UI/UX yang saya kembangkan untuk menghadirkan pengalaman belanja sayur online yang lebih segar dan menyenangkan. Saya berfokus pada desain yang bersih, visual alami, serta navigasi yang intuitif agar pengguna dapat menemukan dan membeli produk dengan mudah.', 'sayurgo.jpg'),
(2, 'Sayur.go - Web Development', 'Development', 'Website e-commerce sederhana untuk penjualan sayuran segar dengan tampilan responsif. Dikembangkan menggunakan HTML, CSS (Bootstrap), dan JavaScript berdasarkan rancangan UI/UX sebelumnya. Fitur utama meliputi daftar produk, detail produk, keranjang belanja, dan form pemesanan yang mudah digunakan.', 'sayurgo2.jpg'),
(4, 'Klinik Hewan Sehat - Form Pendaftaran', 'UI/UX', 'Perancangan UI/UX untuk website klinik hewan dengan fitur informasi layanan, artikel kesehatan, dan reservasi konsultasi. Desain dibuat dengan pendekatan user-centered design agar tampilan mudah digunakan, komunikatif, dan ramah bagi pemilik hewan peliharaan.', 'klinik.jpg'),
(5, 'UI Sistem Informasi CVSattva ', 'UI/UX', 'Perancangan UI/UX untuk Sistem Informasi CV Sattva, perusahaan jasa arsitektur dan konstruksi di Sukabumi. Desain menampilkan tampilan profesional dan modern dengan layout informatif untuk halaman layanan, portofolio, dan profil perusahaan.', 'cvsattva.jpg'),
(6, 'Wadah Wisata Alam Sukabumi - Halaman Utama', 'Development', 'Website informasi wisata alam di Sukabumi yang dirancang untuk menampilkan destinasi lokal dengan tampilan responsif. Dibangun menggunakan HTML, CSS (Bootstrap), dan JavaScript dengan fitur galeri, deskripsi lokasi, dan peta wisata.', 'wisata.jpg'),
(7, 'Wadah Wisata Alam Sukabumi - Sungai di Pondok Halimun Sore Hari', 'Photography', 'Foto ini diambil di kawasan wisata alam Pondok Halimun, Sukabumi, saat sore hari. Cahaya matahari yang lembut menyentuh permukaan air sungai menciptakan suasana tenang dan hangat.', 'sungai.jpg'),
(8, 'SatuHariLagi - UI Mobile App', 'UI/UX', 'Perancangan UI/UX untuk aplikasi mobile “SatuHariLagi” yang berfungsi sebagai catatan dan daftar tugas harian. Desain berfokus pada kemudahan navigasi dengan dua tab utama, Today dan Month, serta tampilan minimalis untuk mendukung pengalaman pengguna yang produktif dan tenang.', 'satuharilagi.jpg'),
(10, 'kaktus Gepeng Berbunga', 'Photography', 'Foto ini menangkap keindahan alami dari kaktus yang sedang berbunga, merepresentasikan perpaduan antara ketahanan dan keindahan di lingkungan kering.', 'kaktus.jpg'),
(12, 'Website Klinik Hewan yang Minimalis dan Gemas', 'Development', 'Pengembangan website klinik hewan menggunakan HTML, CSS (Bootstrap), JavaScript, dan PHP (CodeIgniter 4). Fitur utama mencakup informasi layanan, daftar dokter, artikel kesehatan, dan sistem reservasi online dengan tampilan responsif dan navigasi yang mudah.', 'klinik.jpg'),
(14, 'Ikan Warna Warni', 'Photography', 'Foto ini menyoroti pergerakan dinamis ikan berwarna-warni di dalam air, menampilkan harmoni dan keindahan alam bawah air.', 'ikan.jpg'),
(15, 'Biru Laut - Tereliye', 'Photography', 'Melalui lensa, kisah perjuangan dan luka tahun 1998 terasa hidup. Setiap halaman seolah berbisik tentang keberanian, harapan, dan waktu yang tak pernah benar-benar pergi.', 'birulaut.jpg');

-- --------------------------------------------------------

--
-- Struktur dari tabel `project`
--

CREATE TABLE `project` (
  `id_project` int NOT NULL,
  `namaproject` varchar(100) NOT NULL,
  `peran` varchar(50) NOT NULL,
  `deskripsi` text NOT NULL,
  `tahunmasuk` year NOT NULL,
  `tahunselesai` year NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `project`
--

INSERT INTO `project` (`id_project`, `namaproject`, `peran`, `deskripsi`, `tahunmasuk`, `tahunselesai`) VALUES
(1, 'Sayur.go', 'Web Developer & UI/UX Designer', '- Merancang dan mengembangkan website e-commerce untuk pembelian sayur dan bahan dapur secara online.\n- Fokus pada tampilan antarmuka pengguna yang bersih, mudah dipahami, dan responsif di berbagai perangkat.\n- Menerapkan prinsip UI/UX design agar pengalaman pengguna lebih efisien dan menarik.\n- Proyek ini merupakan hasil kerja sama dengan PT VINIX SEVEN ARUM dalam mengembangkan sistem belanja sayur digital.', '2024', '2025'),
(2, 'Klinik Hewan Sehat', 'Web Developer', '- Proyek tugas mata kuliah Web Dasar semester 3.\n- Membuat website profil untuk klinik hewan dengan fitur informasi layanan, jadwal praktik, dan kontak dokter.\n- Menggunakan HTML, CSS, dan PHP dasar untuk membangun struktur halaman dan formulir pendaftaran.\n- Website ini membantu pemilik hewan dalam mencari layanan kesehatan hewan secara mudah.', '2024', '2024'),
(3, 'Sistem Informasi Sekolah', 'Web Developer ', '- Proyek kelompok semester 4 dengan tema sistem informasi berbasis web untuk sekolah.\n- Bertugas di bagian manajemen data siswa dan modul pengumpulan tugas secara online.\n- Menggunakan framework CodeIgniter dan database MySQL.\n- Website dirancang agar guru dan siswa dapat mengakses informasi akademik dengan mudah dan cepat.', '2023', '2024'),
(4, 'Wadah Wisata Alam Sukabumi', 'Backend Developer', '- Proyek PBO semester 3 dengan konsep sistem informasi pariwisata lokal.\n- Bertanggung jawab dalam pembuatan backend untuk pengelolaan data wisata alam di wilayah Sukabumi.\n- Fitur utama mencakup sistem login, input data destinasi, dan galeri foto.\n- Tujuannya untuk mempromosikan potensi wisata daerah secara digital.', '2023', '2024'),
(5, 'SatuHariLagi', 'Mobile Developer ', '- Aplikasi journaling harian yang dibuat dalam proyek mata kuliah Mobile Programming Dasar semester 4.\n- Bertugas dalam pengembangan tampilan UI serta pengelolaan data jurnal menggunakan Room Database.\n- Aplikasi memungkinkan pengguna menulis catatan harian dan memantau aktivitas produktif dengan tampilan minimalis.\n- Proyek dikembangkan bersama tim beranggotakan 4 orang.', '2024', '2024');

-- --------------------------------------------------------

--
-- Struktur dari tabel `skills`
--

CREATE TABLE `skills` (
  `id_skills` int NOT NULL,
  `category` enum('Frontend Development','Backend Development','Design & Tools','Cloud & DevOps') NOT NULL,
  `namaskills` varchar(50) NOT NULL,
  `persentasi` int NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci;

--
-- Dumping data untuk tabel `skills`
--

INSERT INTO `skills` (`id_skills`, `category`, `namaskills`, `persentasi`) VALUES
(101, 'Frontend Development', 'HTML/CSS', 80),
(102, 'Frontend Development', 'JavaScript', 70),
(103, 'Frontend Development', 'Vue.js', 70),
(104, 'Backend Development', 'PHP', 70),
(105, 'Backend Development', 'Laravel', 70),
(106, 'Backend Development', 'MySQL', 65),
(107, 'Design & Tools', 'Figma', 85),
(108, 'Design & Tools', 'Photoshop', 70),
(109, 'Design & Tools', 'Illustrator', 50),
(1010, 'Cloud & DevOps', 'AWS', 56),
(1011, 'Cloud & DevOps', 'Docker', 60),
(1012, 'Cloud & DevOps', 'Git', 80);

--
-- Indexes for dumped tables
--

--
-- Indeks untuk tabel `about`
--
ALTER TABLE `about`
  ADD PRIMARY KEY (`id_about`);

--
-- Indeks untuk tabel `academic`
--
ALTER TABLE `academic`
  ADD PRIMARY KEY (`id_academic`);

--
-- Indeks untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  ADD PRIMARY KEY (`id_portfolio`);

--
-- Indeks untuk tabel `project`
--
ALTER TABLE `project`
  ADD PRIMARY KEY (`id_project`);

--
-- Indeks untuk tabel `skills`
--
ALTER TABLE `skills`
  ADD PRIMARY KEY (`id_skills`);

--
-- AUTO_INCREMENT untuk tabel yang dibuang
--

--
-- AUTO_INCREMENT untuk tabel `about`
--
ALTER TABLE `about`
  MODIFY `id_about` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11112;

--
-- AUTO_INCREMENT untuk tabel `academic`
--
ALTER TABLE `academic`
  MODIFY `id_academic` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=227;

--
-- AUTO_INCREMENT untuk tabel `portfolio`
--
ALTER TABLE `portfolio`
  MODIFY `id_portfolio` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=17;

--
-- AUTO_INCREMENT untuk tabel `project`
--
ALTER TABLE `project`
  MODIFY `id_project` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT untuk tabel `skills`
--
ALTER TABLE `skills`
  MODIFY `id_skills` int NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=1013;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
