-- --------------------------------------------------------
-- Host:                         127.0.0.1
-- Server version:               10.4.8-MariaDB - mariadb.org binary distribution
-- Server OS:                    Win64
-- HeidiSQL Version:             10.3.0.5771
-- --------------------------------------------------------

/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET NAMES utf8 */;
/*!50503 SET NAMES utf8mb4 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;


-- Dumping database structure for posyandu_balita
CREATE DATABASE IF NOT EXISTS `posyandu_balita` /*!40100 DEFAULT CHARACTER SET utf8mb4 */;
USE `posyandu_balita`;

-- Dumping structure for table posyandu_balita.artikel
CREATE TABLE IF NOT EXISTS `artikel` (
  `ID_ARTIKEL` int(11) NOT NULL AUTO_INCREMENT,
  `JUDUL` varchar(100) DEFAULT NULL,
  `FOTO_ARTIKEL` varchar(100) DEFAULT NULL,
  `ISI_ARTIKEL` text DEFAULT NULL,
  PRIMARY KEY (`ID_ARTIKEL`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.artikel: ~5 rows (approximately)
/*!40000 ALTER TABLE `artikel` DISABLE KEYS */;
INSERT INTO `artikel` (`ID_ARTIKEL`, `JUDUL`, `FOTO_ARTIKEL`, `ISI_ARTIKEL`) VALUES
	(1, 'Manfaat Pemberian ASI Eksklusif Hingga Usia 2 Tahun', 'manfaat_asi.jpg', 'Berikut ini manfaatnya :\r\n\r\n1. Memberikan nutrisi kepada bayi\r\n	Jika mengira ASI eksklusif tak lagi memiliki nilai nutrisi setelah setahun, itu keliru. ASI selalu mengandung banyak nutrisi yang dibutuhkan bayi. Misalnya protein, kalsium, dan vitamin.\r\n\r\n2. Meningkatkan sistem imun\r\n	Bayi yang mendapat ASI eksklusif lebih jarang sakit dan tingkat mortalitasnya rendah. Sistem imun bayi akan kian meningkat jika lebih lama mendapat ASI hingga usia 2 tahun atau lebih.\r\n\r\n3. Meningkatkan perkembangan otak\r\n	Kandungan nutrisi dalam ASI membantu perkembangan otak bayi. Proses menyusui juga punya andil, misalnya ketika bayi menyusu dalam posisi berbeda sehingga mereka tidak terpaku pada posisi yang sama seperti ketika meminum susu dari botol.\r\n\r\n4. Ibu jadi lebih sehat\r\n	Ibu yang memberikan ASI eksklusif lebih kecil risikonya mengalami kanker payudara. Risiko penyakit kanker lain juga lebih kecil, seperti kanker endometrial dan ovarian.\r\n\r\n5. Menenangkan bayi dan ibu\r\n	Baik ibu maupun bayi bisa lebih tenang dalam proses menyusu hingga usia 2 tahun. Sebab, ada jalinan batin dalam proses itu. Ibu terutama bisa lebih tenang dan nyaman, misalnya setelah capek pulang kerja.\r\n\r\nBerikut sejumlah tips agar ibu sukses memberikan ASI hingga bayi berusia 2 tahun :\r\n\r\n1. Atur waktu\r\n	Pengaturan ini bergantung pada rutinitas ibu. Bila bekerja, ibu mungkin dapat memberikan ASI pada pagi sebelum berangkat dan sore atau malam setelah pulang. Sementara itu, di kantor ibu tetap dapat menyiapkan ASI dengan memerahnya untuk diberikan lewat botol saat siang.\r\n\r\n2. Siapkan stok\r\n	Setelah selesai memberikan ASI eksklusif selama 6 bulan, produksi ASI tetap berjalan terus. Karena itu, ASI harus selalu diberikan kepada bayi. Termasuk lewat botol. Siapkan stok ASI jika dibutuhkan saat ibu sedang tak ada di rumah. Jadi tak perlu menggunakan susu formula karena ASI masih tersedia.\r\n\r\n3. Rutin memompa\r\n	Terutama bagi wanita karier, harus rutin memompa ASI walau program ASI eksklusif sudah tuntas. Ibu bisa menggunakan tangan, pompa manual, ataupun pompa elektrik. \r\n\r\n4. Jaga asupan bergizi\r\n	Makanan dan minuman yang diasup ibu mempengaruhi kualitas dan kuantitas ASI. Maka hindari konsumsi yang tidak sehat dan utamakan makanan bergizi demi kesehatan buah hati.\r\n\r\n5. Hindari stres\r\n	Stres adalah salah satu faktor yang membuat ASI tidak keluar secara semestinya. Agar tidak stres, ibu bisa berolahraga seperti meditasi atau yoga.\r\n\r\n6. Minta dukungan sekitar\r\n	Peran orang-orang di sekitar ibu juga membantu kelangsungan program ASI eksklusif hingga tahap lanjutan. Jangan sungkan meminta bantuan ketika hendak memberikan ASI kepada bayi.'),
	(2, 'Cukupi Nutrisi Untuk Pertumbuhan Gigi pada Bayi', 'pertumbuhangigi.jpg', '	Perkembangan tulang dan gigi bayi sudah terjadi sejak dalam kandungan. Oleh karena itu, nutrisi selama kehamilan memiliki peranan penting pada perkembangan tulang dan gigi janin. Agar tulang dan gigi kuat, kecukupan asupan nutrisi ibu saat hamil harus jadi perhatian. Bila tulang dan gigi kuat, maka akan mendukung fisik sang buah hati tumbuh kuat pula, termasuk pertumbuhan gigi pada bayi. \r\n\r\n	Sumber kalsium utama adalah produk dairy (susu, keju, yoghurt). Selain itu juga terdapat dari makanan lain seperti ikan, kacang-kacangan, biji-bijian, sayuran berdaun hijau seperti bayam, dan tahu. Sumber makanan yang mengandung vitamin D, antara lain ikan laut, kuning telur, jamur, dan susu. Saat bayi sudah mendapat MPASI, tekstur makanan sebaiknya meningkat sesuai perkembangan usianya. Pemberian makanan yang lebih padat seperti biskuit bayi dan finger food (biasanya dapat diberikan pada usia 9 bulan) juga dapat menstimulasi pertumbuhan gigi bayi. Teether atau mainan gigit juga dapat dipakai untuk merangsang keluarnya gigi. Teether juga dapat dipakai untuk mengurangi nyeri bila gigi sudah mulai erupsi.\r\n\r\nTanda Pertumbuhan Gigi Pada Bayi\r\n\r\nTanda-tanda bayi tumbuh gigi antara lain:\r\n\r\n•	Bayi tampak mengeluarkan liur lebih banyak dan ruam di sekitar mulut akibat iritasi terhadap liur\r\n\r\n•	Bayi tampak lebih sering menggigit atau memasukaan tangan\r\n\r\n•	Gusi tampak lebih merah dan bengkak\r\n\r\n•	Perubahan pola tidur dan makan karena rasa tidak nyaman pada gusi\r\n\r\n•	Rewel yang hilang timbul\r\n\r\n•	Suhu terasa agak hangat akibat pembengkakan pada gusi'),
	(3, 'Proses Tumbuh Gigi Pada Bayi', 'prosesgigi.jpg', '	Pada usia 6-12 bulan umumnya gigi yang akan tumbuh lebih dulu adalah 2 gigi seri bawah dan dilanjutkan dengan 2 gigi seri atas. Jika memang belum terdapat tanda-tanda proses tumbuh gigi seperti di atas, ada beberapa hal yang dapat dilakukan, antara lain :\r\n\r\n	1.	Perbanyak makan makanan dengan tekstur yang lebih kasar. Untuk snack time dapat diberikan finger food sayuran atau buah dengan tekstur halus namun cukup padat. Misalnya wortel, brokoli, kembang kol, timun,  pepaya, pisang dan melon.\r\n\r\n	2.	Menggosok gusi dengan kasa 1 kali sehari. Untuk bayi yang belum tumbuh gigi, area gusi sebaiknya tetap dibersihkan 1 kali sehari sebelum tidur. Penggunaan kain kasa yang dililitkan pada jari bertujuan untuk mebersihkan gusi dari sisa makanan. Kasa juga sekaligus dapat memperlancar peredaran darah gusi bayi.\r\n\r\n	3.	Berikan teether dari bahan karet yang aman. Teether bisa dalam bentuk ring ataupun  sikat gigi karet yang mudah digenggam dan harus dibawah pengawasan orang tua.\r\n\r\nBagaimana Jika Tidak Kunjung Bayi Tumbuh Gigi?\r\n\r\n	Pada dasarnya setiap bayi memiliki kemampuan berbeda-beda dalam setiap tumbuh kembangnya. Para orang tua tidak perlu khawatir selama memerhatikan apakah terdapat faktor genetik dan faktor medis yang menyebabkan pertumbuhan gigi tersebut dapat terhambat. Bisa juga dengan memperhatikan makanan yang dikonsumsi sang buah hati agar dapat merangsang pertumbuhan giginya.  “Sebaiknya sedari dini sudah dibiasakan untuk memeriksakan kesehatan gigi anak secara rutin untuk mengetahui tumbuh kembang giginya,” tukas Dokter Gigi Merdiana.\r\n'),
	(4, 'Imunisasi Dasar BCG, Manfaat, dan Kapan Vaksin BCG Dilakukan', 'imunisasi.jpg', 'Apa Manfaat Vaksin BCG\r\n\r\n	Menurut WHO, tuberkulosis lebih banyak menewaskan orang dewasa berusia antara 15 dan 59 tahun dibanding penyakit lain. Di Indonesia, setidaknya 840.000 orang menderita tuberkulosis pada 2018. Data itu menunjukkan perlunya imunisasi dengan vaksin BCG untuk masyarakat.\r\n\r\n	Manfaat utama vaksin BCG adalah mengurangi hingga mencegah risiko terjangkit kuman penyebab tuberkulosis. Menurut penelitian, imunisasi vaksin BCG ini lebih efektif dalam melaksanakan fungsinya bila diberikan pada bayi.\r\n\r\nKapan Imunisasi BCG Dapat Diberikan?\r\n\r\n	Menurut panduan Kementerian Kesehatan, vaksin BCG diberikan bagi anak berusia satu bulan. Vaksin ini kerap dibarengi dengan imunisasi polio 1. Secara umum, hanya anak bayi yang disarankan mendapat vaksin BCG. Pertimbangan khusus pemberian imunisasi BCG berlaku bagi anak yang lebih besar yang berisiko tertular tuberkulosis.\r\n\r\nPemberian vaksin BCG mesti ditunda dalam beberapa kondisi tertentu, misalnya:\r\n\r\n•	Berat badan bayi kurang dari 2,5 kilo atau dalam kondisi tidak sehat\r\n\r\n•	Anak lahir dari ibu yang positif HIV, sementara hasil tes HIV bayi belum keluar\r\n\r\n•	Sudah mendapat vaksin lain dalam empat pekan terakhir\r\n\r\n•	Sedang sakit demam atau sakit parah lainnya'),
	(5, 'Kenali Manfaat Bayam untuk Bayi yang Amat Menguntungkan', 'bayam.jpg', '	Bayam terkenal akan kandungan seratnya yang melimpah. Dalam seporsi bayam untuk bayi atau setara sekitar 30–50 gram bayam, terdapat sekitar 0,7–1 gram serat. Angka tersebut sudah setara dengan 8–9% kebutuhan serat harian bayi usia 1 tahun ke bawah.\r\n\r\nBerikut ini adalah ragam nutrisi beserta jumlahnya yang terdapat dalam setiap 50 gram bayam:\r\n\r\n•	Protein: 1–1,2 gram\r\n\r\n•	Karbohidrat: 1,5–2 gram\r\n\r\n•	Folat: 65–90 mcg (mikrogram)\r\n\r\n•	Vitamin A: 200–250 mcg\r\n\r\n•	Vitamin K: 200–230 mcg\r\n\r\n•	Vitamin C: 8,5–10 mg (miligram)\r\n\r\n•	Kalsium: 30¬ mg\r\n\r\n•	Zat besi: 0,8–0,9 mg\r\n\r\n•	Kalium: 170–200 mg\r\n\r\n•	Sodium: 30–35 mg\r\n\r\n•	Magnesium: 30–35 mg\r\n\r\n•	Fosfor: 15–20 mg\r\n\r\nBeberapa Manfaat Bayam untuk Bayi\r\n\r\n1. Menyehatkan mata\r\n	Berkat kandungan lutein, zeaxanthin, dan vitamin A yang melimpah, bayam dapat menjaga kesehatan mata bayi dan mencegah kerusakan mata akibat paparan sinar matahari dan juga baik untuk mempertajam penglihatan pada bayi.\r\n\r\n2. Meningkatkan daya tahan tubuh\r\n	Vitamin C pada bayam tak hanya mampu menangkal efek radikal bebas, tetapi juga memperkuat sistem kekebalan tubuh bayi.\r\n\r\n	Di dalam tubuh bayi, vitamin C bertugas meningkatkan produksi sekaligus efektivitas sel darah putih yang berperan melawan kuman, virus, dan parasit penyebab infeksi atau zat berbahaya lain. Dengan demikian, bayi tidak mudah terserang penyakit.\r\n\r\n3. Mempercepat pemulihan luka\r\n	Bayi sangat rentan terluka, misalnya akibat merangkak di lantai yang kasar atau terjatuh. Hal ini umum terjadi pada bayi dan memang sangat sulit untuk sepenuhnya dicegah.\r\n	Rutin memberikan bayam akan membantu bayi ketika mengalami luka. Pasalnya, kandungan vitamin K pada bayam yang melimpah berperan dalam proses pembekuan darah sehingga membuat luka lebih cepat sembuh.\r\n');
/*!40000 ALTER TABLE `artikel` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.data_pemeriksaan
CREATE TABLE IF NOT EXISTS `data_pemeriksaan` (
  `ID_PERIKSA` int(11) NOT NULL AUTO_INCREMENT,
  `ID_KADER` int(11) DEFAULT NULL,
  `ID_USER` int(11) DEFAULT NULL,
  `ID_VITAMIN` int(11) DEFAULT NULL,
  `ID_IMUN` int(11) DEFAULT NULL,
  `ID_JADWAL` int(11) DEFAULT NULL,
  `BERAT_BADAN` int(11) DEFAULT NULL,
  `TINGGI_BADAN` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_PERIKSA`),
  KEY `FK_DATA_PEM_RELATIONS_USER` (`ID_USER`),
  KEY `FK_DATA_PEM_RELATIONS_VITAMIN` (`ID_VITAMIN`),
  KEY `FK_DATA_PEM_RELATIONS_IMUNISAS` (`ID_IMUN`),
  KEY `FK_DATA_PEM_RELATIONS_KADER` (`ID_KADER`),
  KEY `ID_JADWAL` (`ID_JADWAL`),
  CONSTRAINT `FK_DATA_PEM_RELATIONS_IMUNISAS` FOREIGN KEY (`ID_IMUN`) REFERENCES `imunisasi` (`ID_IMUN`),
  CONSTRAINT `FK_DATA_PEM_RELATIONS_JADWAL` FOREIGN KEY (`ID_JADWAL`) REFERENCES `jadwal` (`ID_JADWAL`),
  CONSTRAINT `FK_DATA_PEM_RELATIONS_KADER` FOREIGN KEY (`ID_KADER`) REFERENCES `kader` (`ID_KADER`),
  CONSTRAINT `FK_DATA_PEM_RELATIONS_USER` FOREIGN KEY (`ID_USER`) REFERENCES `userr` (`ID_USER`),
  CONSTRAINT `FK_DATA_PEM_RELATIONS_VITAMIN` FOREIGN KEY (`ID_VITAMIN`) REFERENCES `vitamin` (`ID_VITAMIN`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.data_pemeriksaan: ~3 rows (approximately)
/*!40000 ALTER TABLE `data_pemeriksaan` DISABLE KEYS */;
INSERT INTO `data_pemeriksaan` (`ID_PERIKSA`, `ID_KADER`, `ID_USER`, `ID_VITAMIN`, `ID_IMUN`, `ID_JADWAL`, `BERAT_BADAN`, `TINGGI_BADAN`) VALUES
	(1, 1, 1, 3, 2, 1, 10, 10),
	(2, 2, 2, 4, 6, 1, 8, 4),
	(3, 1, 2, 3, 2, 1, 11, 11);
/*!40000 ALTER TABLE `data_pemeriksaan` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.imunisasi
CREATE TABLE IF NOT EXISTS `imunisasi` (
  `ID_IMUN` int(11) NOT NULL AUTO_INCREMENT,
  `JENIS_IMUN` varchar(50) DEFAULT NULL,
  `KETERANGAN_IMUN` text DEFAULT NULL,
  PRIMARY KEY (`ID_IMUN`)
) ENGINE=InnoDB AUTO_INCREMENT=7 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.imunisasi: ~6 rows (approximately)
/*!40000 ALTER TABLE `imunisasi` DISABLE KEYS */;
INSERT INTO `imunisasi` (`ID_IMUN`, `JENIS_IMUN`, `KETERANGAN_IMUN`) VALUES
	(2, 'HEPATITIS B', 'HEPATITIS B dan kerusakan hati'),
	(3, 'BCG', 'TBC (Tuberkolusis) yang berat'),
	(4, 'POLIO, IPV', 'Polio yang dapat menyebabkan lumpuh layuh pada tungaki dan atau tangan'),
	(5, 'DPT HB HIB', '- Difteri yang meneyebavkan penyumbatan jalan nafas\r\n- Batuk Rejan (batuk 100 hari)\r\n- Tetanus\r\n- Hepatitis B yang menyebabkan kerusakan hati \r\n- Infeksi HIB menyebabkan meringitis (radang selaput otak)\r\n'),
	(6, 'CAMPAK', 'Campak yang dapat mengakibatkan komplikasi radang paru, radang otak dan kebutaan');
/*!40000 ALTER TABLE `imunisasi` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.jadwal
CREATE TABLE IF NOT EXISTS `jadwal` (
  `ID_JADWAL` int(11) NOT NULL AUTO_INCREMENT,
  `ID_WAKTU` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_JADWAL`),
  KEY `FK_JADWAL_RELATIONS_WAKTU` (`ID_WAKTU`),
  CONSTRAINT `FK_JADWAL_RELATIONS_WAKTU` FOREIGN KEY (`ID_WAKTU`) REFERENCES `waktu` (`ID_WAKTU`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.jadwal: ~1 rows (approximately)
/*!40000 ALTER TABLE `jadwal` DISABLE KEYS */;
INSERT INTO `jadwal` (`ID_JADWAL`, `ID_WAKTU`) VALUES
	(1, 4);
/*!40000 ALTER TABLE `jadwal` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.jenis_kelamin
CREATE TABLE IF NOT EXISTS `jenis_kelamin` (
  `ID_JK` int(11) NOT NULL AUTO_INCREMENT,
  `JENIS_KELAMIN` char(2) DEFAULT NULL,
  PRIMARY KEY (`ID_JK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.jenis_kelamin: ~2 rows (approximately)
/*!40000 ALTER TABLE `jenis_kelamin` DISABLE KEYS */;
INSERT INTO `jenis_kelamin` (`ID_JK`, `JENIS_KELAMIN`) VALUES
	(1, 'P'),
	(2, 'L');
/*!40000 ALTER TABLE `jenis_kelamin` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.kader
CREATE TABLE IF NOT EXISTS `kader` (
  `ID_KADER` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_KADER` varchar(50) DEFAULT NULL,
  `ALAMAT_KADER` varchar(100) DEFAULT NULL,
  `TELP` int(11) DEFAULT NULL,
  `ID_JK` int(11) DEFAULT NULL,
  `USERNAMEE` varchar(20) DEFAULT NULL,
  `PASW` varchar(20) DEFAULT NULL,
  PRIMARY KEY (`ID_KADER`),
  KEY `FK_KADER_RELATIONS_JENIS_KE` (`ID_JK`),
  CONSTRAINT `FK_KADER_RELATIONS_JENIS_KE` FOREIGN KEY (`ID_JK`) REFERENCES `jenis_kelamin` (`ID_JK`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.kader: ~2 rows (approximately)
/*!40000 ALTER TABLE `kader` DISABLE KEYS */;
INSERT INTO `kader` (`ID_KADER`, `NAMA_KADER`, `ALAMAT_KADER`, `TELP`, `ID_JK`, `USERNAMEE`, `PASW`) VALUES
	(1, 'emilia', 'bangkingan', 909090, 1, 'aan', 'aan'),
	(2, 'fuji', 'surabaya', 1234567, 2, 'fuji', 'fuji');
/*!40000 ALTER TABLE `kader` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.laporan
CREATE TABLE IF NOT EXISTS `laporan` (
  `ID_LAPORAN` int(11) NOT NULL AUTO_INCREMENT,
  `ID_PERIKSA` int(11) DEFAULT NULL,
  PRIMARY KEY (`ID_LAPORAN`),
  KEY `FK_LAPORAN_RELATIONS_DATA_PEM` (`ID_PERIKSA`),
  CONSTRAINT `FK_LAPORAN_RELATIONS_DATA_PEM` FOREIGN KEY (`ID_PERIKSA`) REFERENCES `data_pemeriksaan` (`ID_PERIKSA`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.laporan: ~0 rows (approximately)
/*!40000 ALTER TABLE `laporan` DISABLE KEYS */;
INSERT INTO `laporan` (`ID_LAPORAN`, `ID_PERIKSA`) VALUES
	(1, 1),
	(2, 2),
	(3, 3);
/*!40000 ALTER TABLE `laporan` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.userr
CREATE TABLE IF NOT EXISTS `userr` (
  `ID_USER` int(11) NOT NULL AUTO_INCREMENT,
  `NO_KK` int(11) DEFAULT NULL,
  `NAMA_AYAH` varchar(50) DEFAULT NULL,
  `NAMA_IBU` varchar(50) DEFAULT NULL,
  `NAMA_BALITA` varchar(50) DEFAULT NULL,
  `TTL_BALITA` date DEFAULT NULL,
  `ID_JK` int(11) DEFAULT NULL,
  `ALAMAT` varchar(100) DEFAULT NULL,
  `NO_TELP` int(11) DEFAULT NULL,
  `USERNAMA` varchar(20) NOT NULL,
  `PASS` varchar(20) NOT NULL,
  PRIMARY KEY (`ID_USER`),
  KEY `FK_USER_RELATIONS_JENIS_KE` (`ID_JK`),
  CONSTRAINT `FK_USER_RELATIONS_JENIS_KE` FOREIGN KEY (`ID_JK`) REFERENCES `jenis_kelamin` (`ID_JK`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.userr: ~1 rows (approximately)
/*!40000 ALTER TABLE `userr` DISABLE KEYS */;
INSERT INTO `userr` (`ID_USER`, `NO_KK`, `NAMA_AYAH`, `NAMA_IBU`, `NAMA_BALITA`, `TTL_BALITA`, `ID_JK`, `ALAMAT`, `NO_TELP`, `USERNAMA`, `PASS`) VALUES
	(1, 777, 'father', 'mama', 'ganteng', '0000-00-00', 1, 'hatimu', 12345678, 'k', 'k'),
	(2, 838, 'firman', 'jj', 'ikan', '2020-06-27', 1, 'bumi', 9090909, 'gojek', 'gojek'),
	(3, 1234, 'king', 'quen', 'princes', '0000-00-00', 1, 'surabaya', 12345678, 'king', 'king1'),
	(4, 1234, 'ayah', 'ibu', 'princes', '0000-00-00', 1, 'surabaya', 12345678, 'p', 'p'),
	(5, 369, 'pro', 'nuub', 'epic', '2020-06-20', 2, 'surabaya', 858585, 'qw', 'p');
/*!40000 ALTER TABLE `userr` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.vitamin
CREATE TABLE IF NOT EXISTS `vitamin` (
  `ID_VITAMIN` int(11) NOT NULL AUTO_INCREMENT,
  `NAMA_VITAMIN` varchar(20) DEFAULT NULL,
  `KETERANGAN_VIT` varchar(100) DEFAULT NULL,
  PRIMARY KEY (`ID_VITAMIN`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.vitamin: ~3 rows (approximately)
/*!40000 ALTER TABLE `vitamin` DISABLE KEYS */;
INSERT INTO `vitamin` (`ID_VITAMIN`, `NAMA_VITAMIN`, `KETERANGAN_VIT`) VALUES
	(3, 'VITAMIN A (BIRU)', 'Meningkatkan kesehatan mata dan pertumbuhan anak. Untuk anak umur 6-11 bulan, pemberian 1 kali dalam'),
	(4, 'VITAMIN A (MERAH)', 'Meningkatkan kesehatan mata dan pertumbuhan anak. Untuk anak umur 1-5 tahun, pemberian 2 kali dalam ');
/*!40000 ALTER TABLE `vitamin` ENABLE KEYS */;

-- Dumping structure for table posyandu_balita.waktu
CREATE TABLE IF NOT EXISTS `waktu` (
  `ID_WAKTU` int(11) NOT NULL AUTO_INCREMENT,
  `TGL` date NOT NULL,
  `JAM` time NOT NULL,
  PRIMARY KEY (`ID_WAKTU`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=utf8mb4;

-- Dumping data for table posyandu_balita.waktu: ~2 rows (approximately)
/*!40000 ALTER TABLE `waktu` DISABLE KEYS */;
INSERT INTO `waktu` (`ID_WAKTU`, `TGL`, `JAM`) VALUES
	(1, '2009-09-09', '00:00:19'),
	(3, '2007-07-07', '00:00:01'),
	(4, '2020-12-12', '20:15:41');
/*!40000 ALTER TABLE `waktu` ENABLE KEYS */;

-- Dumping structure for trigger posyandu_balita.after_insert_laporan
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER after_insert_laporan
    AFTER INSERT ON data_pemeriksaan
    FOR EACH ROW 
BEGIN
    INSERT INTO laporan
    set ID_PERIKSA = NEW.ID_PERIKSA; 
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

-- Dumping structure for trigger posyandu_balita.after_insert_waktu
SET @OLDTMP_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_ZERO_IN_DATE,NO_ZERO_DATE,NO_ENGINE_SUBSTITUTION';
DELIMITER //
CREATE TRIGGER after_insert_waktu 
    AFTER INSERT ON waktu
    FOR EACH ROW 
BEGIN
    UPDATE jadwal
    set ID_WAKTU = NEW.ID_WAKTU
	 WHERE jadwal.ID_JADWAL = '1'; 
END//
DELIMITER ;
SET SQL_MODE=@OLDTMP_SQL_MODE;

/*!40101 SET SQL_MODE=IFNULL(@OLD_SQL_MODE, '') */;
/*!40014 SET FOREIGN_KEY_CHECKS=IF(@OLD_FOREIGN_KEY_CHECKS IS NULL, 1, @OLD_FOREIGN_KEY_CHECKS) */;
/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
