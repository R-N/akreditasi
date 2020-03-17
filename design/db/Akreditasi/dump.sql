/*
SQLyog Ultimate v13.1.1 (64 bit)
MySQL - 10.1.34-MariaDB : Database - akreditasi
*********************************************************************
*/

/*!40101 SET NAMES utf8 */;

/*!40101 SET SQL_MODE=''*/;

/*!40014 SET @OLD_UNIQUE_CHECKS=@@UNIQUE_CHECKS, UNIQUE_CHECKS=0 */;
/*!40014 SET @OLD_FOREIGN_KEY_CHECKS=@@FOREIGN_KEY_CHECKS, FOREIGN_KEY_CHECKS=0 */;
/*!40101 SET @OLD_SQL_MODE=@@SQL_MODE, SQL_MODE='NO_AUTO_VALUE_ON_ZERO' */;
/*!40111 SET @OLD_SQL_NOTES=@@SQL_NOTES, SQL_NOTES=0 */;
CREATE DATABASE /*!32312 IF NOT EXISTS*/`akreditasi` /*!40100 DEFAULT CHARACTER SET latin1 */;

USE `akreditasi`;

/*Table structure for table `cards` */

CREATE TABLE `cards` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(8) NOT NULL,
  `no` int(11) NOT NULL,
  `title` varchar(128) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_lists` (`parent`),
  CONSTRAINT `parent_cards` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON DELETE CASCADE ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `cards` */

/*Table structure for table `dokumen_pendukung` */

CREATE TABLE `dokumen_pendukung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(16) NOT NULL,
  `no` int(11) NOT NULL DEFAULT '1',
  `name` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_dokumen_pendukung` (`parent`),
  CONSTRAINT `parent_dokumen_pendukung` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=53 DEFAULT CHARSET=latin1;

/*Data for the table `dokumen_pendukung` */

insert  into `dokumen_pendukung`(`id`,`parent`,`no`,`name`,`url`) values 
(1,'0',3,'Dokumen Evaluasi Diri','https://drive.google.com/open?id=1DVpzu20ngo4nr2sFkrjDwvs7apJ-i6YO'),
(2,'0',1,'Dokumen Borang 3A - Prodi Sistem Informasi','https://drive.google.com/open?id=1GsL43N2QkG3FLA7eqmyiW3biZTLfi6-c'),
(4,'0',2,'Dokumen Borang 3B - Fakultas Saintek','https://drive.google.com/open?id=1wjBNT0-RpXvefE_PsZhcDcnv9qmzTpmn'),
(6,'0',4,'Excel','https://drive.google.com/open?id=1sS8Rr344iauHHZiusVWKzFFGTQUbVIRh'),
(7,'2.1',1,'Dokumen tentang aturan etika dosen, etika mahasiswa, etika tenaga kependidikan, sistem penghargaan dan sanksi, serta pedoman dan prosedur pelayanan.',''),
(13,'2.3',1,'Dokumen pendukung sistem pengelolaan prodi',''),
(14,'2.4',1,'Dokumen tentang jaminan mutu',''),
(15,'2.5',1,'Dokumen (kuesioner dan hasil) kajian proses pembelajaran melalui umpan balik dari dosen, mahasiswa, alumni, dan pengguna lulusan.',''),
(18,'3.1.1',1,'Daftar lulusan dalam lima tahun terakhir (termasuk IPK)',''),
(20,'3.2',1,'Dokumen pendukung pelayanan kepada mahasiswa.',''),
(21,'3.3.1',1,'Dokumen (kuesioner dan hasil) kinerja lulusan oleh pihak pengguna.',''),
(22,'3.4',1,'Laporan kegiatan himpunan alumni.',''),
(23,'4.1',1,'Pedoman tertulis tentang sistem seleksi, perekrutan, penempatan, pengembangan, retensi dan pemberhentian dosen dan tenaga kependidikan.',''),
(25,'4.2',1,'Pedoman tertulis tentang monitoring dan evaluasi, serta rekam jejak kinerja akademik dosen dan tenaga kependidikan.',''),
(26,'4.2',1,'Bukti tentang kinerja dosen di bidang pendidikan, penelitian, pelayanan/pengabdian kepada masyarakat',''),
(27,'4.3.1',1,'Fotokopi ijazah dan sertifikat pendidik dosen tetap yang bidang keahliannya sesuai dengan PS.',''),
(28,'4.3.2',1,'Fotokopi ijazah dan sertifikat pendidik dosen tetap yang bidang keahliannya di luar bidang PS.',''),
(29,'4.4.1',1,'Fotokopi ijazah dan sertifikat pendidik dosen tidak tetap.',''),
(30,'4.5.3',1,'Bukti kegiatan dosen tetap dalam seminar ilmiah/ lokakarya/ penataran/ workshop/ pagelaran/pameran/peragaan.',''),
(31,'4.5.4',1,'Bukti pencapaian prestasi/reputasi dosen.',''),
(32,'4.5.5',1,'Fotocopi bukti keikutsertaan dosen tetap dalam organisasi keilmuan/profesi.',''),
(33,'4.6.1',1,'Fotokopi ijazah dan sertifikat tenaga kependidikan.',''),
(34,'5.1.2.2',1,'Silabus dan SAP tiap mata kuliah.',''),
(35,'5.1.4',1,'Modul praktikum/praktek untuk setiap kegiatan praktikum/praktek.',''),
(36,'5.2',1,'Dokumen pendukung kegiatan peninjauan kurikulum.',''),
(37,'5.3.1',1,'Dokumen pendukung monitoring perkuliahan.',''),
(38,'5.5.1',1,'Panduan pembimbingan tugas akhir.',''),
(39,'5.5.2',1,'Dokumen pendukung untuk memperoleh data rata-rata lama studi mahasiswa.',''),
(40,'6.1',1,'Notulen rapat/ bukti keterlibatan PS dalam perencanaan anggaran dan pengelolaan dana.',''),
(41,'6.2.2',1,'Kontrak penelitian.',''),
(42,'6.4.1',1,'Daftar pustaka yang relevan dengan PS, yang dipilah berdasarkan kategorinya.',''),
(43,'6.5.1',1,'Daftar software yang berlisensi, petunjuk pemanfaatan SIM.',''),
(44,'7.1.1',1,'Hasil penelitian (rekapitulasi judul dan dokumen laporan penelitian) yang jumlah judulnya ada dalam borang.',''),
(45,'7.1.4',1,'Surat paten HaKI atau keterangan sejenis.',''),
(46,'7.1.2',1,'Daftar nama mahasiswa, dosen dan judul tugas akhir  yang  dilibatkan dalam penelitian dosen.',''),
(47,'7.2.1',1,'Hasil pelayanan/pengabdian kepada masyarakat (rekapitulasi judul dan dokumen laporan PkM) yang jumlah judulnya ada dalam borang.',''),
(48,'7.3.1',1,'Dokumen pendukung kegiatan kerjasama dengan instansi dalam negeri',''),
(49,'7.3.2',1,'Dokumen pendukung kegiatan kerjasama dengan instansi luar negeri',''),
(50,'5.3.2',1,'Lampiran contoh soal ujian',''),
(52,'3.1.3',1,'Bukti prestasi*','');

/*Table structure for table `dosen` */

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) DEFAULT NULL,
  `id_lecturer` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `dosen` */

/*Table structure for table `ids` */

CREATE TABLE `ids` (
  `id` varchar(16) NOT NULL,
  `name` varchar(256) NOT NULL,
  `parent` varchar(16) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `id_parent_id` (`parent`),
  CONSTRAINT `id_parent_id` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ids` */

