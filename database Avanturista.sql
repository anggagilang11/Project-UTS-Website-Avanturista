-- phpMyAdmin SQL Dump
-- version 4.9.7
-- https://www.phpmyadmin.net/
--
-- Host: localhost:3306
-- Generation Time: Oct 27, 2021 at 10:19 AM
-- Server version: 5.7.35-cll-lve
-- PHP Version: 7.3.30

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
SET AUTOCOMMIT = 0;
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `avanturi_db`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_admin`
--

CREATE TABLE `tbl_admin` (
  `id` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `user_admin` varchar(20) NOT NULL,
  `pass_admin` varchar(20) NOT NULL,
  `level` varchar(20) NOT NULL,
  `nama` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_admin`
--

INSERT INTO `tbl_admin` (`id`, `foto`, `user_admin`, `pass_admin`, `level`, `nama`) VALUES
(1, 'admin.jpg', 'admin', 'admin', '1', 'Angga Gilang');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_bukti`
--

CREATE TABLE `tbl_bukti` (
  `id_bukti` int(11) NOT NULL,
  `id_pesan` int(11) NOT NULL,
  `file` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_daerah`
--

CREATE TABLE `tbl_daerah` (
  `id_provinsi` int(11) NOT NULL,
  `id_daerah` int(11) NOT NULL,
  `nama_daerah` varchar(35) NOT NULL,
  `biaya` int(100) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_daerah`
--

INSERT INTO `tbl_daerah` (`id_provinsi`, `id_daerah`, `nama_daerah`, `biaya`) VALUES
(1, 1, 'Blitar', 50000),
(1, 2, 'Malang', 150000),
(3, 3, 'Bogor', 200000),
(5, 4, 'DIY', 50000),
(1, 5, 'Surabaya', 200000);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_hotel`
--

CREATE TABLE `tbl_hotel` (
  `id_hotel` int(11) NOT NULL,
  `hotel` varchar(100) NOT NULL,
  `harga` int(11) NOT NULL,
  `ket_hotel` text NOT NULL,
  `foto` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_hotel`
--

INSERT INTO `tbl_hotel` (`id_hotel`, `hotel`, `harga`, `ket_hotel`, `foto`) VALUES
(1, 'ARTOTEL Yogyakarta', 200000, '<p>Terletak di area Depok, Artotel Yogyakarta adalah tempat yang sempurna untuk menikmati Yogyakarta dan sekitarnya. Pusat kota hanya berjarak 7,6 km, dan bandara dapat dicapai dalam waktu 22 menit. Dengan lokasinya yang nyaman, properti ini menawarkan akses mudah ke tujuan kota yang harus dilihat.<br /><br />Di Artotel Yogyakarta, layanan yang sangat baik dan fasilitas unggul untuk masa menginap yang tak terlupakan. Para tamu hotel ini dapat menikmati fasilitas di tempat seperti WiFi gratis di semua kamar, satpam 24 jam, layanan kebersihan harian, akses mudah untuk kursi roda, resepsionis 24 jam.</p>', 'hotel1.webp'),
(2, 'PULANG ke UTTARA', 250000, '<p>Jika apa yang Anda cari adalah akomodasi yang berlokasi di Yogyakarta, carilah Pulang ke Uttara. Terletak 5 km dari kegembiraan kota, akomodasi bintang 4 ini menampung lokasi yang sangat baik dan menyediakan akses ke atraksi-obyek wisata terbesar di kota ini. Dengan lokasinya yang nyaman, properti ini menawarkan akses mudah ke tujuan kota yang harus dilihat.<br /><br />Fasilitas dan pelayanan yang disediakan oleh Pulang Ke Uttara memastikan pengalaman menginap yang menyenangkan bagi para tamu. Properti ini menyediakan WiFi gratis di semua kamar, satpam 24 jam, layanan kebersihan harian, perapian, resepsionis 24 jam untuk memastikan kenyamanan terbaik.<br /><br />Semua akomodasi tamu memiliki fasilitas yang bijaksana untuk memastikan rasa nyaman yang tak tertandingi. Para tamu akan menikmati fasilitas dan layanan yang terbagus dari hotel ini termasuk pusat kebugaran, kolam renang (luar ruangan). Padang Ke Uttara adalah tempat penginapan ideal bagi para pelancong yang mencari daya tarik, kenyamanan dan kepraktisan di Yogyakarta.</p>', 'hotel2.webp'),
(3, 'Lafayette Boutique Hotel ', 300000, '<p>Terletak strategis di Yogyakarta, Lafayette Boutique Hotel adalah tempat yang cocok untuk menelusuri kota yang hidup ini. Hanya 10 km jauhnya, hotel bintang 5 ini dapat dengan mudah diakses dari bandara. Dengan lokasinya yang nyaman, hotel ini menawarkan akses mudah ke destinasi yang harus dilihat oleh kota.<br /><br />Di Lafayette Boutique Hotel, layanan yang unggul dan menawarkan fasilitas yang unggul untuk pengalaman menginap yang tak terlupakan. Ketika menginap di properti yang luar biasa ini, para tamu dapat menikmati keamanan 24 jam, layanan kebersihan harian, Wi-in wisata di semua kamar, layanan pos, check-in / check-out pribadi.<br /><br />Semua akomodasi tamu memiliki fasilitas yang bijaksana untuk memastikan rasa nyaman yang tak tertandingi. Hotel ini menawarkan fasilitas rekreasi yang mengagumkan seperti pusat kebugaran, spa, pijat. Temukan perpaduan menarik dari layanan profesional dan beragam fitur di Lafayette Boutique Hotel.</p>', 'hotel3.webp'),
(4, 'Jambuluwuk Malioboro Hotel Yogyakarta', 500000, '<p>Terletak di pusat Kota Sejarah Yogyakarta, Jambuluwuk Malioboro Hotel Yogyakarta menawarkan akomodasi yang nyaman dengan layanan sempurna. Para tamu dapat mencapai beberapa atraksi lokal karena hotel ini berdekatan dengan Malioboro Street, Istana Sultan, Pasar Beringharjo tradisional, dan stasiun kereta Lempuyangan. Bandara Internasional Adi Sucipto juga berjarak 20 menit berkendara.<br /><br />Jambuluwuk Malioboro Hotel Yogyakarta memiliki kamar-kamar yang luas, yang semuanya dilengkapi dengan selera dan dilengkapi dengan fasilitas standar. Temukan berbagai layanan seperti Batik Lounge atau Patio Bistro di mana para tamu dapat memperoleh suasana khusus untuk rapat. Hotel ini juga menawarkan 11 ruang pertemuan dan ruang pertemuan VIP lainnya untuk pelancong bisnis. Nikmati beragam masakan internasional dan lokal di Jambuluwuk Coffee Shop.<br /><br />Hotel ini menyediakan fasilitas rekreasi untuk memastikan bahwa para tamu dapat bersantai dan bersantai selama menginap. Untuk menyebutkan fasilitas itu, ada kolam renang, spa, gym, perpustakaan, karaoke, dan J-Store. Dengan lokasi dan fasilitas yang ideal untuk dicocokkan, Jambuluwuk Malioboro Hotel Yogyakarta mengenai tempat dalam banyak hal.</p>', 'hotel5.webp'),
(5, 'Eastparc Hotel Yogyakarta', 250000, '<p>Terletak strategis di Depok, Eastparc Hotel Yogyakarta adalah tempat ideal untuk memulai menjelajahi Yogyakarta. Hanya 7,2 kilometer dari pusat kota, lokasi strategis hotel memastikan bahwa para tamu dapat dengan cepat dan mudah mencapai banyak tempat menarik. Untuk pilihan jalan-jalan dan atraksi lokal, Anda tidak perlu pergi jauh-jauh karena hotel ini terletak dekat dengan Plaza Ambarukmo, Museum Affandi dan Galeri Seni Lukisan Batik.<br /><br />Menawarkan layanan hotel yang unggul dan beragam fasilitas, Eastparc Hotel Yogyakarta berkomitmen untuk memastikan masa tinggal Anda senyaman mungkin. Para tamu hotel ini dapat menikmati fasilitas di tempat seperti layanan kamar, WiFi gratis di semua kamar, resepsionis 24 jam, fasilitas untuk tamu dengan kebutuhan khusus dan penyimpanan bagasi. Buat perjalanan Anda istimewa dengan memungkinkan staf ahli properti membuat masa menginap Anda berkesan dengan dekorasi kamar tertentu untuk ulang tahun, bulan madu, atau ulang tahun dengan biaya tambahan.<br /><br />Akomodasi hotel telah dipilih dengan cermat untuk tingkat kenyamanan dan kemudahan tertinggi. Banyak kamar memiliki televisi layar datar, handuk, akses internet - WiFi, akses internet WiFi (gratis), kamar bebas asap rokok hanyalah beberapa dari fasilitas yang dapat Anda nikmati. Hotel ini menawarkan fasilitas rekreasi yang memori, termasuk pusat kebugaran, kolam renang luar ruangan, taman bermain anak, kolam (anak), taman, untuk membantu Anda bersantai setelah hari di kota. Temukan perpaduan menarik dari layanan profesional dan beragam fitur di Eastparc Hotel Yogyakarta.</p>', 'hotel4.webp'),
(6, 'The Westlake Resort', 360000, '<p>Akomodasi bintang 4 ini siap untuk menyambut Sobat Pesona beserta keluarga dan membuat pengalaman berkunjung ke Yogyakarta lebih menyenangkan lagi. The Westlake Resort menawarkan berbagai macam aktivitas, seperti berenang, spa, jogging, bersepeda, dan memancing di danau yang menawan dengan beragam jenis ikan yang menarik. Sobat Pesona akan dimanjakan dengan suasana atraktif yang memadukan keindahan alam dengan seni dan arsitektur tradisional-kolonial khas Jawa. Resort ini adalah hotel dengan suasana alam yang menyegarkan dan bisa membuat pengalaman kunjungan Sobat Pesona ke Yogyakarta luar biasa berkesan.</p>', 'hotel6.jpg');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_paket`
--

CREATE TABLE `tbl_paket` (
  `id_paket` int(11) NOT NULL,
  `nama_paket` varchar(50) NOT NULL,
  `harga_paket` int(11) NOT NULL,
  `ket_paket` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_paket`
--

INSERT INTO `tbl_paket` (`id_paket`, `nama_paket`, `harga_paket`, `ket_paket`) VALUES
(1, 'Paket Hemat', 250000, 'Maliboro + Lava Tour'),
(2, 'Paket Keluarga', 350000, 'Museum Ullen + Musum Affandi + Malioboro + Lava Tour'),
(3, 'Paket Studi Tour', 150000, 'Museum Ullen + Musseum Affandi'),
(4, 'Paket Sederhana', 100000, 'Malioboro + Alun-Alun Kidul'),
(5, 'Paket Selatan', 450000, 'Gunung Api Purba + Pantai Parang Tritis + Hutan Pinus Mangunan'),
(6, 'Paket Cinta Jogja', 615000, '6 Destinasi Wisata (Bebas Pilih)');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_pesan`
--

CREATE TABLE `tbl_pesan` (
  `id_pesan` int(11) NOT NULL,
  `id_user` int(11) NOT NULL,
  `id_paket` int(11) NOT NULL,
  `id_hotel` int(11) NOT NULL,
  `id_daerah` int(11) NOT NULL,
  `tgl_pesan` date NOT NULL,
  `tgl_tour` date NOT NULL,
  `status` char(2) NOT NULL DEFAULT 'S1'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_pesan`
--

INSERT INTO `tbl_pesan` (`id_pesan`, `id_user`, `id_paket`, `id_hotel`, `id_daerah`, `tgl_pesan`, `tgl_tour`, `status`) VALUES
(42, 1, 2, 3, 3, '2021-10-26', '2021-10-11', 'S1'),
(43, 1, 1, 3, 1, '2021-10-26', '2021-10-04', 'S1'),
(44, 45, 2, 2, 3, '2021-10-26', '2021-11-24', 'S1'),
(45, 47, 3, 1, 5, '2021-10-26', '2021-10-29', 'S1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_provinsi`
--

CREATE TABLE `tbl_provinsi` (
  `id_provinsi` int(11) NOT NULL,
  `nama_provinsi` varchar(30) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tbl_provinsi`
--

INSERT INTO `tbl_provinsi` (`id_provinsi`, `nama_provinsi`) VALUES
(1, 'Jawa Timur'),
(2, 'Jawa Tengah'),
(3, 'Jawa Barat'),
(4, 'Jakarta'),
(5, 'Yogyagarta'),
(6, 'Banten');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_user`
--

CREATE TABLE `tbl_user` (
  `id_user` int(11) NOT NULL,
  `foto` varchar(50) NOT NULL,
  `nama_user` varchar(30) NOT NULL,
  `email_user` varchar(50) NOT NULL,
  `no_hp` varchar(14) NOT NULL,
  `no_rek` varchar(50) NOT NULL,
  `nama_rek` varchar(50) NOT NULL,
  `username` varchar(30) NOT NULL,
  `password` varchar(12) NOT NULL,
  `tgl_lahir` date NOT NULL,
  `jekel` varchar(1) NOT NULL,
  `alamat` text NOT NULL,
  `token` varchar(255) DEFAULT NULL,
  `aktif` enum('1','0') NOT NULL DEFAULT '0'
) ENGINE=InnoDB DEFAULT CHARSET=utf8;

--
-- Dumping data for table `tbl_user`
--

INSERT INTO `tbl_user` (`id_user`, `foto`, `nama_user`, `email_user`, `no_hp`, `no_rek`, `nama_rek`, `username`, `password`, `tgl_lahir`, `jekel`, `alamat`, `token`, `aktif`) VALUES
(1, '1.png', 'Angga', 'mikaelangga11@gmail.com', '085747378021', '9829382392', 'Angga', 'anggagilang', 'Cotton1111', '2017-04-22', 'L', 'Klaten', 'c2482a88d0a453bb8f794e5ebbef19b31c8a435e4d17c392e7f8087d3e0f2796', '1'),
(42, 'New Project (3).png', 'Rufina Truly', 'rufinatrulyac@gmail.com', '081239492066', '98219348324', 'Siapa ya', 'amorely', 'amorely', '2001-07-11', 'P', 'Pisang Street No. 37/Block Z3 BTN PKT', NULL, '0'),
(43, '', 'tes', 'gendutgoldie@gmail.com', 'gendutgoldie@g', 'gendutgoldie@gmail.com', 'gendutgoldie@gmail.com', 'gendutgoldie@gmail.com', 'gendutgoldie', '2021-10-26', 'L', 'gendutgoldie@gmail.com', NULL, '0'),
(44, '', 'yosafatangga11@gmail.com', 'yosafatangga11@gmail.com', 'yosafatangga11', 'yosafatangga11@gmail.com', 'yosafatangga11@gmail.com', 'yosafatangga11@gmail.com', 'yosafatangga', '2021-10-26', 'L', 'yosafatangga11@gmail.com', NULL, '0'),
(45, 'duit.png', 'jokoe', 'danopl@yahoo.com', '0831423452345', '34534', 'jokokoko', 'jokoe', 'jokoko', '2000-06-13', 'L', 'Jakarta', NULL, '0'),
(46, 'New Project (3).png', 'Rufina Truly', '190710135@students.uajy.ac.id', '081239492066', '123456567648', 'Siapa', 'amorely', 'amorely', '2021-09-29', 'P', 'Pisang Street No. 37/Block Z3 BTN PKT', NULL, '0'),
(47, 'Untitled design.png', 'Rufina', 'rufinatrulyac@gmail.com', '081239492066', '23891237192', 'Rufina', 'anon', 'anonimos', '2001-07-11', 'P', 'Pisang Street No. 37/Block Z3 BTN PKT', NULL, '0');

-- --------------------------------------------------------

--
-- Table structure for table `tempat`
--

CREATE TABLE `tempat` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `konten` varchar(500) NOT NULL,
  `gambar` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

--
-- Dumping data for table `tempat`
--

INSERT INTO `tempat` (`id`, `nama`, `konten`, `gambar`) VALUES
(1, 'Tugu Jogja', '<p>Berdiri tegak tepat di jantung kota Jogja, Tugu Jogja, atau yang kerap disebut sebagai Tugu Pal Putih ini merupakan saksi bisu perkembangan kota Jogja sejak tiga abad yang lalu. Selain memiliki nilai historis yang sangat kuat, desain tugunya yang unik dengan bagian puncak menyerupai tanduk unicorn ini tentunya cukup banyak menarik perhatian wisatawan. Tak heran, tugu ini kerap banyak dikunjungi para wisatawan untuk sekedar berswafoto.</p>', 'tugu.jpg'),
(2, 'Jalan Malioboro', '<p>Salah satu destinasi wisata yang paling populer dijajaki wisatawan yang berkunjung ke Jogja adalah Malioboro. Selain memiliki lokasi yang strategis dan mudah diakses, Malioboro menawarkan ragam daya tarik yang membuat pengunjung betah berlama-lama disana, termasuk bagi para solo traveler. Pengunjung dapat jalan-jalan di sore hari, duduk-duduk santai di bangku-bangku yang tersedia di trotoar dan menikmati hiruk pikuk jalanan Malioboro, berbelanja pakaian, batik, dan pernak-pernik khas Jogja, h', 'malioboro.jpg'),
(3, 'Museum Ullen', '<p>Museum Ullen Sentalu adalah salah satu museum yang wajib di kunjungi saat berkunjung ke Yogyakarta. Pasalnya, museum yang terletak di lereng Gunung Merapi ini menyuguhkan koleksi peninggalan kerajaan Mataram yang lengkap. Selain dapat belajar dan menggali lebih dalam mengenai sejarah, pengunjung pun dapat melihat keunikan arsitektur museum yang menyatu dengan alam.</p>', 'museum ullen sentalu.jpg'),
(4, 'Museum Affandi', '<p>Pada museum seluas 3500 meter persegi ini, kita dapat melihat dan membayangkan kehidupan Affandi, sang maestro seni lukis Indonesia dan keluarganya sepanjang karir hidupnya. Pada museum ini, terdapat koleksi lukisan Affandi yang ditampilkan sehingga pengunjung dapat melihat perkembangan gaya Affandi dari awal sampai akhir yang dimulai dari gaya naturalis hingga ke gayanya yang terpengaruh gaya impresionisme Perancis. Selain lukisan, museum ini juga menyimpan barang-barang milik Affandi sepert', 'museum affandi.jpg'),
(5, 'Alun-Alun Kidul', '<p>Pelesiran di Jogja terasa kurang lengkap jika belum menyambangi objek wisata Alun-Alun Kidul (Alun-Alun Selatan). Selain bisa mencicipi kuliner yang lezat, salah satu aktivitas yang banyak digandrungi wisatawan adalah ritual masangin. Masangin adalah kegiatan berjalan melewati dua pohon beringin yang berada di tengah Alun-Alun dengan mata tertutup. Mitosnya, yang bisa menaklukan tantangan tersebut hanyalah mereka yang memiliki niat baik dan hati bersih.</p>', 'alun2kidul.jpg'),
(6, 'Pantai Parangtritis', '<p>Terletak 27 km Selatan Kota Jogja, pantai Parangtritis merupakan tempat wisata yang mudah dicapai entah dengan transportasi umum maupun kendaraan pribadi. Pada pantai ini, terdapat berbagai macam kegiatan rekreasi untuk berbagai umur, sehingga jika matahari terbenam dan ombak mulai pasang, para pengunjung masih dapat bersenang-senang di pantai dengan beraktivitas seberti bermain ATV menyusuri permukaan pasir dengan bendi sambil menikmati matahari terbenam yang romantis.</p>', 'pantai parangtritis.jpg'),
(7, 'Gunung Api Purba Nglangeran', '<p>Gunung Api Purba Nglanggeran menjadi salah satu tempat wisata menarik di desa ini. Gunung purba ini memiliki ketinggian 700 mdpl. Pengunjung bisa melihat matahari terbit pada pagi hari dan sunset saat petang. Butuh waktu sekitar 50 menit sampai satu jam dari kaki gunung untuk sampai ke puncaknya.Artikel ini telah tayang di Kompas.com dengan judul \"Desa Nglanggeran, Wisata Lengkap dari Gunung Api Purba sampai Air Terjun\"</p>', 'gunungapipurba.jpg'),
(8, 'Hutan Pinus Mangunan', '<p>Terletak di daerah Bantul, Hutan Pinus Mangunan menjadi destinasi kekinian yang banyak diburu wisatawan. Pepohonan yang menjulang tinggi, udara yang sejuk, pemandangan yang memesona, serta spot-spot foto instagramable membuat banyak pengunjung tertarik untuk berkunjung. Jangan lupa, jika ingin mengunjungi tempat ini, sediakan peralatan foto yang bagus untuk mengambil foto yang keren!</p>', 'hutan pinus.jpg'),
(9, 'Lava Tour Merapi', '<p>Lava Tour Merapi merupakan wisata alam yang berada di Provinsi Yogyakarta, wisata ini merupakan sebuah perjalanan menggunakan mobil Willys yaitu mobil jeep yang dipakai saat perang dunia ke II. Dengan mobil jeep ini kita akan menyusuri kawasan yang terdampak erupsi gunung Merapi pada tahun 2010, yang tentunya akan memacu adrenalin kita karena akan melawati jalan yang terjal maupun curam.</p>', 'lavatour.jpg');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  ADD PRIMARY KEY (`id_bukti`),
  ADD KEY `id_pesan` (`id_pesan`);

--
-- Indexes for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
  ADD PRIMARY KEY (`id_daerah`),
  ADD KEY `id_provinsi` (`id_provinsi`);

--
-- Indexes for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  ADD PRIMARY KEY (`id_hotel`);

--
-- Indexes for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  ADD PRIMARY KEY (`id_paket`);

--
-- Indexes for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD PRIMARY KEY (`id_pesan`),
  ADD KEY `id_user` (`id_user`),
  ADD KEY `id_paket` (`id_paket`),
  ADD KEY `id_hotel` (`id_hotel`),
  ADD KEY `id_paket_2` (`id_paket`),
  ADD KEY `id_paket_3` (`id_paket`),
  ADD KEY `id_daerah` (`id_daerah`);

--
-- Indexes for table `tbl_provinsi`
--
ALTER TABLE `tbl_provinsi`
  ADD PRIMARY KEY (`id_provinsi`);

--
-- Indexes for table `tbl_user`
--
ALTER TABLE `tbl_user`
  ADD PRIMARY KEY (`id_user`),
  ADD KEY `id_user` (`id_user`);

--
-- Indexes for table `tempat`
--
ALTER TABLE `tempat`
  ADD PRIMARY KEY (`id`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_admin`
--
ALTER TABLE `tbl_admin`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=8;

--
-- AUTO_INCREMENT for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  MODIFY `id_bukti` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=27;

--
-- AUTO_INCREMENT for table `tbl_hotel`
--
ALTER TABLE `tbl_hotel`
  MODIFY `id_hotel` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=15;

--
-- AUTO_INCREMENT for table `tbl_paket`
--
ALTER TABLE `tbl_paket`
  MODIFY `id_paket` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  MODIFY `id_pesan` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=46;

--
-- AUTO_INCREMENT for table `tbl_user`
--
ALTER TABLE `tbl_user`
  MODIFY `id_user` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=48;

--
-- AUTO_INCREMENT for table `tempat`
--
ALTER TABLE `tempat`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=19;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_bukti`
--
ALTER TABLE `tbl_bukti`
  ADD CONSTRAINT `tbl_bukti_ibfk_1` FOREIGN KEY (`id_pesan`) REFERENCES `tbl_pesan` (`id_pesan`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_daerah`
--
ALTER TABLE `tbl_daerah`
  ADD CONSTRAINT `tbl_daerah_ibfk_1` FOREIGN KEY (`id_provinsi`) REFERENCES `tbl_provinsi` (`id_provinsi`) ON DELETE CASCADE ON UPDATE CASCADE;

--
-- Constraints for table `tbl_pesan`
--
ALTER TABLE `tbl_pesan`
  ADD CONSTRAINT `tbl_pesan_ibfk_1` FOREIGN KEY (`id_user`) REFERENCES `tbl_user` (`id_user`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_2` FOREIGN KEY (`id_paket`) REFERENCES `tbl_paket` (`id_paket`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_3` FOREIGN KEY (`id_hotel`) REFERENCES `tbl_hotel` (`id_hotel`) ON DELETE CASCADE ON UPDATE CASCADE,
  ADD CONSTRAINT `tbl_pesan_ibfk_4` FOREIGN KEY (`id_daerah`) REFERENCES `tbl_daerah` (`id_daerah`) ON DELETE CASCADE ON UPDATE CASCADE;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