insert  into `ids`(`id`,`name`,`parent`) values 
('0','Dokumen Akreditasi',NULL),
('1','Standar 1',NULL),
('1.1','','1'),
('1.1.2','','1.1'),
('1.1.3','','1.1'),
('1.1.4','','1.1'),
('1.1.5','','1.1'),
('1.1.5.1','','1.1.5'),
('1.1.5.1.1','','1.1.5.1'),
('1.1.5.1.2','','1.1.5.1'),
('1.1.5.1.2.1','I (2014-2019)','1.1.5.1.2'),
('1.1.5.1.2.2','II (2020-2024)','1.1.5.1.2'),
('1.1.5.1.2.3','III (2025-2029)','1.1.5.1.2'),
('1.1.5.1.2.4','IV (2030-2034)','1.1.5.1.2'),
('1.1.5.1.2.5','V (2035-2045)','1.1.5.1.2'),
('1.2','','1'),
('1.2.1','Upaya Sosialisasi Visi Misi','1.2'),
('1.2.2','Pemahaman Visi Misi','1.2'),
('1.2.2.1','Pemahaman Tenaga Pendidik (Dosen) terhadap Visi Misi','1.2.2'),
('1.2.2.2','Pemahaman Tenaga Kependidikan terhadap Visi Misi','1.2.2'),
('1.2.2.3','Pemahaman Mahasiswa terhadap Visi Misi','1.2.2'),
('1.2.2.4','Pemahaman Stakeholder terhadap Visi Misi','1.2.2'),
('2','',NULL),
('2.1','','2'),
('2.2','','2'),
('2.3','','2'),
('2.4','','2'),
('2.5','','2'),
('2.6','','2'),
('3','',NULL),
('3.1','','3'),
('3.1.1','','3.1'),
('3.1.3','','3.1'),
('3.2','','3'),
('3.3','','3'),
('3.3.1','','3.3'),
('3.3.2','','3.3'),
('3.3.3','','3.3'),
('3.4','','3'),
('4','',NULL),
('4.1','','4'),
('4.2','','4'),
('4.2.1','','4.2'),
('4.2.2','','4.2'),
('4.3','','4'),
('4.3.1','','4.3'),
('4.3.2','','4.3'),
('4.3.3','','4.3'),
('4.3.4','','4.3'),
('4.3.5','','4.3'),
('4.4','','4'),
('4.4.1','','4.4'),
('4.4.2','','4.4'),
('4.5','','4'),
('4.5.1','','4.5'),
('4.5.2','','4.5'),
('4.5.3','','4.5'),
('4.5.4','','4.5'),
('4.5.5','','4.5'),
('4.6','','4'),
('4.6.1','','4.6'),
('4.6.2','','4.6'),
('5','',NULL),
('5.1','','5'),
('5.1.1','','5.1'),
('5.1.1.1','','5.1.1'),
('5.1.1.2','','5.1.1'),
('5.1.1.3','','5.1.1'),
('5.1.2.1','','5.1.1'),
('5.1.2.2','','5.1.1'),
('5.1.3','','5.1'),
('5.1.4','','5.1'),
('5.2','','5'),
('5.3','','5'),
('5.3.1','','5.3'),
('5.3.2','','5.3'),
('5.4','','5'),
('5.4.1','','5.4'),
('5.4.2','','5.4'),
('5.5','','5'),
('5.5.1','','5.5'),
('5.5.2','','5.5'),
('5.5.2 A','','5.5.2'),
('5.5.2 B','','5.5.2'),
('5.6','','5'),
('5.7','','5'),
('6','',NULL),
('6.1','','6'),
('6.2','','6'),
('6.2.1','','6.2'),
('6.2.1.1','','6.2.1'),
('6.2.1.2','','6.2.1'),
('6.2.2','','6.2'),
('6.2.3','','6.2'),
('6.3','','6.3'),
('6.3.1','','6.3'),
('6.3.2','','6.3'),
('6.3.3','','6.3'),
('6.4','','6'),
('6.4.1','','6.4'),
('6.4.1.1','','6.4.1'),
('6.4.1.2','','6.4.1'),
('6.4.2','','6.4'),
('6.4.3','','6.4'),
('6.5','','6'),
('6.5.1','','6.5'),
('6.5.2','','6.5'),
('7','',NULL),
('7.1','','7'),
('7.1.1','','7.1'),
('7.1.2','','7.1'),
('7.1.2 A','','7.1.2'),
('7.1.2 B','','7.1.2'),
('7.1.3','','7.1'),
('7.1.4','','7.1'),
('7.2','','7'),
('7.2.1','','7.2'),
('7.2.2','','7.2'),
('7.3','','7'),
('7.3.1','','7.3'),
('7.3.2','','7.3');

/*Table structure for table `jabatan_akademik` */

CREATE TABLE `jabatan_akademik` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `jabatan_akademik` */

insert  into `jabatan_akademik`(`id`,`jabatan`) values 
(1,'Asisten Ahli'),
(2,'Lektor'),
(3,'Lektor Kepala'),
(4,'Guru Besar');

/*Table structure for table `jabatan_tk` */

CREATE TABLE `jabatan_tk` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `jabatan` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jabatan_tk` */

/*Table structure for table `jalur_seleksi` */

CREATE TABLE `jalur_seleksi` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `jalur` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jalur_seleksi` */

/*Table structure for table `jenis_jurnal` */

CREATE TABLE `jenis_jurnal` (
  `jenis` varchar(32) NOT NULL,
  PRIMARY KEY (`jenis`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jenis_jurnal` */

insert  into `jenis_jurnal`(`jenis`) values 
('Jurnal Internasional'),
('Jurnal Terakreditasi DIKTI');

/*Table structure for table `lists` */

CREATE TABLE `lists` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(16) NOT NULL,
  `no` int(11) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_lists` (`parent`),
  CONSTRAINT `parent_lists` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=64 DEFAULT CHARSET=latin1;

/*Data for the table `lists` */

insert  into `lists`(`id`,`parent`,`no`,`text`) values 
(1,'1.1.3',1,'Menyelenggarakan Program Studi Sistem Informasi yang unggul dengan mengintegrasikan ilmu pengetahuan dan teknologi dengan nilai keislaman.'),
(2,'1.1.3',2,'Mengembangkan riset integratif di bidang Sistem Informasi yang inovatif, berwawasan hijau, dan peka terhadap perkembangan untuk dukungan sistem informasi pada bidang manajemen, teknologi dan sistem cerdas.'),
(3,'1.1.3',3,'Membangun kepercayaan masyarakat melalui pengabdian berbasis riset sistem informasi dan mengembangkan kerjasama dengan lembaga-lembaga lokal, nasional dan internasional.'),
(4,'1.1.4',1,'Menghasilkan lulusan yang unggul dalam bidang Sistem Informasi yang mampu memberikan kontribusi bagi masyarakat.'),
(5,'1.1.4',2,'Menghasilkan lulusan yang profesional dalam bidang sistem informasi dan memiliki daya saing di tingkat regional, nasional, dan internasional.'),
(6,'1.1.4',3,'Meningkatkan kinerja riset yang mengandung integrasi ilmu keislaman dengan kajian sistem informasi'),
(7,'1.1.4',4,'Memberikan kontribusi program studi pada masyarakat melalui pengabdian masyarakat berbasis riset'),
(8,'1.1.4',5,'Mewujudkan tata kelola program studi yang bersih dan sehat'),
(9,'1.1.4',6,'Menghasilkan karya ilmiah di tingkat nasional dan internasional'),
(10,'1.1.4',7,'Menghasilkan lulusan sistem informasi yang memiliki akhlakul karimah, ketajaman analisis, jiwa kepemimpinan, jiwa technopreneur, kreatif dan komunikatif serta berkontribusi dalam pemanfaatan sistem informasi untuk pemberdayaan masyarakat sesuai kearifan lokal.'),
(19,'1.1.5.1.1',1,'Sarjana Sistem Informasi yang menguasai kompetensi dibidang teknologi, manajemen dan sistem cerdas sehingga siap berkontribusi pada masyarakat.'),
(20,'1.1.5.1.1',2,'Sarjana Sistem Informasi yang profesional dalam bidangnya dan dengan bekal keilmuan yang dimiliki mampu bersaing di tingkat regional, nasional, dan internasional.'),
(21,'1.1.5.1.1',3,'Mendorong terwujudnya riset-riset dengan kajian terkini yang mengandung integrasi ilmu keislaman dengan kajian sistem informasi.'),
(22,'1.1.5.1.1',4,'Program Studi Sistem Informasi yang melalui hasil risetnya dapat memberikan kontribusi pada masyarakat melalui pengabdian masyarakat berbasis riset.'),
(23,'1.1.5.1.1',5,'Semangat integritas pada seluruh lini Program Studi Sistem Informasi sehingga mampu mewujudkan tata kelola yang bersih dan sehat.'),
(24,'1.1.5.1.1',6,'Program Studi Sistem Informasi yang mampu menghasilkan naskah publikasi berupa karya ilmiah di tingkat nasional dan internasional.'),
(25,'1.1.5.1.1',7,'Sarjana Sistem Informasi yang ber-akhlakul karimah, ketajaman analisis, jiwa kepemimpinan, jiwa technopreneur, kreatif dan komunikatif berdasar pada nilainilai kearifan lokal.'),
(26,'1.1.5.1.2.1',1,'Penguatan internal Prodi.'),
(27,'1.1.5.1.2.1',2,'Peningkatan kualitas SDM.'),
(28,'1.1.5.1.2.1',3,'Meningkatkan mutu penelitian dan pengabdian kepada masyarakat.'),
(29,'1.1.5.1.2.2',1,'Menjaga mutu atmostfir akademik.'),
(30,'1.1.5.1.2.2',2,'Peningkatan akreditasi program studi.'),
(31,'1.1.5.1.2.2',3,'Peningkatan kuantitas publikasi internasional.'),
(32,'1.1.5.1.2.3',1,'Pengenbangan kualitas standar nasional laboratorium.'),
(33,'1.1.5.1.2.3',2,'Menghasilkan paten.'),
(34,'1.1.5.1.2.3',3,'Meningkatnya kerjasama nasional dan internasional.'),
(35,'1.1.5.1.2.4',1,'Pertukaran pelajar tingkat regional asia.'),
(36,'1.1.5.1.2.4',2,'Kerjasama penelitian dengan institusi pendidikan regional asia.'),
(37,'1.1.5.1.2.4',3,'Menghasilkan paten komersil.'),
(38,'1.1.5.1.2.5',1,'Membuka Program Studi magister.'),
(39,'1.1.5.1.2.5',2,'Kerjasama penelitian dan pengabdian tingkat internasional.'),
(40,'1.1.5.1.2.5',3,'Akreditasi internasional.'),
(41,'1.2.1',1,'Sosialisasi kepada dosen program studi Sistem Informasi melalui kegiatan rapat persiapan perkuliahan awal semester;'),
(42,'1.2.1',2,'Sosialisasi kepada dosen program studi Sistem Informasisecara khusus danDosen FST secara umum, melalui kegiatan Forum Diskusi Dosen FST (Tiap hari rabu);'),
(43,'1.2.1',3,'Sosialisasi kepada mahasiswa baru secara terbuka dengan mahasiswa melalui kegiatan Orientasi Studi dan Cinta Almamater (OSCAR);'),
(44,'1.2.1',4,'Sosialisasi kepada mahasiswa baru secara terbuka dengan mahasiswa melalui kegiatan Orientasi Mahasiswa Jurusan (OSMAJUR);'),
(45,'1.2.1',5,'Sosialisasi kepada mahasiswa yang akan memprogram ke semester dua melalui Kegiatan Pelatihan Pengisian SIAKAD (Sistem Informasi Akademik);'),
(46,'1.2.1',6,'Sosialisasi kepada mahasiswa prodi Sistem Informasi melalui kegiatandialog terbuka tengah semester antar dosen dan mahasiswa;'),
(47,'1.2.1',7,'Sosialisasi kepada mahasiswa prodi Sistem Informasi melalui kegiatan sarahesan bagi mahasiswa Sistem Informasi;'),
(48,'1.2.1',8,'Sosialisasi kepada mahasiswa prodi Sistem Informasi melalui kegiatan tatap muka perkuliahan yang dilakukan oleh dosen pengampu matakuliah;'),
(49,'1.2.1',9,'Sosialisasi kepada wali mahasiswa melalui kegiatan temu wali mahasiswa yang diadakan setiap tahun melalui anggaran Wakil Rektor III;'),
(50,'1.2.1',10,'Penulisan pajangan visi, misi, dan tujuan program studi Sistem Informasi dalam bentuk banner yang dipasang di ruangan program studi Sistem Informasi;'),
(51,'1.2.1',11,'Penulisan pajangan visi, misi, dan tujuan program studi Sistem Informasi dalam bentuk banner yang dipasang di ruang kelas;'),
(52,'1.2.1',12,'Penulisan pajangan visi, misi, dan tujuan program studi Sistem Informasi dalam bentuk banner yang dipasang di ruang laboratorium;'),
(53,'1.2.1',13,'Penulisan pajangan visi, misi, dan tujuan program studi Sistem Informasi dalam bentuk banner yang dipasang di ruang baca program studi;'),
(54,'1.2.1',14,'Penempelan Sticker visi, misi program studi Sistem Informasi di papan pengumuman;'),
(55,'1.2.1',15,'Pembagian Sticker visi, misi program studi Sistem Informasi yang diberikan pada mahasiswa baru pada saat OSMAJUR;'),
(56,'1.2.1',16,'Pembagian mug souvenir kepada dosen dan tenaga kependidikan;'),
(57,'1.2.1',17,'Mencantumkan visi, misi, dan tujuan program studi Sistem Informasi pada website http://sinf.uinsby.ac.id;'),
(58,'1.2.1',18,'Mencantumkan visi, misi, dan tujuan program studi SI dalam browsur Program Studi;'),
(59,'1.2.1',19,'Mencantumkan visi, misi, dan tujuan program studi SI dalam website Fakultas Sains dan Teknologi;'),
(60,'1.2.1',20,'Mencantumkan visi, misi, dan tujuan program studi Sistem Informasi dalam Rencana kerja Program Studi Sistem Informasi;'),
(61,'1.2.1',21,'Penyampaian visi dan misi program studi Sistem Informasi pada pertemuan dengan pimpinan lembaga tempat KP, KL dan KKN mahasiswa program studi Sistem Informasi;'),
(62,'1.2.1',22,'Penyampaian visi dan misi program studi Sistem Informasi pada rapatrapat persiapan dan pelaksanaan kegiatan Forum AISINDO (Asosiasi Sistem Informasi Indonesia) dan APTIKOM (Asosiasi Pendidikan Tinggi Informatika dan Komputer)');

/*Table structure for table `pendidikan` */

CREATE TABLE `pendidikan` (
  `pendidikan` char(3) NOT NULL,
  `tingkat` tinyint(2) NOT NULL,
  PRIMARY KEY (`pendidikan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `pendidikan` */

insert  into `pendidikan`(`pendidikan`,`tingkat`) values 
('D1',2),
('D2',3),
('D3',4),
('D4',5),
('S1',5),
('S2',6),
('S3',7),
('SMA',1),
('SMK',1);

/*Table structure for table `pengolahan_data` */

CREATE TABLE `pengolahan_data` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `pengolahan` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `pengolahan_data` */

insert  into `pengolahan_data`(`id`,`pengolahan`) values 
(1,'Secara Manual'),
(2,'Dengan Komputer Tanpa Jaringan	'),
(3,'Dengan Komputer Jaringan Lokal	'),
(4,'Dengan Komputer Jaringan Luas');

/*Table structure for table `status_mk` */

CREATE TABLE `status_mk` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `status_mk` */

insert  into `status_mk`(`id`,`status`) values 
(1,'Baru'),
(2,'Lama'),
(3,'Hapus');

/*Table structure for table `status_tk` */

CREATE TABLE `status_tk` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `status_tk` */

/*Table structure for table `strings` */

CREATE TABLE `strings` (
  `parent` varchar(16) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`parent`),
  CONSTRAINT `string_parent` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `strings` */

insert  into `strings`(`parent`,`text`) values 
('1.1.2','Menjadi Program Studi Sistem Informasi yang unggul dan kompetitif bertaraf internasional berlandaskan nilai-nilai keislaman');

/*Table structure for table `sumber_dana` */

CREATE TABLE `sumber_dana` (
  `sumber_dana` varchar(16) NOT NULL,
  PRIMARY KEY (`sumber_dana`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sumber_dana` */

insert  into `sumber_dana`(`sumber_dana`) values 
('Diknas'),
('PT Sendiri'),
('Sumber Lain'),
('Yayasan');

/*Table structure for table `sumber_dana_penelitian` */

CREATE TABLE `sumber_dana_penelitian` (
  `sumber` varchar(8) NOT NULL,
  PRIMARY KEY (`sumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sumber_dana_penelitian` */

insert  into `sumber_dana_penelitian`(`sumber`) values 
('DIKTIS'),
('Luar'),
('PT'),
('PTNU'),
('Sendiri');

/*Table structure for table `sumber_dana_pengabdian` */

CREATE TABLE `sumber_dana_pengabdian` (
  `sumber` varchar(16) NOT NULL,
  PRIMARY KEY (`sumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sumber_dana_pengabdian` */

insert  into `sumber_dana_pengabdian`(`sumber`) values 
('Lembaga Lain'),
('Mandiri'),
('PT');

/*Table structure for table `sumber_umpan_balik` */

CREATE TABLE `sumber_umpan_balik` (
  `sumber` varchar(16) NOT NULL,
  PRIMARY KEY (`sumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sumber_umpan_balik` */

insert  into `sumber_umpan_balik`(`sumber`) values 
('Alumni'),
('Dosen'),
('Mahasiswa'),
('Pengguna Lulusan');

/*Table structure for table `tabel_2_5` */

CREATE TABLE `tabel_2_5` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `dari` varchar(16) NOT NULL,
  `isi` varchar(1024) NOT NULL,
  `tindak_lanjut` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sumber_umpan_balik` (`dari`),
  CONSTRAINT `sumber_umpan_balik` FOREIGN KEY (`dari`) REFERENCES `sumber_umpan_balik` (`sumber`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_2_5` */

insert  into `tabel_2_5`(`id`,`dari`,`isi`,`tindak_lanjut`) values 
(1,'Dosen','Kurikulum perlu selalu disesuaikan dengan tuntutan dunia kerja.','Review kurikulum tahun 2018 khususnya pada kompetensi utama mengalami perubahan pada mata kuliah skill.'),
(2,'Dosen','Perangkat pembelajaran yang tidak lengkap.','Peninjauan ulang silabus Prodi Sistem Informasi dan kontrol terhadap kinerja dosen dalam menyiapkan SAP, modul, handout, dan lainnya pada forum rapat dosen'),
(3,'Dosen','Rendahnya keterampilan mahasiswa dalam melakukan penelitian.','Melakukan pembinaan penelitian secara khusus untuk mahasiswa dengan mengadakan kelompok penelitian dibawah bimbingan dosen.'),
(4,'Dosen','Praktikum dan praktik lapangan mahasiswa yang masih lemah.','Mendesain ulang program paktikum mahasiswa.'),
(5,'Dosen','Kurangnya sarana pembelajaran (LCD, kebersihan ruangan, meja dosen tidak ada, white board yang kotor, board maker yang tidak tersedia, penghapus), ruang kuliah dengan bangku kuliah yang tidak teratur, ruangan yang panas.','Selalu melakukan monitoring dan koordinasi dengan pihak Wakil Dekan II untuk melengkapi fasilitas pembelajaran dan pihak kebersihan untuk meningkatkan kebersihan dan kondusifitas sarana & prasarana dalam proses belajar mengajar.'),
(6,'Mahasiswa','Penilaian kinerja dosen dalam pembelajaran.','Menyampaikan kritik mahasiswa kepada dosen melalui rapat dan dialog secara individual disertai dengan surat hasil evaluasi.'),
(7,'Mahasiswa','Pengaduan mahasiswa terhadap kedisiplinan dosen.','Monitoring kecukupan tatap muka perkuliahan  dosen dan hasilnya disampaikan dalam surat hasil evaluasi.'),
(8,'Mahasiswa','Umpan balik dari mahasiswa terhadap dosen yang tidak menyiapkan perangkat perkuliahan.','Memberikan silabi mata kuliah, setiap awal semester kepada masing-masing dosen dan memonitor dosen untuk menyiapkan SAP.'),
(9,'Mahasiswa','Buku penunjang perkuliahan yang kurang','Pengusulan tambahan buku ke Perpustakaan'),
(11,'Alumni','Informasi tuntutan dunia kerja yang terkait dengan Prodi Pendidikan Sistem Informasi.','Proses dilaksanakannya publikasi dunia kerja melalui webprodi.'),
(12,'Alumni','Perlu adanya media komunikasi antara PS dan alumni.','Pembuatan web PS Sistem Informasi (http://mpi.uinsby.ac.id), Pemanfaatan media sosial dan alumni center'),
(13,'Alumni','Proses pembelajaran lebih inovatif baik dari segi materi dan metode.','Review kurikulum dan workshop peningkatan mutu dosen.'),
(14,'Pengguna Lulusan','Perlunya membekali lulusan dengan kompetensi kepribadian, softskill sesuai dengan perkembangan teknologi.','Memunculkan mata kuliah seperti Sistem Informasi,manajemen mutu, manajemen sarana prasarana sebagai mata kuliah wajib.'),
(15,'Pengguna Lulusan','Aktif dalam organisasi keilmuan Prodi Sistem Informasi.','Prodi terdaftar sebagai anggota APMAPI (Asosisasi Prodi Manajemen/Administrasi Pendidikan Indoneisa).'),
(16,'Pengguna Lulusan','Peningkatan kemampuan keagamaan untuk membentuk kepribadian lulusan.','Pelaksanaan program penalaran Islam Indonesia untuk mahasiswa semester 1 dan 2 dan program ma’had.');

/*Table structure for table `tabel_3_1_1` */

CREATE TABLE `tabel_3_1_1` (
  `tahun` int(11) NOT NULL,
  `daya_tampung` int(11) NOT NULL DEFAULT '0',
  `calon_ikut` int(11) NOT NULL DEFAULT '0',
  `calon_lulus` int(11) NOT NULL DEFAULT '0',
  `maba_reg` int(11) NOT NULL DEFAULT '0',
  `maba_trf` int(11) NOT NULL DEFAULT '0',
  `mhs_reg` int(11) NOT NULL DEFAULT '0',
  `mhs_trf` int(11) NOT NULL DEFAULT '0',
  `lulus_reg` int(11) NOT NULL DEFAULT '0',
  `lulus_trf` int(11) NOT NULL DEFAULT '0',
  `ipk_min` decimal(6,3) NOT NULL DEFAULT '0.000',
  `ipk_rat` decimal(6,3) NOT NULL DEFAULT '0.000',
  `ipk_mak` decimal(6,3) NOT NULL DEFAULT '0.000',
  `persen_low` decimal(6,3) NOT NULL DEFAULT '0.000',
  `persen_mid` decimal(6,3) NOT NULL DEFAULT '0.000',
  `persen_high` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_1` */

insert  into `tabel_3_1_1`(`tahun`,`daya_tampung`,`calon_ikut`,`calon_lulus`,`maba_reg`,`maba_trf`,`mhs_reg`,`mhs_trf`,`lulus_reg`,`lulus_trf`,`ipk_min`,`ipk_rat`,`ipk_mak`,`persen_low`,`persen_mid`,`persen_high`) values 
(2014,25,1657,28,25,0,25,0,0,0,0.000,0.000,0.000,0.000,0.000,0.000),
(2015,35,1054,37,37,0,62,0,0,0,0.000,0.000,0.000,0.000,0.000,0.000),
(2016,80,1150,81,78,0,140,0,0,0,0.000,0.000,0.000,0.000,0.000,0.000),
(2017,80,1324,81,69,0,205,0,15,0,3.310,3.500,3.670,0.000,42.860,57.140),
(2018,80,696,81,73,0,262,0,14,0,3.300,3.500,3.650,0.000,44.440,55.560);

/*Table structure for table `tabel_3_1_1_lis` */

CREATE TABLE `tabel_3_1_1_lis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `no_ujian` char(12) NOT NULL,
  `lulus` tinyint(1) NOT NULL DEFAULT '0',
  `jalur` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_lis` (`tahun`),
  KEY `jalur_3_1_1_lis` (`jalur`),
  CONSTRAINT `jalur_3_1_1_lis` FOREIGN KEY (`jalur`) REFERENCES `jalur_seleksi` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tahun_3_1_1_lis` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_1` (`tahun`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_1_lis` */

/*Table structure for table `tabel_3_1_1_ll` */

CREATE TABLE `tabel_3_1_1_ll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `nim` char(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `wisuda` int(11) NOT NULL,
  `ipk` decimal(6,3) NOT NULL,
  `id_alumni` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_ll` (`tahun`),
  CONSTRAINT `tahun_3_1_1_ll` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_1` (`tahun`) ON DELETE NO ACTION ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_1_ll` */

/*Table structure for table `tabel_3_1_1_lm` */

CREATE TABLE `tabel_3_1_1_lm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `nim` char(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_lm` (`tahun`),
  CONSTRAINT `tahun_3_1_1_lm` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_1` (`tahun`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_1_lm` */

/*Table structure for table `tabel_3_1_1_lmb` */

CREATE TABLE `tabel_3_1_1_lmb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `no_ujian` char(12) NOT NULL,
  `transfer` tinyint(1) NOT NULL DEFAULT '0',
  `jalur` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jalur_3_1_1_lis` (`jalur`),
  KEY `tahun_3_1_1_lmb` (`tahun`),
  CONSTRAINT `jalur_3_1_1_lmb` FOREIGN KEY (`jalur`) REFERENCES `jalur_seleksi` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tahun_3_1_1_lmb` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_1` (`tahun`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_1_lmb` */

/*Table structure for table `tabel_3_1_2` */

CREATE TABLE `tabel_3_1_2` (
  `tahun` int(11) NOT NULL,
  `daya_tampung` int(11) NOT NULL DEFAULT '0',
  `calon_ikut` int(11) NOT NULL DEFAULT '0',
  `calon_lulus` int(11) NOT NULL DEFAULT '0',
  `maba_reg` int(11) NOT NULL DEFAULT '0',
  `maba_trf` int(11) NOT NULL DEFAULT '0',
  `mhs_reg` int(11) NOT NULL DEFAULT '0',
  `mhs_trf` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_2` */

insert  into `tabel_3_1_2`(`tahun`,`daya_tampung`,`calon_ikut`,`calon_lulus`,`maba_reg`,`maba_trf`,`mhs_reg`,`mhs_trf`) values 
(2014,0,0,0,0,0,0,0),
(2015,0,0,0,0,0,0,0),
(2016,0,0,0,0,0,0,0),
(2017,0,0,0,0,0,0,0),
(2018,0,0,0,0,0,0,0);

/*Table structure for table `tabel_3_1_2_lis` */

CREATE TABLE `tabel_3_1_2_lis` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `no_ujian` char(12) NOT NULL,
  `lulus` tinyint(1) NOT NULL DEFAULT '0',
  `jalur` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_lis` (`tahun`),
  KEY `jalur_3_1_1_lis` (`jalur`),
  CONSTRAINT `jalur_3_1_2_lis` FOREIGN KEY (`jalur`) REFERENCES `jalur_seleksi` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tahun_3_1_2_lis` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_2` (`tahun`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_2_lis` */

/*Table structure for table `tabel_3_1_2_lm` */

CREATE TABLE `tabel_3_1_2_lm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `nim` char(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_lm` (`tahun`),
  CONSTRAINT `tahun_3_1_2_lm` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_2` (`tahun`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_2_lm` */

/*Table structure for table `tabel_3_1_2_lmb` */

CREATE TABLE `tabel_3_1_2_lmb` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `no_ujian` char(12) NOT NULL,
  `transfer` tinyint(1) NOT NULL DEFAULT '0',
  `jalur` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jalur_3_1_1_lis` (`jalur`),
  KEY `tahun_3_1_1_lmb` (`tahun`),
  CONSTRAINT `jalur_3_1_2_lmb` FOREIGN KEY (`jalur`) REFERENCES `jalur_seleksi` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tahun_3_1_2_lmb` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_2` (`tahun`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_2_lmb` */

/*Table structure for table `tabel_3_1_3` */

CREATE TABLE `tabel_3_1_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `kegiatan` varchar(256) NOT NULL,
  `tingkat` varchar(16) NOT NULL,
  `prestasi` varchar(256) NOT NULL,
  `url_bukti` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tingkat_kegiatan_3_1_3` (`tingkat`),
  CONSTRAINT `tingkat_kegiatan_3_1_3` FOREIGN KEY (`tingkat`) REFERENCES `tingkat_kegiatan` (`tingkat`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_3` */

insert  into `tabel_3_1_3`(`id`,`kegiatan`,`tingkat`,`prestasi`,`url_bukti`) values 
(1,'Leadership Camp Bank Indonesia (11-13 November 2016, Bogor, Indonesia)','Nasional','Peraih beasiswa dan peserta',''),
(2,'15th Anniversary International Thai Culture Camp 2017 (18-23 Januari 2017, FAA Chulalongkorn University, Bangkok, Thailand)','Internasional','Mewakili Indonesia',''),
(3,'EDNA GENESIS Young Moslem Entrepreneur\r\nCompetition 2016','Lokal','Grand Finalis',''),
(5,'Lomba Hackathon PT. Telkom','Lokal','Participant',''),
(6,'Desain Grafis “Lomba Logo Dinas Pangan”','Nasional','',''),
(8,'Bisnis “Yang Muslim Enterpreneur”','Lokal','Peserta',''),
(9,'Debat Bahasa Arab','Lokal','Peserta',''),
(11,'Workshop Javacode Together ITS','Lokal','11 Besar Developer game',''),
(12,'New Year Dance Cover Competition 2016','Lokal','Peserta',''),
(13,'Event Hunter Indonesia Cup','Nasional','Peserta',''),
(14,'Hackathon','Internasional','Peserta',''),
(18,'BMX Street Beginer Class','Regional','Juara 2',''),
(19,'Lomba Merakit Robot Di ROBOTA FAMILY Workshop 3','Regional','Peserta',''),
(21,'Speaker Bekraf Developer Day (Surabaya Day) ','Regional','Pemateri',''),
(24,'Workshop Mage ITS 2017','Regional','Pemateri',''),
(25,'IndonesiaNext 2016','Nasional','Peserta',''),
(26,'ICT 2018 (Creative Cevelopment Competition)','Nasional','Juara 2',''),
(27,'Edna genesis YOUNG MOSLEM ENTREPRENEUR COMPETITION (Bisnis Plan) 2018','Nasional','Juara 1',''),
(28,'Edna genesis YOUNG MOSLEM ENTREPRENEUR COMPETITION (Bisnis Plan) 2018','Nasional','Juara 3',''),
(29,'Gemastik 11 2018','Nasional','Peserta',''),
(30,'3rd Southeast Asia Creative Camp: Internet of Things Online Workshop 2018','Nasional','Peserta','');

/*Table structure for table `tabel_3_1_4` */

CREATE TABLE `tabel_3_1_4` (
  `angkatan` int(11) NOT NULL,
  `jumlah_lulusan` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`angkatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_4` */

insert  into `tabel_3_1_4`(`angkatan`,`jumlah_lulusan`) values 
(2012,0),
(2013,0),
(2014,20),
(2015,9),
(2016,0),
(2017,0),
(2018,0);

/*Table structure for table `tabel_3_1_4_0` */

CREATE TABLE `tabel_3_1_4_0` (
  `angkatan` int(4) NOT NULL,
  `tahun` int(4) NOT NULL,
  `jumlah` int(11) DEFAULT '0',
  PRIMARY KEY (`angkatan`,`tahun`),
  KEY `tahun_3_1_4_0` (`tahun`),
  CONSTRAINT `angkatan_3_1_4_0` FOREIGN KEY (`angkatan`) REFERENCES `tabel_3_1_4` (`angkatan`) ON UPDATE CASCADE,
  CONSTRAINT `tahun_3_1_4_0` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_4` (`angkatan`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_4_0` */

insert  into `tabel_3_1_4_0`(`angkatan`,`tahun`,`jumlah`) values 
(2012,2012,0),
(2012,2013,0),
(2012,2014,0),
(2012,2015,0),
(2012,2016,0),
(2012,2017,0),
(2012,2018,0),
(2013,2013,0),
(2013,2014,0),
(2013,2015,0),
(2013,2016,0),
(2013,2017,0),
(2013,2018,0),
(2014,2014,25),
(2014,2015,25),
(2014,2016,24),
(2014,2017,8),
(2014,2018,4),
(2015,2015,37),
(2015,2016,36),
(2015,2017,35),
(2015,2018,22),
(2016,2016,78),
(2016,2017,77),
(2016,2018,77),
(2017,2017,69),
(2017,2018,68),
(2018,2018,73);

/*Table structure for table `tabel_3_1_4_ll` */

CREATE TABLE `tabel_3_1_4_ll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `angkatan` int(4) NOT NULL,
  `nim` char(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `wisuda` int(11) NOT NULL,
  `ipk` decimal(6,3) NOT NULL,
  `id_alumni` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_ll` (`angkatan`),
  CONSTRAINT `angkatan_3_1_4_ll` FOREIGN KEY (`angkatan`) REFERENCES `tabel_3_1_4` (`angkatan`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_4_ll` */

/*Table structure for table `tabel_3_1_4_lm` */

CREATE TABLE `tabel_3_1_4_lm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `angkatan` int(4) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `nim` char(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_lm` (`tahun`),
  KEY `tahun_3_1_4_lm` (`tahun`,`angkatan`),
  KEY `tahun_3_1_4_lm2` (`angkatan`,`tahun`),
  CONSTRAINT `tahun_3_1_4_lm2` FOREIGN KEY (`angkatan`, `tahun`) REFERENCES `tabel_3_1_4_0` (`angkatan`, `tahun`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_4_lm` */

/*Table structure for table `tabel_3_2` */

CREATE TABLE `tabel_3_2` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL,
  `penjelasan` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_2` */

insert  into `tabel_3_2`(`id`,`jenis`,`penjelasan`) values 
(1,'Bimbingan dan konseling',''),
(2,'Minat dan bakat (ekstra kurikuler)',''),
(3,'Pembinaan soft skills',''),
(4,'Beasiswa',''),
(5,'Kesehatan','');

/*Table structure for table `tabel_3_3_1` */

CREATE TABLE `tabel_3_3_1` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `kemampuan` varchar(64) NOT NULL,
  `sangat_baik` decimal(6,3) NOT NULL DEFAULT '0.000',
  `baik` decimal(6,3) NOT NULL DEFAULT '0.000',
  `cukup` decimal(6,3) NOT NULL DEFAULT '0.000',
  `kurang` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_3_1` */

insert  into `tabel_3_3_1`(`id`,`kemampuan`,`sangat_baik`,`baik`,`cukup`,`kurang`) values 
(1,'Integritas (etika dan moral)',0.000,0.000,0.000,0.000),
(2,'Keahlian berdasarkan bidang ilmu (profesionalisme)',0.000,0.000,0.000,0.000),
(3,'Bahasa Inggris',0.000,0.000,0.000,0.000),
(4,'Penggunaan Teknologi Informasi',0.000,0.000,0.000,0.000),
(5,'Komunikasi',0.000,0.000,0.000,0.000),
(6,'Kerjasama Tim',0.000,0.000,0.000,0.000),
(7,'Pengembangan Diri',0.000,0.000,0.000,0.000);

/*Table structure for table `tabel_4_3_1` */

CREATE TABLE `tabel_4_3_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jabatan_akademik` tinyint(1) NOT NULL,
  `sertifikasi` tinyint(1) NOT NULL DEFAULT '0',
  `s1_gelar` varchar(5) NOT NULL,
  `s1_pt` varchar(128) NOT NULL,
  `s1_bidang` varchar(128) NOT NULL,
  `s2_gelar` varchar(5) DEFAULT NULL,
  `s2_pt` varchar(128) DEFAULT NULL,
  `s2_bidang` varchar(128) DEFAULT NULL,
  `s3_gelar` varchar(5) DEFAULT NULL,
  `s3_pt` varchar(128) DEFAULT NULL,
  `s3_bidang` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_1` */

/*Table structure for table `tabel_4_3_2` */

CREATE TABLE `tabel_4_3_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jabatan_akademik` tinyint(1) NOT NULL,
  `sertifikasi` tinyint(1) NOT NULL DEFAULT '0',
  `s1_gelar` varchar(5) NOT NULL,
  `s1_pt` varchar(128) NOT NULL,
  `s1_bidang` varchar(128) NOT NULL,
  `s2_gelar` varchar(5) DEFAULT NULL,
  `s2_pt` varchar(128) DEFAULT NULL,
  `s2_bidang` varchar(128) DEFAULT NULL,
  `s3_gelar` varchar(5) DEFAULT NULL,
  `s3_pt` varchar(128) DEFAULT NULL,
  `s3_bidang` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_2` */

/*Table structure for table `tabel_4_3_3` */

CREATE TABLE `tabel_4_3_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `id_lecturer` int(11) NOT NULL,
  `sks_ps_sendiri` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_ps_lain` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_pt_lain` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_penelitian` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_pengabdian` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_man_sendiri` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_man_lain` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_3` */

/*Table structure for table `tabel_4_3_4` */

CREATE TABLE `tabel_4_3_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `kode_mk` char(8) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `pertemuan_direncanakan` int(11) NOT NULL,
  `pertemuan_dilaksanakan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_4` */

/*Table structure for table `tabel_4_3_5` */

CREATE TABLE `tabel_4_3_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `kode_mk` char(8) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `pertemuan_direncanakan` int(11) NOT NULL,
  `pertemuan_dilaksanakan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_5` */

/*Table structure for table `tabel_4_4_1` */

CREATE TABLE `tabel_4_4_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jabatan_akademik` tinyint(1) NOT NULL,
  `sertifikasi` tinyint(1) NOT NULL DEFAULT '0',
  `s1_gelar` varchar(5) NOT NULL,
  `s1_pt` varchar(128) NOT NULL,
  `s1_bidang` varchar(128) NOT NULL,
  `s2_gelar` varchar(5) DEFAULT NULL,
  `s2_pt` varchar(128) DEFAULT NULL,
  `s2_bidang` varchar(128) DEFAULT NULL,
  `s3_gelar` varchar(5) DEFAULT NULL,
  `s3_pt` varchar(128) DEFAULT NULL,
  `s3_bidang` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_4_1` */

/*Table structure for table `tabel_4_4_2` */

CREATE TABLE `tabel_4_4_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `kode_mk` char(8) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL,
  `pertemuan_direncanakan` int(11) NOT NULL,
  `pertemuan_dilaksanakan` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_4_2` */

/*Table structure for table `tabel_4_5_1` */

CREATE TABLE `tabel_4_5_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pakar` varchar(50) NOT NULL,
  `instansi_jabatan` varchar(128) NOT NULL,
  `kegiatan` varchar(128) NOT NULL,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_1` */

/*Table structure for table `tabel_4_5_2` */

CREATE TABLE `tabel_4_5_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `pendidikan` char(3) NOT NULL,
  `bidang` varchar(32) NOT NULL,
  `pt` varchar(32) NOT NULL,
  `negara` varchar(32) NOT NULL,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pend_4_5_2` (`pendidikan`),
  CONSTRAINT `pend_4_5_2` FOREIGN KEY (`pendidikan`) REFERENCES `pendidikan` (`pendidikan`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_2` */

/*Table structure for table `tabel_4_5_3` */

CREATE TABLE `tabel_4_5_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `kegiatan` varchar(128) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  `penyaji` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_3` */

/*Table structure for table `tabel_4_5_4` */

CREATE TABLE `tabel_4_5_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `prestasi` varchar(128) NOT NULL,
  `tahun` int(4) NOT NULL,
  `tingkat` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tingkat prestasi` (`tingkat`),
  CONSTRAINT `tingkat_kegiatan_4_5_4` FOREIGN KEY (`tingkat`) REFERENCES `tingkat_kegiatan` (`tingkat`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_4` */

/*Table structure for table `tabel_4_5_5` */

CREATE TABLE `tabel_4_5_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `tahun_awal` int(4) NOT NULL,
  `tahun_akhir` int(4) NOT NULL,
  `tingkat` varchar(16) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tingkat_organisasi_dosen_tetap` (`tingkat`),
  CONSTRAINT `tingkat_kegiatan_4_5_5` FOREIGN KEY (`tingkat`) REFERENCES `tingkat_kegiatan` (`tingkat`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_5` */

/*Table structure for table `tabel_4_6_1` */

CREATE TABLE `tabel_4_6_1` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `jenis_tk` varchar(50) NOT NULL,
  `unit` varchar(64) NOT NULL,
  `S3` int(11) NOT NULL DEFAULT '0',
  `S2` int(11) NOT NULL DEFAULT '0',
  `S1` int(11) NOT NULL DEFAULT '0',
  `D4` int(11) NOT NULL DEFAULT '0',
  `D3` int(11) NOT NULL DEFAULT '0',
  `D2` int(11) NOT NULL DEFAULT '0',
  `D1` int(11) NOT NULL DEFAULT '0',
  `SMA/SMK` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_6_1` */

insert  into `tabel_4_6_1`(`id`,`jenis_tk`,`unit`,`S3`,`S2`,`S1`,`D4`,`D3`,`D2`,`D1`,`SMA/SMK`) values 
(1,'Pustakawan','Perpustakaan',0,0,0,0,0,0,0,0),
(2,'Laboran/ Teknisi/ Analis/ Operator/ Programer','Fakultas Sains dan Teknologi/ UIN Sunan Ampel Surabaya',0,0,0,0,0,0,0,0),
(3,'Administrasi','Fakultas Sains dan Teknologi',0,0,0,0,0,0,0,0),
(4,'Lainnya','0',0,0,0,0,0,0,0,0);

/*Table structure for table `tabel_4_6_1_ltk` */

CREATE TABLE `tabel_4_6_1_ltk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` tinyint(1) NOT NULL,
  `pendidikan` char(3) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` tinyint(2) NOT NULL,
  `status` tinyint(1) NOT NULL,
  `unit` tinyint(2) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jabatan_4_6_1_ltk` (`jabatan`),
  KEY `status_4_6_1_ltk` (`status`),
  KEY `unit_4_6_1_ltk` (`unit`),
  KEY `jenis_4_6_1_ltk` (`jenis`),
  KEY `pend_4_6_1_ltk` (`pendidikan`),
  CONSTRAINT `jabatan_4_6_1_ltk` FOREIGN KEY (`jabatan`) REFERENCES `jabatan_tk` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `jenis_4_6_1_ltk` FOREIGN KEY (`jenis`) REFERENCES `tabel_4_6_1` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pend_4_6_1_ltk` FOREIGN KEY (`pendidikan`) REFERENCES `pendidikan` (`pendidikan`) ON UPDATE CASCADE,
  CONSTRAINT `status_4_6_1_ltk` FOREIGN KEY (`status`) REFERENCES `status_tk` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `unit_4_6_1_ltk` FOREIGN KEY (`unit`) REFERENCES `unit_tk` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_6_1_ltk` */

/*Table structure for table `tabel_5_1_2_1` */

CREATE TABLE `tabel_5_1_2_1` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `jenis_mk` varchar(32) NOT NULL,
  `sks` int(11) NOT NULL DEFAULT '0',
  `keterangan` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_2_1` */

insert  into `tabel_5_1_2_1`(`id`,`jenis_mk`,`sks`,`keterangan`) values 
(1,'Mata Kuliah Wajib',0,''),
(2,'Mata Kuliah Pilihan',0,'');

/*Table structure for table `tabel_5_1_2_1_sjmk` */

CREATE TABLE `tabel_5_1_2_1_sjmk` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `jenis` tinyint(1) NOT NULL,
  `sub_jenis` varchar(50) NOT NULL,
  `sks` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `jenis_5_1_2_1_sjmk` (`jenis`),
  CONSTRAINT `jenis_5_1_2_1_sjmk` FOREIGN KEY (`jenis`) REFERENCES `tabel_5_1_2_1` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_2_1_sjmk` */

/*Table structure for table `tabel_5_1_2_2` */

CREATE TABLE `tabel_5_1_2_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smt` tinyint(4) NOT NULL,
  `kode_mk` char(8) NOT NULL,
  `nama_mk` varchar(32) NOT NULL,
  `sks` tinyint(4) NOT NULL DEFAULT '0',
  `mk_inti` tinyint(4) NOT NULL DEFAULT '1',
  `tugas` tinyint(4) NOT NULL DEFAULT '0',
  `unit` tinyint(1) NOT NULL,
  `sub_jenis` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjenis_mk` (`sub_jenis`),
  KEY `unit_mk_kurikulum` (`unit`),
  CONSTRAINT `subjenis_mk` FOREIGN KEY (`sub_jenis`) REFERENCES `tabel_5_1_2_1_sjmk` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `unit_mk_kurikulum` FOREIGN KEY (`unit`) REFERENCES `unit_mk` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_2_2` */

/*Table structure for table `tabel_5_1_3` */

CREATE TABLE `tabel_5_1_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smt` tinyint(1) NOT NULL,
  `kode_mk` char(8) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` tinyint(1) NOT NULL DEFAULT '0',
  `tugas` tinyint(1) NOT NULL DEFAULT '0',
  `unit` tinyint(1) NOT NULL DEFAULT '1',
  `sub_jenis` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_jenis_mk_pil` (`sub_jenis`),
  KEY `unit_mk_pil` (`unit`),
  CONSTRAINT `sub_jenis_mk_pil` FOREIGN KEY (`sub_jenis`) REFERENCES `tabel_5_1_2_1_sjmk` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `unit_mk_pil` FOREIGN KEY (`unit`) REFERENCES `unit_mk` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_3` */

/*Table structure for table `tabel_5_1_4` */

CREATE TABLE `tabel_5_1_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `modul` varchar(50) NOT NULL,
  `jam` tinyint(4) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_4` */

/*Table structure for table `tabel_5_2` */

CREATE TABLE `tabel_5_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `no_mk` char(8) NOT NULL,
  `status_mk` tinyint(1) NOT NULL,
  `perubahan_silabus` tinyint(4) NOT NULL DEFAULT '0',
  `perubahan_buku` tinyint(1) NOT NULL DEFAULT '0',
  `alasan_peninjauan` varchar(50) NOT NULL,
  `atas_usulan` varchar(50) NOT NULL,
  `berlaku` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_2` */

/*Table structure for table `tabel_5_4_1` */

CREATE TABLE `tabel_5_4_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pembimbing` varchar(50) NOT NULL,
  `jumlah_mhs` int(11) NOT NULL DEFAULT '0',
  `rata_pertemuan` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_4_1` */

/*Table structure for table `tabel_5_4_1_lm` */

CREATE TABLE `tabel_5_4_1_lm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pembimbing` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `nim` char(9) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_lm` (`pembimbing`),
  CONSTRAINT `pembimbing_5_4_1_lm` FOREIGN KEY (`pembimbing`) REFERENCES `tabel_5_4_1` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_4_1_lm` */

/*Table structure for table `tabel_5_4_2` */

CREATE TABLE `tabel_5_4_2` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `hal` varchar(64) NOT NULL,
  `penjelasan` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_4_2` */

insert  into `tabel_5_4_2`(`id`,`hal`,`penjelasan`) values 
(1,'Tujuan Pembimbingan',''),
(2,'Pelaksanaan pembimbingan',''),
(3,'Masalah yang dibicarakan dalam pembimbingan',''),
(4,'Kesulitan dalam pembimbingan dan upaya untuk mengatasinya',''),
(5,'Manfaat yang diperoleh mahasiswa dari pembimbingan','');

/*Table structure for table `tabel_5_5_1` */

CREATE TABLE `tabel_5_5_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `jumlah_mhs` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_5_1` */

/*Table structure for table `tabel_5_5_1_lta` */

CREATE TABLE `tabel_5_5_1_lta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `pembimbing` int(11) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` char(9) NOT NULL,
  `laki` tinyint(1) DEFAULT NULL,
  `tahun` int(4) DEFAULT NULL,
  `judul` varchar(128) DEFAULT NULL,
  `penelitian` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_lm` (`pembimbing`),
  KEY `penelitian` (`penelitian`),
  CONSTRAINT `pembimbing_5_5_1_lta` FOREIGN KEY (`pembimbing`) REFERENCES `tabel_5_5_1` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `tabel_5_5_1_lta_ibfk_1` FOREIGN KEY (`penelitian`) REFERENCES `tabel_7_1_2_lp` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_5_1_lta` */

/*Table structure for table `tabel_5_6` */

CREATE TABLE `tabel_5_6` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `butir` varchar(32) NOT NULL,
  `tindakan` varchar(1024) NOT NULL,
  `hasil` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_6` */

insert  into `tabel_5_6`(`id`,`butir`,`tindakan`,`hasil`) values 
(1,'Cara-cara evaluasi','',''),
(2,'Materi','',''),
(3,'Metode Pembelajaran','',''),
(4,'Penggunaan Teknologi Pembelajara','','');

/*Table structure for table `tabel_6_2_1_1` */

CREATE TABLE `tabel_6_2_1_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumber_dana` varchar(16) NOT NULL,
  `jenis_dana` varchar(32) NOT NULL,
  `jumlah_ts_2` decimal(6,3) NOT NULL DEFAULT '0.000',
  `jumlah_ts_1` decimal(6,3) NOT NULL DEFAULT '0.000',
  `jumlah_ts` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`),
  KEY `sumber_dana_diperoleh` (`sumber_dana`),
  CONSTRAINT `sumber_dana_diperoleh` FOREIGN KEY (`sumber_dana`) REFERENCES `sumber_dana` (`sumber_dana`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_1_1` */

insert  into `tabel_6_2_1_1`(`id`,`sumber_dana`,`jenis_dana`,`jumlah_ts_2`,`jumlah_ts_1`,`jumlah_ts`) values 
(1,'PT Sendiri','Rupiah Murni',0.000,0.000,0.000),
(2,'PT Sendiri','Penerimaan Negara Bukan Pajak (P',0.000,0.000,0.000),
(3,'Sumber Lain','Bantuan Penelitian',0.000,0.000,0.000),
(6,'Sumber Lain','Bantuan Pengabdian Masyarakat',0.000,0.000,0.000),
(7,'Sumber Lain','IDB (Lab Integrasi)',0.000,0.000,0.000),
(8,'Sumber Lain','Hibah Pendampingan Jurnal (DIKTI',0.000,0.000,0.000);

/*Table structure for table `tabel_6_2_1_2` */

CREATE TABLE `tabel_6_2_1_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_penggunaan` varchar(32) NOT NULL,
  `penggunaan_ts_2` decimal(6,3) NOT NULL DEFAULT '0.000',
  `penggunaan_ts_1` decimal(6,3) NOT NULL DEFAULT '0.000',
  `penggunaan_ts` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_1_2` */

insert  into `tabel_6_2_1_2`(`id`,`jenis_penggunaan`,`penggunaan_ts_2`,`penggunaan_ts_1`,`penggunaan_ts`) values 
(1,'Pendidikan',0.000,0.000,0.000),
(2,'Penelitian',0.000,0.000,0.000),
(3,'Pengabdian kepada Masyarakat',0.000,0.000,0.000),
(4,'Investasi Prasarana',0.000,0.000,0.000),
(5,'Investasi Sarana',0.000,0.000,0.000),
(6,'Investasi SDM',0.000,0.000,0.000),
(7,'Lain-lain',0.000,0.000,0.000);

/*Table structure for table `tabel_6_2_2` */

CREATE TABLE `tabel_6_2_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NOT NULL,
  `judul_penelitian` varchar(256) NOT NULL,
  `sumber_dana` varchar(8) NOT NULL,
  `jumlah_dana` decimal(6,3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sumber_dana_6_2_2` (`sumber_dana`),
  CONSTRAINT `sumber_dana_6_2_2` FOREIGN KEY (`sumber_dana`) REFERENCES `sumber_dana_penelitian` (`sumber`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_2` */

/*Table structure for table `tabel_6_2_3` */

CREATE TABLE `tabel_6_2_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NOT NULL,
  `judul_pengabdian` varchar(256) NOT NULL,
  `sumber_dana` varchar(16) NOT NULL,
  `jumlah_dana` decimal(6,3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sumber_dana_6_2_3` (`sumber_dana`),
  CONSTRAINT `sumber_dana_6_2_3` FOREIGN KEY (`sumber_dana`) REFERENCES `sumber_dana_pengabdian` (`sumber`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_3` */

/*Table structure for table `tabel_6_3_1` */

CREATE TABLE `tabel_6_3_1` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `ruang` varchar(64) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `luas` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_3_1` */

insert  into `tabel_6_3_1`(`id`,`ruang`,`jumlah`,`luas`) values 
(1,'Satu ruang untuk 1 dosen (bukan pejabat struktural)',0,0.000),
(2,'Satu ruang untuk 2 dosen',0,0.000),
(3,'Satu ruang untuk 3-4 dosen',0,0.000),
(4,'Satu ruang untuk lebih dari 4 dosen',0,0.000);

/*Table structure for table `tabel_6_3_2` */

CREATE TABLE `tabel_6_3_2` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `luas` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sewa` tinyint(1) NOT NULL DEFAULT '0',
  `terawat` tinyint(1) NOT NULL DEFAULT '1',
  `utilisasi` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_3_2` */

/*Table structure for table `tabel_6_3_2_lp` */

CREATE TABLE `tabel_6_3_2_lp` (
  `no` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` tinyint(2) NOT NULL,
  `gedung` varchar(128) NOT NULL,
  `kode` varchar(32) NOT NULL,
  `nama` varchar(100) NOT NULL,
  `kapasitas` int(11) NOT NULL DEFAULT '0',
  `luas` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sewa` tinyint(1) NOT NULL DEFAULT '0',
  `terawat` tinyint(1) NOT NULL DEFAULT '1',
  `utilisasi` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`no`),
  KEY `jenis_6_3_2_lp` (`jenis`),
  CONSTRAINT `jenis_6_3_2_lp` FOREIGN KEY (`jenis`) REFERENCES `tabel_6_3_2` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_3_2_lp` */

/*Table structure for table `tabel_6_3_3` */

CREATE TABLE `tabel_6_3_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `luas` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sewa` tinyint(4) NOT NULL DEFAULT '0',
  `terawat` tinyint(4) NOT NULL DEFAULT '1',
  `unit` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_3_3` */

/*Table structure for table `tabel_6_4_1_1` */

CREATE TABLE `tabel_6_4_1_1` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL,
  `jumlah_judul` int(11) NOT NULL DEFAULT '0',
  `jumlah_copy` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_1_1` */

insert  into `tabel_6_4_1_1`(`id`,`jenis`,`jumlah_judul`,`jumlah_copy`) values 
(1,'Buku Teks',0,0),
(2,'Jurnal Nasional yang terakreditasi',0,0),
(3,'Jurnal Internasional',0,0),
(4,'Prosiding',0,0),
(5,'Skripsi',0,0),
(6,'Tesis',0,0),
(7,'Disertasi',0,0);

/*Table structure for table `tabel_6_4_1_1_lp` */

CREATE TABLE `tabel_6_4_1_1_lp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` tinyint(1) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `jenis_6_4_1_1_lp` (`jenis`),
  CONSTRAINT `jenis_6_4_1_1_lp` FOREIGN KEY (`jenis`) REFERENCES `tabel_6_4_1_1` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_1_1_lp` */

/*Table structure for table `tabel_6_4_1_2` */

CREATE TABLE `tabel_6_4_1_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(32) NOT NULL,
  `jurnal` varchar(100) NOT NULL,
  `url_jurnal` varchar(128) NOT NULL,
  `nomor_tahun` varchar(1024) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jenis_jurnal_6_4_1_2` (`jenis`),
  CONSTRAINT `jenis_jurnal_6_4_1_2` FOREIGN KEY (`jenis`) REFERENCES `jenis_jurnal` (`jenis`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_1_2` */

/*Table structure for table `tabel_6_4_1_2_lj` */

CREATE TABLE `tabel_6_4_1_2_lj` (
  `id` int(11) NOT NULL,
  `jurnal` int(11) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `nomor_tahun` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jurnal_6_4_1_2_lj` (`jurnal`),
  CONSTRAINT `jurnal_6_4_1_2_lj` FOREIGN KEY (`jurnal`) REFERENCES `tabel_6_4_1_2` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_1_2_lj` */

/*Table structure for table `tabel_6_4_2` */

CREATE TABLE `tabel_6_4_2` (
  `id` int(11) NOT NULL,
  `sumber` varchar(100) NOT NULL,
  `url_sumber` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_2` */

/*Table structure for table `tabel_6_4_3` */

CREATE TABLE `tabel_6_4_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lab` varchar(50) NOT NULL,
  `jenis_peralatan` varchar(50) NOT NULL,
  `jumlah_peralatan` int(11) NOT NULL,
  `sewa` tinyint(1) NOT NULL DEFAULT '0',
  `terawat` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_3` */

/*Table structure for table `tabel_6_5_2` */

CREATE TABLE `tabel_6_5_2` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `jenis_data` varchar(32) NOT NULL,
  `pengolahan_data` tinyint(1) NOT NULL,
  `url` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `pengolahan_data` (`pengolahan_data`),
  CONSTRAINT `pengolahan_data` FOREIGN KEY (`pengolahan_data`) REFERENCES `pengolahan_data` (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_5_2` */

insert  into `tabel_6_5_2`(`id`,`jenis_data`,`pengolahan_data`,`url`) values 
(1,'Mahasiswa',4,NULL),
(2,'Kartu Rencana Studi (KRS)',4,NULL),
(3,'Jadwal Mata Kuliah',4,NULL),
(4,'Nilai Mata Kuliah',4,NULL),
(5,'Transkrip Akademik',4,NULL),
(6,'Lulusan',4,NULL),
(7,'Dosen',4,NULL),
(8,'Pegawai',4,NULL),
(9,'Keuangan',4,NULL),
(10,'Inventaris',4,NULL);

/*Table structure for table `tabel_7_1_1` */

CREATE TABLE `tabel_7_1_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumber_pembiayaan` varchar(50) NOT NULL,
  `ts_2` int(11) NOT NULL DEFAULT '0',
  `ts_1` int(11) NOT NULL DEFAULT '0',
  `ts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_1` */

insert  into `tabel_7_1_1`(`id`,`sumber_pembiayaan`,`ts_2`,`ts_1`,`ts`) values 
(1,'Pembiayaan sendiri oleh peneliti',0,0,0),
(2,'PT yang bersangkutan',0,0,0),
(3,'Depdiknas',0,0,0),
(4,'Institusi dalam negeri di luar Depdiknas',0,0,0),
(5,'Institusi luar negeri',0,0,0);

/*Table structure for table `tabel_7_1_1_lpdt` */

CREATE TABLE `tabel_7_1_1_lpdt` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumber_pembiayaan` int(11) NOT NULL,
  `ts` int(4) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sumber_7_1_1_lpdt` (`sumber_pembiayaan`),
  CONSTRAINT `sumber_7_1_1_lpdt` FOREIGN KEY (`sumber_pembiayaan`) REFERENCES `tabel_7_1_1` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_1_lpdt` */

/*Table structure for table `tabel_7_1_2_lp` */

CREATE TABLE `tabel_7_1_2_lp` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nip` char(18) NOT NULL,
  `nama_dosen` varchar(50) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tahun` int(4) NOT NULL,
  `jumlah_mhs` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_2_lp` */

/*Table structure for table `tabel_7_1_2_lta` */

CREATE TABLE `tabel_7_1_2_lta` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `penelitian` int(11) DEFAULT NULL,
  `nama` varchar(50) NOT NULL,
  `nim` char(9) NOT NULL,
  `tahun` int(4) NOT NULL,
  `judul` varchar(128) NOT NULL,
  `pembimbing` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_lm` (`pembimbing`),
  KEY `penelitian` (`penelitian`),
  CONSTRAINT `penelitian` FOREIGN KEY (`penelitian`) REFERENCES `tabel_7_1_2_lp` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_2_lta` */

/*Table structure for table `tabel_7_1_3` */

CREATE TABLE `tabel_7_1_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `judul` varchar(256) NOT NULL,
  `nama_dosen` varchar(256) NOT NULL,
  `jurnal` varchar(128) NOT NULL,
  `url` varchar(128) NOT NULL,
  `tahun` int(4) NOT NULL,
  `lokal` tinyint(1) NOT NULL DEFAULT '0',
  `nasional` tinyint(1) NOT NULL DEFAULT '0',
  `internasional` tinyint(1) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_3` */

/*Table structure for table `tabel_7_1_4` */

CREATE TABLE `tabel_7_1_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karya` varchar(256) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_4` */

/*Table structure for table `tabel_7_2_1` */

CREATE TABLE `tabel_7_2_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumber_dana` varchar(50) NOT NULL,
  `ts_2` int(11) NOT NULL DEFAULT '0',
  `ts_1` int(11) NOT NULL DEFAULT '0',
  `ts` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_2_1` */

insert  into `tabel_7_2_1`(`id`,`sumber_dana`,`ts_2`,`ts_1`,`ts`) values 
(1,'Pembiayaan sendiri oleh dosen',0,0,0),
(2,'PT yang bersangkutan',0,0,0),
(3,'Depdiknas',0,0,0),
(4,'Institusi dalam negeri di luar Depdiknas',0,0,0),
(5,'Institusi luar negeri',0,0,0);

/*Table structure for table `tabel_7_2_1_lkpkm` */

CREATE TABLE `tabel_7_2_1_lkpkm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumber_dana` int(11) NOT NULL,
  `ts` int(4) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `tahun` int(4) NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `peran` varchar(100) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sumber_7_1_1_lpdt` (`sumber_dana`),
  CONSTRAINT `sumber_7_2_1_lkpkm` FOREIGN KEY (`sumber_dana`) REFERENCES `tabel_7_2_1` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_2_1_lkpkm` */

/*Table structure for table `tabel_7_3_1` */

CREATE TABLE `tabel_7_3_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_instansi` varchar(128) NOT NULL,
  `jenis_kegiatan` varchar(256) NOT NULL,
  `mulai` int(11) NOT NULL,
  `berakhir` int(11) NOT NULL,
  `manfaat` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_3_1` */

/*Table structure for table `tabel_7_3_2` */

CREATE TABLE `tabel_7_3_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_instansi` varchar(128) NOT NULL,
  `jenis_kegiatan` varchar(256) NOT NULL,
  `mulai` int(11) NOT NULL,
  `berakhir` int(11) NOT NULL,
  `manfaat` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_3_2` */

/*Table structure for table `tingkat_kegiatan` */

CREATE TABLE `tingkat_kegiatan` (
  `tingkat` varchar(16) NOT NULL,
  PRIMARY KEY (`tingkat`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tingkat_kegiatan` */

insert  into `tingkat_kegiatan`(`tingkat`) values 
('Internasional'),
('Lokal'),
('Nasional'),
('Regional'),
('Wilayah');

/*Table structure for table `unit_mk` */

CREATE TABLE `unit_mk` (
  `id` tinyint(1) NOT NULL AUTO_INCREMENT,
  `unit` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `unit_mk` */

insert  into `unit_mk`(`id`,`unit`) values 
(1,'Program Studi'),
(2,'Jurusan'),
(3,'Fakultas'),
(4,'Universitas');

/*Table structure for table `unit_tk` */

CREATE TABLE `unit_tk` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `unit` varchar(50) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `unit_tk` */

/*Table structure for table `values` */

CREATE TABLE `values` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(16) NOT NULL,
  `no` int(11) NOT NULL DEFAULT '1',
  `name` varchar(32) NOT NULL,
  `value` decimal(6,3) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `value_parent_id` (`parent`),
  CONSTRAINT `value_parent_id` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=22 DEFAULT CHARSET=latin1;

/*Data for the table `values` */

insert  into `values`(`id`,`parent`,`no`,`name`,`value`) values 
(2,'1.2.2.1',1,'Sangat Paham',6.000),
(3,'1.2.2.1',2,'Paham',4.000),
(4,'1.2.2.1',3,'Cukup Paham',13.000),
(5,'1.2.2.1',4,'Kurang Paham',0.000),
(6,'1.2.2.1',5,'Tidak Paham',0.000),
(7,'1.2.2.2',1,'Sangat Paham',11.000),
(8,'1.2.2.2',2,'Paham',78.000),
(9,'1.2.2.2',3,'Cukup Paham',11.000),
(10,'1.2.2.2',4,'Kurang Paham',0.000),
(11,'1.2.2.2',5,'Tidak Paham',0.000),
(12,'1.2.2.3',1,'Sangat Paham',7.000),
(13,'1.2.2.3',2,'Paham',86.000),
(14,'1.2.2.3',3,'Cukup Paham',6.000),
(15,'1.2.2.3',4,'Kurang Paham',1.000),
(16,'1.2.2.3',5,'Tidak Paham',0.000),
(17,'1.2.2.4',1,'Sangat Paham',20.000),
(18,'1.2.2.4',2,'Paham',70.000),
(19,'1.2.2.4',3,'Cukup Paham',10.000),
(20,'1.2.2.4',4,'Kurang Paham',0.000),
(21,'1.2.2.4',5,'Tidak Paham',0.000);

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
