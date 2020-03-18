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
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) DEFAULT NULL,
  `id_lecturer` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `dosen` */

insert  into `dosen`(`id`,`nama`,`nidn`,`id_lecturer`) values 
(1,'Achmad Teguh Wibowo','2026108801',0),
(2,'Ahmad Yusuf\r\n','2020019001',0),
(3,'Anang Kunaefi\r\n','2013117902',0),
(4,'Asep Saepul  Hamdani\r\n','2031076501',0),
(5,'Bayu Adhi Nugroho\r\n','0718057902',0),
(6,'Dwi Rolliawati\r\n','2027097901',0),
(7,'Faris Muslihul Amin\r\n','9907146569',0),
(8,'Ilham\r\n','0708118003',0),
(9,'Imas Maesaroh\r\n','2014056601',0),
(10,'Indri Sudanawati Rozas\r\n','2021078201',0),
(11,'Khalid\r\n','2009067902',0),
(12,'Kusaeri\r\n','2006077202',0),
(13,'Moch. Yasin\r\n','2030088801',0),
(14,'Muhammad Andik Izzuddin\r\n','2007038402',0),
(15,'Mujib Ridwan\r\n','2027048602',0),
(16,'Yusuf Amrozi\r\n','2003077601',0),
(17,'Titik Triwulan Tutik\r\n','2029036801',0),
(18,'Asep Abbas Abdullah\r\n','2229076301',0);

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
('5.1.1.1.1','','5.1.1.1'),
('5.1.1.1.2','','5.1.1.1'),
('5.1.1.2','','5.1.1'),
('5.1.1.2.1','','5.1.1.2'),
('5.1.1.2.2','','5.1.1.2'),
('5.1.1.3','','5.1.1'),
('5.1.1.4','','5.1.1'),
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
  `jabatan` varchar(16) NOT NULL,
  PRIMARY KEY (`jabatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jabatan_akademik` */

insert  into `jabatan_akademik`(`jabatan`) values 
('Asisten Ahli\r\n'),
('Guru Besar\r\n'),
('Lektor\r\n'),
('Lektor Kepala\r\n');

/*Table structure for table `jabatan_tk` */

CREATE TABLE `jabatan_tk` (
  `jabatan` varchar(50) NOT NULL,
  PRIMARY KEY (`jabatan`)
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
) ENGINE=InnoDB AUTO_INCREMENT=63 DEFAULT CHARSET=latin1;

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
('S3\r',7),
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
  `status` varchar(5) NOT NULL,
  PRIMARY KEY (`status`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `status_mk` */

insert  into `status_mk`(`status`) values 
('Baru'),
('Hapus'),
('Lama');

/*Table structure for table `status_tk` */

CREATE TABLE `status_tk` (
  `status` varchar(50) NOT NULL,
  PRIMARY KEY (`status`)
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

/*Table structure for table `tabel_3_2_2_1` */

CREATE TABLE `tabel_3_2_2_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `layanan` varchar(128) NOT NULL,
  `sangat_baik` int(11) NOT NULL,
  `baik` int(11) NOT NULL,
  `cukup` int(11) NOT NULL,
  `kurang` int(11) NOT NULL,
  `rata` decimal(3,2) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_2_2_1` */

insert  into `tabel_3_2_2_1`(`id`,`layanan`,`sangat_baik`,`baik`,`cukup`,`kurang`,`rata`) values 
(1,'Bagaimana pendapat anda tentang layanan minat dan bakat (ekstra kurikuler)?',90,31,12,0,3.59),
(2,'Bagaimana pendapat anda tentang layanan minat dan bakat (ekstra kurikuler)?',59,65,7,2,3.36),
(3,'Bagaimana pendapat anda tentang layanan pembinaan soft skill?',71,51,8,3,3.43),
(4,'Bagaimana pendapat anda tentang layanan beasiswa?',78,43,11,1,3.49),
(5,'Bagaimana pendapat anda tentang layanan kesehatan?',26,44,58,5,2.68);

/*Table structure for table `tabel_3_3_1` */

CREATE TABLE `tabel_3_3_1` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `kemampuan` varchar(64) NOT NULL,
  `sangat_baik` int(11) NOT NULL DEFAULT '0',
  `baik` int(11) NOT NULL DEFAULT '0',
  `cukup` int(11) NOT NULL DEFAULT '0',
  `kurang` int(11) NOT NULL DEFAULT '0',
  `rencana` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_3_1` */

insert  into `tabel_3_3_1`(`id`,`kemampuan`,`sangat_baik`,`baik`,`cukup`,`kurang`,`rencana`) values 
(1,'Integritas (etika dan moral)',87,13,0,0,'Etika mahasiswa akan diperkuat kembali melalui perkuliahan etika profesi\r\n'),
(2,'Keahlian berdasarkan bidang ilmu (profesionalisme)',70,30,0,0,'Keahlian sudah cukup baik akan dievaluasi kesesuaian dengan pekerjaan yang dilakukan\r\n'),
(3,'Bahasa Inggris',63,27,10,0,'Kemampuan Bahasa perlu ditingkatkan dengan pelatihan bahasa inggris untuk komunikasi'),
(4,'Penggunaan Teknologi Informasi',92,8,0,0,'Cukup Baik'),
(5,'Komunikasi',85,15,0,0,'Komunikasi mahasiswa akan diperkuat kembali melalui perkuliahan komunikasi interpersonal'),
(6,'Kerjasama Tim',83,17,0,0,'Akan banyak dibuat sistem project secara tim pada perkuliahan tertentu'),
(7,'Pengembangan Diri',73,27,0,0,'Cukup Baik');

/*Table structure for table `tabel_4_3_1` */

CREATE TABLE `tabel_4_3_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jabatan_akademik` varchar(16) NOT NULL,
  `sertifikasi` tinyint(1) NOT NULL DEFAULT '0',
  `s1_gelar` varchar(5) NOT NULL,
  `s1_pt` varchar(128) NOT NULL,
  `s1_bidang` varchar(128) NOT NULL,
  `s2_gelar` varchar(5) NOT NULL,
  `s2_pt` varchar(128) NOT NULL,
  `s2_bidang` varchar(128) NOT NULL,
  `s3_gelar` varchar(5) NOT NULL,
  `s3_pt` varchar(128) NOT NULL,
  `s3_bidang` varchar(128) NOT NULL,
  `url_sert` varchar(512) DEFAULT NULL,
  `url_s1` varchar(512) NOT NULL,
  `url_s2` varchar(512) DEFAULT NULL,
  `url_s3` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jabatan_4_3_1` (`jabatan_akademik`),
  CONSTRAINT `jabatan_4_3_1` FOREIGN KEY (`jabatan_akademik`) REFERENCES `jabatan_akademik` (`jabatan`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_1` */

insert  into `tabel_4_3_1`(`id`,`nama`,`nidn`,`tanggal_lahir`,`jabatan_akademik`,`sertifikasi`,`s1_gelar`,`s1_pt`,`s1_bidang`,`s2_gelar`,`s2_pt`,`s2_bidang`,`s3_gelar`,`s3_pt`,`s3_bidang`,`url_sert`,`url_s1`,`url_s2`,`url_s3`) values 
(1,'Achmad Teguh Wibowo','2026108801','1988-10-20','Lektor\r\n',1,'S.Kom','STIKOM Surabaya\r\n','Sistem Informasi\r\n','M.T\r\n','Univ. Brawijaya Malang\r\n','Teknik Elektro\r\n','','','',NULL,'',NULL,NULL),
(2,'Ahmad Yusuf','2020019001','1990-01-20','Asisten Ahli\r\n',1,'S.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','M.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','','','',NULL,'',NULL,NULL),
(3,'Anang Kunaefi\r\n','2013117902','1979-11-13','Asisten Ahli\r\n',1,'S.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','M.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','','','',NULL,'',NULL,NULL),
(4,'Asep Saepul  Hamdani\r\n','2031076501','1965-07-31','Lektor Kepala\r\n',1,'Drs.\r','Univ. Muhammadiyah Surabaya\r\n','Pendidikan Matematika\r\n','M.Pd.','IKIP Surabaya\r\n','Pendidikan Matematika\r\n','Dr\r\n','Univ. Negeri Surabaya\r\n','Pendidikan Matematika\r\n',NULL,'',NULL,NULL),
(5,'Bayu Adhi Nugroho\r\n','0718057902','1975-05-18','Asisten Ahli\r\n',1,'S.T.\r','UGM Jogjakarta\r\n','Sistem Komputer Informatika  \r\n','M.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','','','',NULL,'',NULL,NULL),
(6,'Dwi Rolliawati\r\n','2027097901','1979-09-27','Lektor\r\n',1,'S.T.\r','ITATS Surabaya\r\n','Teknik Informatika\r\n','M.T\r\n','ITS Surabaya\r\n','Teknik Elektro\r\n','','','',NULL,'',NULL,NULL),
(7,'Faris Muslihul Amin\r\n','9907146569','1988-08-13','Lektor\r\n',1,'S.Kom','STT Nurul Jadid Probolinggo\r\n','Teknik Informatika\r\n','M.Kom','UDINUS Semarang\r\n','Teknik Informatika\r\n','','','',NULL,'',NULL,NULL),
(8,'Ilham','0708118003','1980-11-08','Lektor\r\n',1,'S.Kom','UGM Jogjakarta\r\n','Ilmu Komputer\r\n','M.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','','','',NULL,'',NULL,NULL),
(9,'Imas Maesaroh\r\n','2014056601','1966-05-14','Lektor Kepala\r\n',1,'Dra\r\n','Institut Agama Islam Negeri (IAIN) Walisongo\r\n','Penyiaran dan Penerangan Agama Islam\r\n','M.Lib','University of New South Wales\r\n','School of Information, Library, and Archive Studies\r\n','Ph.D\r','Curtin University\r\n','Media and Information\r\n',NULL,'',NULL,NULL),
(10,'Indri Sudanawati Rozas\r\n','2021078201','1982-07-21','Lektor\r\n',1,'S.Kom','IPB Bogor\r\n','Ilmu Komputer\r\n','M.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','','','',NULL,'',NULL,NULL),
(11,'Khalid\r\n','2009067902','1979-06-09','Asisten Ahli\r\n',1,'S.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','M.Kom','ITS Surabaya\r\n','Teknik Informatika\r\n','','','',NULL,'',NULL,NULL),
(12,'Kusaeri\r\n','2006077202','1972-07-06','Lektor Kepala\r\n',1,'S.Pd\r','IKIP Negeri Malang\r\n','Pendidikan Matematika\r\n','M.Pd.','Univ. Negeri Surabaya\r\n','Pendidikan Matematika\r\n','Dr\r\n','Univ. Negeri Yogyakarta\r\n','Penelitian dan Evaluasi Pendidikan\r\n',NULL,'',NULL,NULL),
(13,'Moch. Yasin\r\n','2030088801','1988-08-30','Lektor\r\n',1,'S.Kom','ITS Surabaya\r\n','Sistem Informasi\r\n','M.Kom','ITS Surabaya; NTUST Taiwan\r\n','Sistem Informasi; Industrial Management\r\n','','','',NULL,'',NULL,NULL),
(14,'Muhammad Andik Izzuddin\r\n','2007038402','1984-03-07','Lektor\r\n',1,'S.T.\r','Univ. Negeri Malang\r\n','Pendidikan Teknik Informatika\r\n','M.T\r\n','ITB Bandung\r\n','Teknik Media Digital dan Game \r\n','','','',NULL,'',NULL,NULL),
(15,'Mujib Ridwan\r\n','2027048602','1986-04-27','Lektor\r\n',1,'S.Kom','UIN Maulana Malik Ibrahim Malang \r\n','Teknik Informatika\r\n','M.T\r\n','Univ. Brawijaya Malang\r\n','Teknik Elektro\r\n','','','',NULL,'',NULL,NULL),
(16,'Yusuf Amrozi\r\n','2003077601','1976-07-03','Lektor\r\n',1,'S.T.\r','UNISMA Malang\r\n','Teknik Elektro\r\n','M.MT\r','ITS Surabaya\r\n','Manajemen Teknologi Informasi\r\n','','','',NULL,'',NULL,NULL);

/*Table structure for table `tabel_4_3_2` */

CREATE TABLE `tabel_4_3_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jabatan_akademik` varchar(16) NOT NULL,
  `sertifikasi` tinyint(1) NOT NULL DEFAULT '0',
  `s1_pt` varchar(128) NOT NULL,
  `s1_bidang` varchar(128) NOT NULL,
  `s1_gelar` varchar(5) NOT NULL,
  `s2_pt` varchar(128) NOT NULL,
  `s2_bidang` varchar(128) NOT NULL,
  `s2_gelar` varchar(5) NOT NULL,
  `s3_pt` varchar(128) NOT NULL,
  `s3_bidang` varchar(128) NOT NULL,
  `s3_gelar` varchar(5) NOT NULL,
  `url_sert` varchar(512) DEFAULT NULL,
  `url_s1` varchar(512) NOT NULL,
  `url_s2` varchar(512) DEFAULT NULL,
  `url_s3` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `jabatan_4_3_2` (`jabatan_akademik`),
  CONSTRAINT `jabatan_4_3_2` FOREIGN KEY (`jabatan_akademik`) REFERENCES `jabatan_akademik` (`jabatan`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_2` */

insert  into `tabel_4_3_2`(`id`,`nama`,`nidn`,`tanggal_lahir`,`jabatan_akademik`,`sertifikasi`,`s1_pt`,`s1_bidang`,`s1_gelar`,`s2_pt`,`s2_bidang`,`s2_gelar`,`s3_pt`,`s3_bidang`,`s3_gelar`,`url_sert`,`url_s1`,`url_s2`,`url_s3`) values 
(1,'Titik Triwulan Tutik','2029036801','1968-03-29','Guru Besar\r\n',1,'Universitas Dr. Soetomo\r\n','Ilmu Hukum\r\n','SH\r\n','Universitas Airlangga\r\n','Ilmu Hukum\r\n','MH\r\n','Universitas Airlangga','Ilmu Hukum\r\n','Dr.\r\n',NULL,'',NULL,NULL),
(2,'Asep Abbas Abdullah\r\n','2229076301','1963-07-29','Lektor Kepala\r\n',1,'Universitas Padjadjaran Bandung\r\n','Bahasa dan Sastra Arab\r\n','Drs.\r','Universitas Surabaya\r\n','Pendidikan Bahasa dan Sastra\r\n','M.Pd.','Universitas Sebelas Maret','Linguistik\r\n','Dr.\r\n',NULL,'',NULL,NULL);

/*Table structure for table `tabel_4_3_3` */

CREATE TABLE `tabel_4_3_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `sks_ps_sendiri` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_ps_lain` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_pt_lain` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_penelitian` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_pengabdian` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_man_sendiri` decimal(6,3) NOT NULL DEFAULT '0.000',
  `sks_man_lain` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_3` */

insert  into `tabel_4_3_3`(`id`,`nama`,`sks_ps_sendiri`,`sks_ps_lain`,`sks_pt_lain`,`sks_penelitian`,`sks_pengabdian`,`sks_man_sendiri`,`sks_man_lain`) values 
(1,'Achmad Teguh Wibowo\r\n',8.000,0.000,0.000,4.000,0.700,0.000,0.000),
(2,'Ahmad Yusuf',8.000,0.000,0.000,3.000,1.000,0.000,0.000),
(3,'Anang Kunaefi\r\n',6.000,0.000,0.000,2.500,0.750,4.000,0.000),
(4,'Asep Saepul  Hamdani\r\n',3.000,4.000,0.000,1.500,0.700,6.000,0.000),
(5,'Bayu Adhi Nugroho\r\n',12.000,0.000,0.000,0.000,0.000,0.000,0.000),
(6,'Dwi Rolliawati\r\n',9.000,0.000,0.000,3.000,1.750,0.000,0.000),
(7,'Faris Muslihul Amin\r\n',9.000,0.000,0.000,3.000,1.750,0.000,0.000),
(8,'Ilham\r\n',6.000,0.000,0.000,2.500,0.000,5.000,0.000),
(9,'Imas Maesaroh\r\n',3.000,6.000,0.000,3.500,0.860,0.000,0.000),
(10,'Indri Sudanawati Rozas\r\n',8.000,0.000,0.000,3.500,1.500,0.000,0.000),
(11,'Khalid\r\n',9.000,0.000,0.000,3.000,1.000,0.000,0.000),
(12,'Kusaeri\r\n',3.000,6.000,0.000,2.500,2.000,0.000,0.000),
(13,'Moch. Yasin\r\n',8.000,0.000,0.000,3.000,1.000,0.000,0.000),
(14,'Muhammad Andik Izzuddin\r\n',9.000,0.000,0.000,3.000,1.500,0.000,0.000),
(15,'Mujib Ridwan\r\n',6.000,0.000,0.000,2.000,1.500,5.000,0.000),
(16,'Yusuf Amrozi\r\n',6.000,0.000,0.000,1.525,0.750,6.000,0.000);

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
) ENGINE=InnoDB AUTO_INCREMENT=52 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_4` */

insert  into `tabel_4_3_4`(`id`,`nama_dosen`,`kode_mk`,`nama_mk`,`sks`,`pertemuan_direncanakan`,`pertemuan_dilaksanakan`) values 
(1,'Achmad Teguh Wibowo\r\n','FH613074','Sistem Informasi Geografis\r\n',3,14,14),
(2,'Achmad Teguh Wibowo\r\n','BH616014','Interaksi Manusia & Komputer\r\n',3,14,14),
(3,'Achmad Teguh Wibowo\r\n','BH616032','Pemrograman Web\r\n',4,14,14),
(4,'Achmad Teguh Wibowo\r\n','BH616033','Pengantar Basis Data\r\n',3,14,14),
(5,'Achmad Teguh Wibowo\r\n','BH613027','Pengujian Sistem Informasi\r\n',3,14,14),
(6,'Ahmad Yusuf\r\n','BH616028','Manajemen Sains\r\n',3,14,14),
(7,'Ahmad Yusuf\r\n','BH616031','Pemrog. Berorientasi Obyek + Prakt',4,14,14),
(8,'Mujib Ridwan\r\n','BH613028','Sistem Cerdas\r\n',3,14,14),
(9,'Ahmad Yusuf\r\n','BH616019','Komunikasi Interpersonal\r\n',2,14,14),
(10,'Khalid\r\n','BH616007','Algoritma & Pemrograman\r\n',3,14,14),
(11,'Ilham\r\n','CH613043','Enterprise Architecture\r\n',3,14,14),
(12,'Khalid\r\n','BH616021','Manajemen & Administrasi Basis Data\r\n',3,14,14),
(13,'Dwi Rolliawati\r\n','CH613049','Perencanaan Strategis SI\r\n',3,14,14),
(14,'Asep Saepul  Hamdani\r\n','BH616044','Statistika\r\n',3,14,14),
(15,'Dwi Rolliawati\r\n','BH613029','Pemodelan dan Simulasi\r\n',3,14,14),
(16,'Dwi Rolliawati\r\n','BH616031','Pemrog. Berorientasi Obyek + Prakt\r\n',4,14,14),
(17,'Dwi Rolliawati\r\n','BH616014','Interaksi Manusia & Komputer\r\n',3,14,14),
(18,'Ahmad Yusuf\r\n','BH616046','Teknik Pemrograman\r\n',4,14,14),
(19,'Faris Muslihul Amin\r\n','CH613042','Manajemen Hubungan Pelanggan\r\n',3,14,14),
(20,'Faris Muslihul Amin\r\n','CH613052','Manajemen Investasi\r\n',3,14,14),
(21,'Faris Muslihul Amin\r\n','BH613026','Technopreneurship\r\n',3,14,14),
(22,'Ilham\r\n','BH616009','Pengantar Teknologi Informasi\r\n',3,14,14),
(23,'Ilham\r\n','BH616043','Sistem Operasi\r\n',3,14,14),
(24,'Ilham\r\n','CH613054','Proteksi Aset Informasi\r\n',3,14,14),
(25,'Ilham\r\n','DH613055','Etika Profesi\r\n',2,14,14),
(26,'Imas Maesaroh\r\n','BH616024','Manajemen Proses Bisnis\r\n',3,14,14),
(27,'Imas Maesaroh\r\n','BH616008','Manajemen dan Organisasi\r\n',3,14,14),
(28,'Indri Sudanawati Rozas\r\n','FH613061','Audit TI\r\n',3,14,14),
(29,'Indri Sudanawati Rozas\r\n','CH613040','Manajemen Resiko\r\n',3,14,14),
(30,'Indri Sudanawati Rozas\r\n','BH616029','Metodologi Penelitian\r\n',3,14,14),
(31,'Indri Sudanawati Rozas\r\n','CH613053','Tata Kelola TI\r\n',3,14,14),
(32,'Khalid\r\n','FH613085','Data Warehouse\r\n',3,14,14),
(33,'Khalid\r\n','BH616011','Desain Basis Data + Prakt\r\n',4,14,14),
(34,'Khalid\r\n','BH616021','Manajemen & Administrasi Basis Data\r\n',3,14,14),
(35,'Kusaeri\r\n','BH616016','Kalkulus dan Aljabar Linear\r\n',3,14,14),
(36,'Moch Yasin\r\n','FH613073','Integrasi Aplikasi Korporasi\r\n',3,14,14),
(37,'Moch Yasin\r\n','CH613033','Manajemen Rantai Pasok\r\n',3,14,14),
(38,'Moch Yasin\r\n','CH613044','Perencanaan Sumberdaya Perusahaan\r\n',3,14,14),
(39,'Moch Yasin\r\n','BH616032','Pemrograman Web\r\n',4,14,14),
(40,'Muhammad Andik Izzuddin\r\n','BH616011','Desain Basis Data + Prakt\r\n',4,14,14),
(41,'Muhammad Andik Izzuddin\r\n','FH613065','Digital Forensic\r\n',3,14,14),
(42,'Muhammad Andik Izzuddin\r\n','CH613045','Manajemen Proyek Sistem Informasi\r\n',3,14,14),
(43,'Muhammad Andik Izzuddin\r\n','BH616015','Jaringan Keamanan Komputer\r\n',4,14,14),
(44,'Muhammad Andik Izzuddin\r\n','FH613071','Mobile Technology\r\n',3,14,14),
(45,'Mujib Ridwan\r\n','CH613041','Pengembangan dan Implementasi SI\r\n',3,14,14),
(46,'Indri Sudanawati Rozas\r\n','BH616040','Rekayasa Perangkat Lunak\r\n',3,14,14),
(47,'Mujib Ridwan\r\n','FH613066','Sistem Pendukung Keputusan\r\n',3,14,14),
(48,'Mujib Ridwan\r\n','BH616010','Analisa & Perancangan SI\r\n',3,14,14),
(49,'Yusuf Amrozi\r\n','BH616042','Sistem Informasi Manajemen\r\n',3,14,14),
(50,'Yusuf Amrozi\r\n','BH616020','Konsep Sistem Informasi\r\n',3,14,14),
(51,'Yusuf Amrozi\r\n','FH613066','Sistem Pendukung Keputusan\r\n',3,14,14);

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
) ENGINE=InnoDB AUTO_INCREMENT=4 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_3_5` */

insert  into `tabel_4_3_5`(`id`,`nama_dosen`,`kode_mk`,`nama_mk`,`sks`,`pertemuan_direncanakan`,`pertemuan_dilaksanakan`) values 
(1,'Prof. Dr. Titik Triwulan Tutik, SH.,MH.\r\n','A0016003','Pancasila dan Kewarganegaraan\r\n',3,14,14),
(2,'Prof. Dr. Titik Triwulan Tutik, SH.,MH.','A0016002','IAD/IBD/ISD\r\n',3,14,14),
(3,'Asep Abbas Abdullah\r\n','A0016001','Bahasa Indonesia\r\n',3,14,14);

/*Table structure for table `tabel_4_4_1` */

CREATE TABLE `tabel_4_4_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) NOT NULL,
  `tanggal_lahir` date NOT NULL,
  `jabatan_akademik` varchar(16) NOT NULL,
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
  `instansi_jabatan` varchar(150) NOT NULL,
  `kegiatan` varchar(150) NOT NULL,
  `tahun` int(11) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=43 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_1` */

insert  into `tabel_4_5_1`(`id`,`nama_pakar`,`instansi_jabatan`,`kegiatan`,`tahun`) values 
(1,'Dr. Silvy Dewayani','UGM','Workshop KKNI',2016),
(2,'Aryo Nugroho\r\n','Founder CATFIZ','Talkshow : \"Social Media Technopreneur\", Information System Festival (I-Fest 1)',2016),
(3,'Wahyudi Agustiono, P.hD \r\n',' Universitas Trunojoyo Madura / Mentor tim solid studio pemenang 2 dunia game developer di kompetisi Imagine Cup 2013 tingkat Internasional','Talkshow : \"Youtechpreneur\", Information System Festival (I-Fest 2)',2016),
(4,'Anwar Fuadi, S.Kom\r\n','Founder None Developers, Pemenang lomba tingkat Dunia Imagine Cup di Amerika Serikat','Talkshow : \"Youtechpreneur\", Information System Festival (I-Fest 2)',2016),
(5,'Tyo Avianto\r\n','Founder Cubeacon','Talkshow : \"Youtechpreneur\", Information System Festival (I-Fest 2)',2016),
(6,'Dr. Hamidul haque \r\n','Expert dari Senior Experten Service Jerman','Seminar \"Renewable Energy for Sustainable Development\"',2016),
(7,'Tim Inixindo\r\n','Inixindo','Pelatihan WEB programming',2016),
(8,'Tim Inixindo\r\n','Inixindo','Workshop Programming With Android',2016),
(9,'Prof. Dr. Abdul. Mujib, M.Ag., M.Si \r\n','Dekan Psikologi UIN jakarta','Majelis Hikmah, Implementasi Integrasi Sains dan Islam',2016),
(10,'Taufik Kasturi, M.Si., Ph.D \r\n','Dekan Psikologi UMS','Majelis Hikmah, Implementasi Integrasi Sains dan Islam',2016),
(11,'dr, Mukhtar Ikhsan, Sp.P(k),MARS \r\n','FKUI','Majelis Hikmah, Implementasi Integrasi Sains dan Islam',2016),
(12,'Dr, Ir, Hasan Ikhwani, MSc \r\n','ITS','Majelis Hikmah, Implementasi Integrasi Sains dan Islam',2016),
(13,'Hangga Nuarta \r\n','Traveloka','Traveloka Digital Marketing Seminar : Search Engine Optimization',2016),
(14,'Dr. Cahyo Crysdian\r\n','UIN Maulana Malik Ibrahim, Malang','Kuliah Tamu : Virtual Reality For Field Combat Simulation and Research For University',2016),
(15,'Budi Hermawan\r\n','UPI','Kuliah Tamu IT Governance',2017),
(16,'Agus Zainal Arifin\r\n','ITS','Pembekalan Mahasiswa Baru',2018),
(17,'Prof Ali Ramdhani\r\n','UIN SGD Bandung','Penulisan publikasi ilmiah',2018),
(18,'Dr Yusuf Durrahman\r\n','UIN Jakarta','Integrasi dalam Tridharma',2018),
(19,'Achmad Holil Nur Ali\r\n','ITS','Kurikulum Sistem Informasi',2018),
(20,'Setyo Deny Hudaya\r\n','PGN','Kuliah tamu Manajemen Resiko',2017),
(21,'Prof. Hendro wicaksono\r\n','Jacobs University, Bremen, Jerman','Kuliah Tamu “Integrasi riset dalam pembelajaran menyongsong revolusi indistri 4.0.”',2019),
(22,'Dra. Dede Mia Yusantri\r\n','Lembaga Ilmu Pengetahuan Indonesia','Workshop Pembinaan Drafting Paten',2019),
(23,'Prio Adi Ramadhani, ST\r\n','Lembaga Ilmu Pengetahuan Indonesia','Workshop Pembinaan Drafting Paten',2019),
(24,'Adi Ankafia, SE\r\n','Lembaga Ilmu Pengetahuan Indonesia','Workshop Pembinaan Drafting Paten',2019),
(25,'Yunifa Miftahul A, M.T\r\n','UIN Maulana Malik Ibrahim, Malang','Membangun Serious Game Sebagai Media Digital Marketing Smart Tourism Indonesia',2019),
(26,'Dr. M.Faisal, MT\r\n','UIN Maulana Malik Ibrahim, Malang','Rancang Bangun mesin Virtual Mendeteksi Plagiasi Karya Tulis Dosen dan Mahasiswa',2019),
(27,'Prio Adi Ramadhani, ST\r\n','Lembaga Ilmu Pengetahuan Indonesia (LIPI) Jakarta','Pelatihan Drafting Paten Tingkat Lanjut ',2019),
(28,'Dr. Ahmad Taufiq, M.Si\r\n','Universitas Negeri Malang','Pelatihan Drafting Paten Tingkat Lanjut ',2019),
(29,'Ita Yukimartati, M.Si\r\n','DJKI Kemenkum HAM','Pelatihan Drafting Paten Tingkat Lanjut ',2019),
(30,'drh. Sirin Wahyu Nugroho\r\n','Ristek Dikti','Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(31,'Prof. Dr. Suwito, MA\r\n','UIN Jakarta','Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(32,'Moh. Zikky, S.ST, M.T\r\n','Politeknik Elektronika Negeri Surabaya','Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(33,'Syahiduz Zaman, M.Kom\r\n','UIN Maulana Malik Ibrahim, Malang','Strategi Pemilihan Topik Penelitian Mahasiswa Sistem Informasi',2019),
(34,'M. Ainul Yaqin, M.Kom\r\n','UIN Maulana Malik Ibrahim, Malang','Strategi Pemilihan Topik Penelitian Mahasiswa Sistem Informasi',2019),
(35,'Dr. Ary Mazharuddin Shiddiqi, S.Kom, M.Kom.Sc\r\n','ITS','Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(36,'Citrawati Dyah Kencono Wungu, dr., M.Si\r\n','Universitas Airlangga ','Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(37,'Muhammad Browijoyo Santanumurti, S.Pi, M.Sc\r\n','Universitas Airlangga ','Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(38,'Alfian Pramudita Putra, M.Sc\r\n','Universitas Airlangga ','Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(39,'Prof. H. Mas\'ud Said, MA. PhD\r\n','Universitas Islam Malang','FGD : Kependudukan dan Lingkungan Hidup Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(40,'H. Yenrizal Makmur, SP, MM\r\n','BKKBN','FGD : Kependudukan dan Lingkungan Hidup Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(41,'KH. Abdul Ghaffarrozin, M.Ed\r\n','Robithoh Maahid Islamiyah (RMI) PBNU','Simposium Nasional pondok Pesantren \"Sinergi dan Kolaborasi Pengembangan Sarana dan Prasarana Pondok Pesantren dalam Mendukung Pencapaian Sustainable ',2019),
(42,'Ruchman Basori, S.Ag, M.Ag\r\n','Direktorat Jenderal Pendidikan Islam Kementerian Agama ','Simposium Nasional pondok Pesantren \"Sinergi dan Kolaborasi Pengembangan Sarana dan Prasarana Pondok Pesantren dalam Mendukung Pencapaian Sustainable ',2019);

/*Table structure for table `tabel_4_5_2` */

CREATE TABLE `tabel_4_5_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `pendidikan` char(3) NOT NULL,
  `bidang` varchar(32) NOT NULL,
  `pt` varchar(32) NOT NULL,
  `negara` varchar(32) NOT NULL,
  `tahun` int(11) NOT NULL,
  `url_pendidikan` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `pend_4_5_2` (`pendidikan`),
  CONSTRAINT `pend_4_5_2` FOREIGN KEY (`pendidikan`) REFERENCES `pendidikan` (`pendidikan`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_2` */

insert  into `tabel_4_5_2`(`id`,`nama_dosen`,`pendidikan`,`bidang`,`pt`,`negara`,`tahun`,`url_pendidikan`) values 
(1,'Anang Kunaefi','S3\r','Computer Science\r\n','Kumamoto Univesity\r\n','Jepang\r\n',2018,''),
(2,'Bayu Adhi Nugroho','S3\r','Computer Science','University of Western Australia','Australia',2017,''),
(3,'Moch. Yasin\r\n','S3\r','Teknik Informatika\r\n','Institut Teknologi Sepuluh Nopem','Indonesia\r\n',2018,''),
(5,'Yusuf Amrozi\r\n','S3\r','Manajemen\r\n','Universitas Airlangga\r\n','Indonesia\r\n',2016,''),
(6,'Ilham\r\n','S3\r','Manajemen\r\n','Universitas Airlangga\r\n','Indonesia\r\n',2019,''),
(7,'Achmad Teguh Wibowo\r\n','S3\r','Teknik Elektro\r\n','Institut Teknologi Sepuluh Nopem','Indonesia\r\n',2019,'');

/*Table structure for table `tabel_4_5_3` */

CREATE TABLE `tabel_4_5_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `kegiatan` varchar(200) NOT NULL,
  `tempat` varchar(50) NOT NULL,
  `tahun` int(11) NOT NULL,
  `penyaji` tinyint(1) NOT NULL DEFAULT '0',
  `url_kegiatan` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=97 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_3` */

insert  into `tabel_4_5_3`(`id`,`nama_dosen`,`kegiatan`,`tempat`,`tahun`,`penyaji`,`url_kegiatan`) values 
(1,'Achmad Teguh Wibowo','FGD Perakitan dan Layout Soal UM-PTKIN 2016','Surya Hotel dan Cottages ',2016,1,''),
(2,'Achmad Teguh Wibowo','Talk Show UM-PTKIN di TVRI Senayan Jakarta','TVRI Senayan Jakarta',2016,1,''),
(3,'Achmad Teguh Wibowo','Press Conference SPAN PTKIN','Agis Restaurant',2016,1,''),
(4,'Achmad Teguh Wibowo','FGD Penetapan Kelulusan UM-PTKIN ','Hotel Inna Grand Bali Beach',2016,1,''),
(5,'Achmad Teguh Wibowo','FGD Setting Host to Host dengan tim it bank mitra UM-PTKIN','GreenSa Inn',2016,1,''),
(6,'Achmad Teguh Wibowo','FGD Penyusunan Soal Kompetisi Sains dan Madrasah','Surabaya',2018,1,''),
(7,'Achmad Teguh Wibowo','Pembicara pada BEST ICON','Surabaya',2018,1,''),
(8,'Ahmad Yusuf','Requierement Analisys dan Manajemen Basis Data CBT UM PTKIN 2017','Jakarta',2017,1,''),
(9,'Ahmad Yusuf','BENCHMARKING Computer Based Test','Surabaya',2017,1,''),
(10,'Ahmad Yusuf','Narasumber dalam kurikulum KKNI tingkat Fakultas','Surabaya',2017,1,''),
(11,'Ahmad Yusuf','Membangun Jaringan Knowledge Antar PTKI','UIN Jakarta',2016,0,''),
(12,'Ahmad Yusuf','FGD Aplikasi SPAN-UM PTKIN Tahun 2018','Makassar',2018,1,''),
(13,'Ahmad Yusuf','FGD Infrastruktur dan Proses Bisnis Aplikasi PSAN-UM PTKIN 2018','Makassar',2018,1,''),
(14,'Ahmad Yusuf','FGD Pembahasan Seleksi SPAN dan Bimtek UMPTKIN','Makassar',2018,1,''),
(15,'Ahmad Yusuf','Narasumber kegiatan Pemutakhiran Data BOS, BOP RA dan PIP','Surabaya',2018,1,''),
(16,'Ahmad Yusuf','FGD Teknik Pelaksanaan CBT UM-PTKIN','Surabaya',2018,1,''),
(17,'Ahmad Yusuf','FGD Sinkronisasi Data Skoring','Makassar',2018,1,''),
(18,'Ahmad Yusuf','FGD Pembahasan dan Penetapan Kelulusan UM-PTKIN 2018','Padang',2018,1,''),
(19,'Ahmad Yusuf','FGD Simulasi Kelulusan UM-PTKIN 2018','Padang',2018,1,''),
(20,'Ahmad Yusuf','Peserta Workshop Pengelolaan Jaringan UTBK-Desktop PTN','Jakarta',2018,0,''),
(21,'Anang Kunaefi','Requierement Analisys dan Manajemen Basis Data CBT UM PTKIN 2017','Jakarta',2017,1,''),
(22,'Anang Kunaefi','BENCHMARKING Computer Based Test','Surabaya',2017,1,''),
(23,'Anang Kunaefi','Juri dalam MTQ Mahasiswa Regional IV Jawa Timur Bidang Aplikasi Alquran','Bangkalan Madura',2016,1,''),
(24,'Anang Kunaefi','Workshop \"Optimalisasi potensi psikologi siswa berbasis manajemen data\"','Surabaya',2016,1,''),
(25,'Bayu Adhi Nugroho','IIFAS 2017','Yogyakarta - Kampus UGM',2017,1,''),
(26,'Bayu Adhi Nugroho','INDONESIA ANDROID KEJAR 2.0 - GOOGLE','UNIVERSITAS BRAWIJAYA',2016,0,''),
(27,'Bayu Adhi Nugroho','Workshop Pedagogi Pemrograman dan Penilaian Otomatis','Politeknik Negeri Malang - Polinema',2015,0,''),
(28,'Dwi Rolliawati','Internasional conference of Quality Assurance','UIN Sunan Ampel surabaya',2016,0,''),
(29,'Faris Mushlihul Amin, M.Kom','Seminar \"Pesantren BerbasisTeknologi \"','PP. Nurul Jadid Probolinggo',2016,1,''),
(30,'Faris Mushlihul Amin, M.Kom','ANCOMS 2nd KOPERTAIS 4 Jawa Timur','Surabaya',2018,1,''),
(31,'Faris Mushlihul Amin, M.Kom','Pembicara pada BEST ICON( Integrated Science and technolology towards suistainable built environment)','Surabaya',2018,1,''),
(32,'Faris Mushlihul Amin, M.Kom','Perancangan dan Pelatihan Website dan Database Anggota Ikatan Keluarga Alumni Pergerakan Mahasiswa Islam Indonesia Jawa Timur','Surabaya',2018,1,''),
(33,'Ilham, M.Kom','Seminar Penulisan Jurnal Ilmiah Pengelolaan Jurnal Online prodi Arsitek Fak,Saintek UIN Sunan Ampel Sby','UIN Sunan Ampel Surabaya',2016,0,''),
(34,'Ilham, M.Kom','Peserta dalam Seminar Nasional Promoting Renewable Energy For Sustainanble Development','UIN Sunan Ampel Surabaya',2016,0,''),
(35,'Ilham, M.Kom','Menjadi Peserta IS Coffee Forum di ITS','SI ITS',2016,0,''),
(36,'Ilham, M.Kom','Pemateri dalam acara Pelatihan Peningkatan Kompetensi Mhs Prodi SI di Lab Komputer UIN Sunan Ampel Sby','UIN Sunan Ampel Surabaya',2016,0,''),
(37,'Ilham, M.Kom','Peserta Workshop Kisi-kisi butiran soal SPMB Mandiri','UIN Jakarta',2016,0,''),
(38,'Ilham, M.Kom','Menjadi Pengawas SBMPTN','UIN Sunan Ampel Surabaya',2016,0,''),
(39,'Ilham, M.Kom','Menjadi Narasumber siaran Radio Pro 2 RRI  Surabaya Teknologi dan Gadget','UIN Sunan Ampel Surabaya',2016,0,''),
(40,'Ilham, M.Kom','Monev Tim SPAN dan UM PTKIN Nasional Uin Sunan Ampel','UIN Sunan Ampel Surabaya',2016,0,''),
(41,'Dra. Imas Maesaroh, Dip.IM-Lib., M.Lib., Ph.D.','Menjadi Narasumber pada seminar nasional di Universitas Udayana dengan judul: Pustakawan dan Literasi Digital Menuju Indonesia Anti Hoax','Jakarta',2016,1,''),
(42,'Dra. Imas Maesaroh, Dip.IM-Lib., M.Lib., Ph.D.','Menjadi Nara sumber Penyusunan Juknis Bantuan Pengembangan Karir Pustakawan dengan judul \"Pengembangan Karir Pustakawan\" ','Jakarta',2016,1,''),
(43,'Dra. Imas Maesaroh, Dip.IM-Lib., M.Lib., Ph.D.','Nara sumber pada kegiatan \"Peningkatan Manajemen Pengelola Perpustakaan PTKI\" ','Semarang',2018,1,''),
(44,'Dra. Imas Maesaroh, Dip.IM-Lib., M.Lib., Ph.D.',' \"Strategi Meminimalisir Plagiasi Bagi Akademisi\" ','Tulungagung',2018,1,''),
(45,'Indri Sudanawati Rozas, M.Kom','Seminar Nasional Sistem Informasi Indonesia 2015','ITS Surabaya',2015,0,''),
(46,'Indri Sudanawati Rozas, M.Kom','AISINDO Annual Meeting','ITS Surabaya',2015,0,''),
(47,'Indri Sudanawati Rozas, M.Kom','Training intensif profesional CISA','ITS Surabaya',2015,0,''),
(48,'Indri Sudanawati Rozas, M.Kom','Temu Ilmiah Nasional Badan Penelitian dan Pengembangan Provinsi Jawa Timur Tahun 2016','Balitbang Prov Jatim',2016,0,''),
(49,'Indri Sudanawati Rozas, M.Kom','Temu Ilmiah Balitbang Prov Jawa Timur 2018','Surabaya',2018,1,''),
(50,'Indri Sudanawati Rozas, M.Kom',' Pertemuan dan Presentasi Ilmiah Standarisasi (PPIS) 2018 Badan Standarisasi Nasional Surabaya, 26 Oktober 2018','Surabaya',2018,1,''),
(51,'Khalid, M.Kom','AISINDO Annual Meeting','ITS Surabaya',2015,0,''),
(52,'Khalid, M.Kom','Seminar \"Penulisan Jurnal Ilmiah dan Pengelolaan Jurnal Online\"','UIN Sunan Ampel Surabaya',2016,0,''),
(53,'Khalid, M.Kom','Seminar Internasional Renewable Energy','UIN Sunan Ampel',2016,0,''),
(54,'Khalid, M.Kom','Workshop Integrasi gender dalam pengabdian masyarakat','UIN Sunan Ampel',2016,0,''),
(55,'Khalid, M.Kom','seminar \"Manajemen Resiko dan Peluang pada Keamanan Informasi Cyber\" oleh AISINDO','ITS',2016,0,''),
(56,'Khalid, M.Kom','Training Database Design & Programming with SQL oleh Oracle Academy','Unair Surabaya',2015,0,''),
(57,'Khalid, M.Kom','Pelatihan program Peningkatan Keterampilan Dasar Teknik Instruksional (PEKERTI)','GreenSA Inn',2015,0,''),
(58,'Khalid, M.Kom','FOCUS GROUP DISCUSSION FIELDWORK RESEARCH MENTOR TRAINING PROGRAM PADA KOMUNITAS DAMPINGAN DI SURABAYA DAN SIDOARJO','Surabaya',0,1,''),
(59,'Khalid, M.Kom','Presenter di ICONQUHAS 2018 Bandung','Bandung',0,1,''),
(60,'Dr. Kusaeri, M.Pd','Narasumber Kuliah Umum di Prodi Matematika Saintek UIN Sunan Kalijaga Yogyakarta','Yogyakarta',2018,1,''),
(61,'Dr. Kusaeri, M.Pd','Sebagai pemakalah dalam ICRIEM ke-5 di UNY Yogyakarta','Yogyakarta',2018,1,''),
(62,'Muhammad Andik Izzuddin, MT','Requierement Analisys dan Manajemen Server CBT UM PTKIN 2017','Jakarta',2017,1,''),
(63,'Muhammad Andik Izzuddin, MT','BENCHMARKING Computer Based Test','Surabaya',2017,1,''),
(64,'Muhammad Andik Izzuddin, MT','Membangun Jaringan Knowledge Antar PTKI','UIN Jakarta',2016,0,''),
(65,'Mujib Ridwan, M.T','Pelatihan program Peningkatan Keterampilan Dasar Teknik Instruksional (PEKERTI)','GreenSA Inn',2015,0,''),
(66,'Mujib Ridwan, M.T','Workshop \"Penulisan Artikel Ilmiah untuk Jurnal Terakreditasi\"','RS Rektorat UINSA',2016,0,''),
(67,'Mujib Ridwan, M.T','Workshop \"Gender Integration in Curriculum\"','Ibis Hotel Surabaya',2016,0,''),
(68,'Mujib Ridwan, M.T','Workshop \"Pengembangan Rencana Pembelajaran Semester (RPS) Kurikulum Perguruan Tinggi UIN Sunan Ampel Sby\"','Twin Towers Lt.9',2016,0,''),
(69,'Mujib Ridwan, M.T','Workshop \"Metodologi ABCD bagi Dosen UIN Sunan Ampel Surabaya\"','Twin Towers Lt.9',2016,0,''),
(70,'Mujib Ridwan, M.T','Workshop \"Penyususnan Rencana Pembelajaran Semester bagi Dosen Pengampu Matakuliah Universitas\"','Twin Towers Lt.9',2016,0,''),
(71,'Mujib Ridwan, M.T','Bimbingan Teknis Sistem Penjaminan Mutu Internal (SPMI)','UNU Sidoarjo',2016,0,''),
(72,'Mujib Ridwan, M.T','Workshop \"Pengelolaan Open Journal Sustem Teosofi: Jurnal Tasawuf dan Pemikiran Islam\"','Hotel Bidakara Surabaya',2015,0,''),
(73,'Mujib Ridwan, M.T','Lokakarya \"Urgensi Integrasi Gender di UIN Sunan Ampel Surabaya\"','Hotel Tunjungan',2016,0,''),
(74,'Mujib Ridwan, M.T','Seminar \"Penulisan Jurnal Ilmiah dan Pengelolaan Jurnal Online\"','UINSA Surabaya',2016,0,''),
(75,'Mujib Ridwan, M.T','Seminar internasional dengan tema \"The Role Of Steel Constructionin Archkitecture Design\"','UINSA Surabaya',2016,0,''),
(76,'Mujib Ridwan, M.T','International Conference On Entrepreneurship (ICOEN) ke-3 tahun 2016 di Universitas Ciputra Surabaya','Kampus Ciputra Surabaya',2016,0,''),
(77,'Mujib Ridwan, M.T','Seminar nasional dengan tema \"Green Building Untuk Eksistensi Lingkungan Berkelanjutan\"','UINSA Surabaya',2016,0,''),
(78,'Mujib Ridwan, M.T','IS Coffee Forum dengan topik \"Merintis E-Government Terintegrasii DAN CIO & Struktur DINKOMINFO\"','ITS Surabaya',2016,0,''),
(79,'Mujib Ridwan, M.T','Klinik Akreditasi dalam rangka pengisian borang akreditasi perguruan tinggi dan prodi oleh BAN PT','UNU Surabaya',2016,0,''),
(80,'Mujib Ridwan, M.T','Workshop perencanaan audit','GreenSA Inn',2015,0,''),
(81,'Mujib Ridwan, M.T','Seminar dan workshop pedagogi pemrograman dan pengenalan sistem penilaian tugas pemrograman secara otomatis','Polinema',2015,0,''),
(82,'Mujib Ridwan, M.T','Seminar kesehatan \"gizi sehat seimbang menuju hidup berkualitas\"','UINSA Surabaya',2015,0,''),
(83,'Yusuf Amrozi','Workshop Penjaminan Mutu','IAIN Tulungagung',2016,1,''),
(84,'Yusuf Amrozi','Seminar Ilmiah di forum Majelis Hikmah','UIN Sunan Ampel',2016,1,''),
(85,'Yusuf Amrozi','Seminar Internasional Renewable Energy','UIN Sunan Ampel',2016,0,''),
(86,'Yusuf Amrozi','Seminar Nasional Teknologi Informasi oleh AISINDO','ITS',2016,0,''),
(87,'Yusuf Amrozi','Workshop Audit Sistem Informasi','ITS',2016,0,''),
(88,'Yusuf Amrozi','Peningkatan Akses Perguruan Tinggi NU (PTNU) di Jawa Timur melalui Teknologi Tepat Guna di Bidang Sistem Informasi (Rancang Bangun dan Pelatihan Content Management System Website Ptnu di Jawa Timur)','Surabaya',2018,1,''),
(89,'Mujib Ridwan, M.T','Pemateri Seminar Nasional: ASWAJA dan Polemik Kemanusiaan di Auditorium MA Nurul Jadid','Probolinggo',2019,1,''),
(90,'Achmad Teguh Wibowo','pendampingan dan sosialisasi pengunaan aplikasi informasi jasa konstruksi kota malang di dinas pekerjaan kota malang','Malang',2019,1,''),
(91,'Mujib Ridwan, M.T','Pendampingan dan Sosialisasi penggunaan aplikasi SIPJAKON di PUPR Kota Malang','Malang',2019,1,''),
(92,'Mujib Ridwan, M.T','Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri Berbasis E-Commerce di Pondok Pesantren Nurul Huda Yayasan Cendekia Insani Situbondo','Situbondo',2019,1,''),
(93,'Moch. Yasin','presenter di International Conference on Record Library','Surabaya',2019,1,''),
(94,'Muhammad Andik Izzuddin, MT','Narasumber Kegiatan Pengabdian Kepada Masyarakat di SMK Nurul Huda Situbondo','Situbondo',2019,1,''),
(95,'Indri Sudanawati Rozas, M.Kom','Penyuluhan gadget warning system di SMP 62','Surabaya',2019,1,''),
(96,'Indri Sudanawati Rozas, M.Kom','presenter di International Conference on Social Science','Surabaya',2019,1,'');

/*Table structure for table `tabel_4_5_4` */

CREATE TABLE `tabel_4_5_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `prestasi` varchar(200) NOT NULL,
  `tahun` int(4) NOT NULL,
  `tingkat` varchar(16) NOT NULL,
  `url_prestasi` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tingkat prestasi` (`tingkat`),
  CONSTRAINT `tingkat_kegiatan_4_5_4` FOREIGN KEY (`tingkat`) REFERENCES `tingkat_kegiatan` (`tingkat`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_4` */

insert  into `tabel_4_5_4`(`id`,`nama_dosen`,`prestasi`,`tahun`,`tingkat`,`url_prestasi`) values 
(1,'Achmad Teguh Wibowo','Panitia SPAN UM PTKIN 2016',2016,'Nasional',''),
(2,'Achmad Teguh Wibowo','Panitia SPAN UM PTKIN 2017',2017,'Nasional',''),
(3,'Achmad Teguh Wibowo','Presenter BEST ICON 2018',2018,'Internasional',''),
(4,'Ahmad Yusuf, M.Kom.','Panitia SPAN UM PTKIN 2016',2016,'Nasional',''),
(5,'Ahmad Yusuf, M.Kom.','Panitia SPAN UM PTKIN 2017',2017,'Nasional',''),
(6,'Ahmad Yusuf, M.Kom.','Panitia SPAN UM PTKIN 2018',2018,'Nasional',''),
(7,'Ahmad Yusuf, M.Kom.','Kajian Integrasi Sains dan Teknologi dengan Keislaman',2016,'Lokal',''),
(8,'Ahmad Yusuf, M.Kom.','Dosen Terbaik Prodi Sistem Informasi',2016,'Lokal',''),
(9,'Ahmad Yusuf, M.Kom.','Dosen Terbaik Prodi Sistem Informasi',2017,'Lokal',''),
(10,'Anang Kunaefi, M.Kom','Program Penunjang 5000 Doktor',2017,'Internasional',''),
(11,'Bayu Adhi Nugroho','Menulis artikel di muat Prosiding ICNERE-ECCIS 2016',2016,'Internasional',''),
(12,'Bayu Adhi Nugroho','IIFAS 2017 - International Indonesian Forum for Asian Studies',2017,'Internasional',''),
(13,'Bayu Adhi Nugroho','Kursus Intensif Bahasa Asing',2015,'Nasional',''),
(14,'Bayu Adhi Nugroho','Program Penunjang 5000 Doktor',2017,'Internasional',''),
(15,'Dwi Rolliawati','Ketua Konsorsum keilmuan Teknologi',2015,'Lokal',''),
(16,'Dwi Rolliawati','Review Redesign Curiculum KKNI',2016,'Nasional',''),
(17,'Dwi Rolliawati','Moderator BEST ICON 2018',2018,'Internasional',''),
(18,'Faris Mushlihul Amin, M.Kom','Pembina PC PMII Probolinggo',2015,'Nasional',''),
(19,'Faris Mushlihul Amin, M.Kom','Pengurus Wilayah GP Ansor Jawa Timur',2015,'Nasional',''),
(20,'Faris Mushlihul Amin, M.Kom','Wakil Ketua Gerakan Pemuda Jawa Timur',2015,'Nasional',''),
(21,'Faris Mushlihul Amin, M.Kom','Presenter BEST ICON 2018',2018,'Internasional',''),
(22,'Faris Mushlihul Amin, M.Kom','JPPR Jawa Timur',2018,'Lokal',''),
(23,'Ilham M.Kom','Hibah Bersaing 2013-2015 DIKTI',2015,'Nasional',''),
(24,'Ilham M.Kom','Pemateri dalam acara Pelatihan Peningkatan Kompetensi Mhs Prodi SI di Lab Komputer UIN Sunan Ampel Sby',2016,'Lokal',''),
(25,'Ilham, M.Kom','Seminar rekayasa perangkat lunak deteksi dini kecenderungan gangguan kesehatan masyarakat tertinggal dan pesisir dengan bayesian network',2015,'Nasional',''),
(26,'Indri Sudanawati Rozas, M.Kom','reviewer jurnal nasional JTIIK Universitas Brawijaya',2016,'Nasional',''),
(27,'Khalid, M.Kom','Kursus : English Language Training (Pre-Intermediate 1) di IALF Surabaya',2015,'Nasional',''),
(28,'Khalid, M.Kom','Presenter ICON QUHAS di Bandung',2018,'Internasional',''),
(29,'Moch Yasin, S.Kom., M.Kom., MBA','reviewer jurnal Register UNIPDU',2016,'Nasional',''),
(30,'Moch Yasin, S.Kom., M.Kom., MBA','Tim editorial jurnal NJCA(Nusantara Journal of Computer and Applications)',2016,'Nasional',''),
(31,'Moch Yasin, S.Kom., M.Kom., MBA','Pemakalah dalam konferensi Internasional (ber ISSN) \'International Conference on Record and Library - Reinventing Information Professionals\'',2015,'Internasional',''),
(32,'Moch Yasin, S.Kom., M.Kom., MBA','Pemakalah dalam konferensi Internasional (ber ISSN) \'International Conference on Record and Library - Transforming Information in the New Media\'',2016,'Nasional',''),
(33,'Moch Yasin, S.Kom., M.Kom., MBA','Pemakalan dalam konferensi Internasional \'The 16th Annual International Conference on Islamic Studies - The Contribution of Indonesian Islam to The World Civilization\'',2016,'Internasional',''),
(34,'Moch Yasin, S.Kom., M.Kom., MBA','Menerbitkan karya ilmiah Prototype Sistem Informasi Manajemen Keselamatan dan Kesehatan Kerja E-K3 Menggunakan Peta Digital Berbasis Web dan Mobile',2016,'Nasional',''),
(35,'Moch Yasin, S.Kom., M.Kom., MBA','Memberi pelatihan kepada SDIT Al Mukminun Ngrambe, Ngawi, Jawa Timur',2015,'Lokal',''),
(36,'Moch Yasin, S.Kom., M.Kom., MBA','Memberi pelatihan kepada SMA Darul Mukhlasin',2016,'Lokal',''),
(37,'Moch Yasin, S.Kom., M.Kom., MBA','Memberi pelatihan kepada Ma\'had Aly As\'adiah, Sengkang, Sulawesi Selatan',2016,'Lokal',''),
(38,'Moch Yasin, S.Kom., M.Kom., MBA','Memberi pelatihan kepada SMK Bilingual Al-Yasini',2016,'Lokal',''),
(39,'Muhammad Andik Izzuddin, MT','Panitia SPAN UM PTKIN 2016',2016,'Nasional',''),
(40,'Muhammad Andik Izzuddin, MT','Panitia SPAN UM PTKIN 2017',2017,'Nasional',''),
(41,'Muhammad Andik Izzuddin, MT','Kursus : English Language Training (Pre-Intermediate 1) di IALF Surabaya',2015,'Nasional',''),
(42,'Muhammad Andik Izzuddin, MT','Presenter BEST ICON 2018',2018,'Internasional',''),
(43,'Mujib Ridwan, M.T','Bidang Pengembangan SDM LPTNU PW Jatim',2015,'Nasional',''),
(44,'Mujib Ridwan, M.T','Editor Jurnal Systemic',2015,'Lokal',''),
(45,'Mujib Ridwan, M.T','Redaktur Jurnal Systemic',2016,'Lokal',''),
(46,'Mujib Ridwan, M.T','Workshop \"Optimalisasi potensi psikologi siswa berbasis manajemen data\"',2016,'Lokal',''),
(47,'Mujib Ridwan, M.T','Pelatihan Sistem Informasi Sekolah dengan tema \"Penataan Manajemen Sekolah Berbasis Teknologi dan Kesehatan\"',2016,'Lokal',''),
(48,'Mujib Ridwan, M.T','Pelatihan Sistem Informasi Sekolah dengan tema \"Peningkatan SDM dan Penggunaan Teknologi\"',2016,'Lokal',''),
(49,'Mujib Ridwan, M.T','Workshop \"Writing Interest Upgrading: Strategi Publikasi Karya Ilmiah\"',2017,'Lokal',''),
(50,'Mujib Ridwan, M.T','Kursus: General English for adults level 2 di IALF Surabaya',2015,'Lokal',''),
(51,'Mujib Ridwan, M.T','Presenter BEST ICON 2018',2018,'Internasional',''),
(52,'Yusuf Amrozim MMT','Dosen Terbaik Prodi Sistem Informasi',2016,'Lokal',''),
(53,'Yusuf Amrozi, MMT','Penerimaan Bantuan Penelitian LPPM UINSA',2015,'Lokal',''),
(54,'Mujib Ridwan, M.T','Pemateri Seminar Nasional: ASWAJA dan Polemik Kemanusiaan di Auditorium MA Nurul Jadid',2019,'Nasional',''),
(55,'Moch. Yasin','presenter di International Conference on Record Library',2019,'Internasional',''),
(56,'Indri Sudanawati Rozas, M.Kom','Penyuluhan gadget warning system di SMP 62',2019,'',''),
(57,'Indri Sudanawati Rozas, M.Kom','presenter di International Conference on Social Science',2019,'Internasional','');

/*Table structure for table `tabel_4_5_5` */

CREATE TABLE `tabel_4_5_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `tahun_awal` int(4) NOT NULL,
  `tahun_akhir` int(4) NOT NULL,
  `tingkat` varchar(16) NOT NULL,
  `url_organisasi` varchar(512) NOT NULL,
  `url_bukti` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tingkat_organisasi_dosen_tetap` (`tingkat`),
  CONSTRAINT `tingkat_kegiatan_4_5_5` FOREIGN KEY (`tingkat`) REFERENCES `tingkat_kegiatan` (`tingkat`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_5` */

insert  into `tabel_4_5_5`(`id`,`nama_dosen`,`organisasi`,`tahun_awal`,`tahun_akhir`,`tingkat`,`url_organisasi`,`url_bukti`) values 
(1,'Achmad Teguh Wibowo','ADRI',2016,2019,'Nasional','',''),
(2,'Ahmad Yusuf','APTIKOM',2015,2019,'Nasional','',''),
(3,'Anang Kunaefi','AISINDO',2015,2019,'Nasional','',''),
(4,'Anang Kunaefi','APTIKOM',2016,2019,'Nasional','',''),
(5,'Andik Izzudin, M.T','Oracle Academy members',2015,2019,'Internasional','',''),
(6,'Bayu Adhi Nugroho, M.Kom','AISINDO',2015,2019,'Nasional','',''),
(7,'Bayu Adhi Nugroho, M.Kom','APTIKOM',2015,2019,'Nasional','',''),
(8,'Dwi Rolliawati','APTIKOM',2014,2019,'Nasional','',''),
(9,'Faris Mushlihul Amin, M.Kom','ADRI',2015,2019,'Nasional','',''),
(10,'Ilham M.Kom','AISINDO',2015,2019,'Nasional','',''),
(11,'Ilham M.Kom','APTIKOM',2013,2019,'Nasional','',''),
(12,'Indri Sudanawati Rozas, M.Kom','AISINDO',2015,2019,'Nasional','',''),
(13,'Khalid, M.Kom','AISINDO',2015,2019,'Nasional','',''),
(14,'Khalid, M.Kom','APTIKOM',2013,2019,'Nasional','',''),
(15,'Khalid, M.Kom','Oracle Academy members',2015,2019,'Internasional','',''),
(16,'Mujib Ridwan, M.T','ADRI',2016,2019,'Nasional','',''),
(17,'Mujib Ridwan, M.T','APTIKOM',2015,2019,'Nasional','',''),
(18,'Yusuf Amrozi','ADRI',2015,2019,'Nasional','',''),
(19,'Yusuf Amrozi','AISINDO',2015,2019,'Nasional','','');

/*Table structure for table `tabel_4_6_1` */

CREATE TABLE `tabel_4_6_1` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `jenis_tk` varchar(50) NOT NULL,
  `S3` int(11) NOT NULL DEFAULT '0',
  `S2` int(11) NOT NULL DEFAULT '0',
  `S1` int(11) NOT NULL DEFAULT '0',
  `D4` int(11) NOT NULL DEFAULT '0',
  `D3` int(11) NOT NULL DEFAULT '0',
  `D2` int(11) NOT NULL DEFAULT '0',
  `D1` int(11) NOT NULL DEFAULT '0',
  `SMA_SMK` int(11) NOT NULL DEFAULT '0',
  `unit` varchar(64) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_6_1` */

insert  into `tabel_4_6_1`(`id`,`jenis_tk`,`S3`,`S2`,`S1`,`D4`,`D3`,`D2`,`D1`,`SMA_SMK`,`unit`) values 
(1,'Pustakawan',0,6,6,0,0,0,0,0,'Perpustakaan'),
(2,'Laboran/ Teknisi/ Analis/ Operator/ Programer',0,2,6,1,1,0,0,0,'Fakultas Sains dan Teknologi/ UIN Sunan Ampel Surabaya'),
(3,'Administrasi',0,6,1,0,0,0,0,2,'Fakultas Sains dan Teknologi'),
(4,'Lainnya',0,0,0,0,0,0,0,0,'0');

/*Table structure for table `tabel_4_6_1_ltk` */

CREATE TABLE `tabel_4_6_1_ltk` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis` tinyint(1) NOT NULL,
  `pendidikan` char(3) NOT NULL,
  `nip` varchar(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `jabatan` varchar(50) NOT NULL,
  `status` varchar(50) NOT NULL,
  `unit` varchar(50) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jabatan_4_6_1_ltk` (`jabatan`),
  KEY `status_4_6_1_ltk` (`status`),
  KEY `unit_4_6_1_ltk` (`unit`),
  KEY `jenis_4_6_1_ltk` (`jenis`),
  KEY `pend_4_6_1_ltk` (`pendidikan`),
  CONSTRAINT `jabatan_4_6_1_ltk` FOREIGN KEY (`jabatan`) REFERENCES `jabatan_tk` (`jabatan`) ON UPDATE CASCADE,
  CONSTRAINT `jenis_4_6_1_ltk` FOREIGN KEY (`jenis`) REFERENCES `tabel_4_6_1` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `pend_4_6_1_ltk` FOREIGN KEY (`pendidikan`) REFERENCES `pendidikan` (`pendidikan`) ON UPDATE CASCADE,
  CONSTRAINT `status_4_6_1_ltk` FOREIGN KEY (`status`) REFERENCES `status_tk` (`status`) ON UPDATE CASCADE,
  CONSTRAINT `unit_4_6_1_ltk` FOREIGN KEY (`unit`) REFERENCES `unit_tk` (`unit`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_6_1_ltk` */

/*Table structure for table `tabel_5_1_1` */

CREATE TABLE `tabel_5_1_1` (
  `kode` char(5) NOT NULL,
  `parent` varchar(16) NOT NULL,
  `uraian` varchar(512) NOT NULL,
  PRIMARY KEY (`kode`,`parent`),
  KEY `parent_5_1` (`parent`),
  CONSTRAINT `parent_5_1` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_1` */

insert  into `tabel_5_1_1`(`kode`,`parent`,`uraian`) values 
('KK-01','5.1.1.1.2','Memiliki kemampuan dalam merancang, membuat, menguji, mengevaluasi, membuat aturan bisnis, hingga menyiapkan sumber daya pendukung sistem informasi agar tujuan/ permasalahan bisnis organisasi dapat tercapai/diselesaikan secara arif, efektif dan efisien melalui bantuan Sistem Informasi'),
('KK-01','5.1.1.3','Memiliki kemampuan dalam merancang, membuat, menguji, mengevaluasi, membuat aturan bisnis, hingga menyiapkan sumber daya pendukung sistem informasi agar tujuan/ permasalahan bisnis organisasi dapat tercapai/diselesaikan secara arif, efektif dan efisien melalui bantuan Sistem Informasi'),
('KK-02','5.1.1.1.2','Memiliki kemampuan dalam merancang, membangun, menyediakan, mengolah dan menganalisa data secara profesional untuk menghasilkan informasi dan pengetahuan.'),
('KK-02','5.1.1.3','Memiliki kemampuan dalam merancang, membangun, menyediakan, mengolah dan menganalisa data secara profesional untuk menghasilkan informasi dan pengetahuan.'),
('KK-03','5.1.1.3','Memiliki kemampuan dalam supervisi, evaluasi dan konsultasi solusi teknologi informasi, serta integrasi berbagai proses bisnis yang difasilitasi dengan SI/T termasuk di level enterprise.'),
('KK-04','5.1.1.3','Memiliki kemampuan sebagai agent of change dalam menerapkan pengetahuan dan ketrampilan berkomunikasi, manajerial, dan internet marketing.'),
('KU-01','5.1.1.1.1','Mampu menerapkan pemikiran logis, kritis, sistematis, dan inovatif dalam konteks pengembangan atau implementasi ilmu pengetahuan dan teknologi yang memperhatikan dan menerapkan nilai humaniora yang sesuai dengan bidang keahliannya;'),
('KU-03','5.1.1.1.1','Mampu mengkaji implikasi pengembangan atau implementasi ilmu pengetahuan teknologi yang memperhatikan dan menerapkan nilai humaniora sesuai dengan keahliannya berdasarkan kaidah, tata cara dan etika ilmiah dalam rangka menghasilkan solusi, gagasan, desain atau kritik seni, menyusun deskripsi saintifik hasil kajiannya dalam bentuk skripsi atau laporan tugas akhir, dan mengunggahnya dalam laman perguruan tinggi.'),
('KU-04','5.1.1.1.1','Menyusun deskripsi saintifik hasil kajian tersebut di atas dalam bentuk skripsi atau laporan tugas akhir, dan mengunggahnya dalam laman perguruan tinggi.'),
('KU-05','5.1.1.1.1','Mampu mengambil keputusan secara tepat dalam konteks penyelesaian masalah di bidang keahliannya, berdasarkan hasil analisis informasi dan data.'),
('KU-06','5.1.1.1.1','Mampu memelihara dan mengembangkan jaringan kerja dengan pembimbing, kolega, sejawat baik di dalam maupun di luar lembaganya. '),
('KU-07','5.1.1.1.1','Mampu bertanggungjawab atas pencapaian hasil kerja kelompok dan melakukan supervisi dan evaluasi terhadap penyelesaian pekerjaan yang ditugaskan kepada pekerja yang berada di bawah tanggungjawabnya.'),
('KU-08','5.1.1.1.1','Mampu melakukan proses evaluasi diri terhadap kelompok kerja yang berada dibawah tanggung jawabnya, dan mampu mengelola pembelajaran secara mandiri.'),
('KU-09','5.1.1.1.1','Mampu mendokumentasikan, menyimpan, mengamankan, dan menemukan kembali data untuk menjamin kesahihan dan mencegah plagiasi.'),
('KU-10','5.1.1.1.1','Memiliki etos kerja yang berbasis mutu dan integritas yang didasari keikhlasan karena Allah'),
('KU-11','5.1.1.1.1','Memiliki kemampuan untuk menjadi tenaga professional untuk pengolahan basis data, rekayasa perangkat lunak, jaringan komputer, komputer grafis, dan aplikasi multimedia serta memiliki kemampuan menulis laporan penelitian dengan baik serta mengelola proyek Sistem Informasi, mempresentasikan karya tersebut.'),
('KU-12','5.1.1.1.1','Memiliki keterampilan dalam memahami dan membuat model proses dan model data organisasi, mendefinisikan dan menerapkan solusi dan proses secara teknis, mengelola proyek, dan mengintegrasikan sistem dalam organisasi'),
('KU-13','5.1.1.1.1','Mampu melakukan analisis & desain dengan menggunakan kaidah rekayasa software dan hardware serta algorithma dengan cara menggunakan tools dan dapat menunjukkan hasil dan kondisi yang maksimal untuk aplikasi bisnis.'),
('KU-14','5.1.1.1.1','Memiliki kecakapan hidup level 1 program S-1 Sistem Informasi\r'),
('P-01','5.1.1.2.1','Mempunyai pengetahuan dalam penyusunan algorithma pemrograman yang efektif dan efisien serta dapat merancang, membangun dan mengelola aplikasi sistem informasi secara tepat dan akurat untuk pendukung pengambilan keputusan.'),
('P-02','5.1.1.2.1','Menguasai konsep teoritis yang mengkaji, menerapkan dan mengembangkan serta mampu memformulasikan dan mampu mengambil keputusan yang tepat dalam penyelesaian masalah'),
('P-03','5.1.1.2.1','Menguasai konsep teoritis bidang pengetahuan Sistem Informasi secara umum dan konsep teoritis bagian khusus dalam bidang pengetahuan tersebut secara mendalam, serta mampu memformulasikan penyelesaian masalah prosedural'),
('P-04','5.1.1.2.1','Memiliki pengetahuan sesuai capaian pembelajaran spesifik prodi Sistem Informasi '),
('P-05','5.1.1.2.1','Memahami prinsip kewirausahaan untuk mengembangkan bisnis di bidang IT (technopreneur) dengan berprinsip pada nilai-nilai Islam.'),
('P-06','5.1.1.2.1','Menguasai sumber-sumber ilmu agama islam , metode pendekatan integratif studi islam , sains dan humaniora serta mengaplikasikannya dalam menyelesaikan masalah-masalah kontekstual dalam kehidupan nyata'),
('S-01','5.1.1.2.2','Bertakwa kepada Tuhan Yang Maha Esa dan mampu menunjukkan sikap religius; dengan menerima, menghayati, mengolah, menalar dan mengamalkan keseimbangan dzikir dan pikir terhadap nilai-nilai Islam serta nilai-nilai kearifan lokal Indonesia'),
('S-02','5.1.1.2.2','Menjunjung tinggi nilai kemanusiaan dalam menjalankan tugas berdasarkan agama, moral, dan etika, menunjukkan kedewasaan bersikap seperti jujur, disiplin, bertanggungjawab, peduli, santun, '),
('S-03','5.1.1.2.2','Berkontribusi dalam peningkatan mutu kehidupan bermasyarakat, berbangsa, bernegara, dan kemajuan peradaban berdasarkan Pancasila; solutif atas berbagai masalah baik dengan lingkungan atau alam.'),
('S-04','5.1.1.2.2','Berperan sebagai warga negara yang bangga dan cinta tanah air, memiliki nasionalisme serta rasa tanggungjawab pada negara dan bangsa; serta menjadi teladan dan cerminan bangsa dalam pergaulan internasional'),
('S-05','5.1.1.2.2','Menghargai keanekaragaman budaya, pandangan, agama, dan kepercayaan, serta pendapat atau temuan orisinal orang lain;'),
('S-06','5.1.1.2.2','Bekerja sama dan memiliki kepekaan sosial serta kepedulian terhadap masyarakat dan lingkungan;'),
('S-07','5.1.1.2.2','Taat hukum dan disiplin dalam kehidupan bermasyarakat dan bernegara;'),
('S-08','5.1.1.2.2','Menginternalisasi nilai, norma, dan etika akademik;\r'),
('S-09','5.1.1.2.2','menunjukkan sikap bertanggungjawab atas pekerjaan dibidang keahliannya secara mandiri;'),
('S-10','5.1.1.2.2','Menginternalisasi semangat kemandirian, kejuangan, dan kewirausahaan'),
('S-11','5.1.1.2.2','Menerima, menghayati, mengolah, menalar dan mengamalkan keseimbangan dzikir dan pikir terhadap nilai-nilai Islam serta nilai-nilai kearifan lokal Indonesia'),
('S-12','5.1.1.2.2','Menunjukkan kedewasaan bersikap seperti jujur, disiplin, bertanggungjawab, peduli, santun, solutif atas berbagai masalah baik dengan lingkungan atau alam, serta menjadi teladan dan cerminan bangsa dalam pergaulan internasional');

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
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_2_1_sjmk` */

insert  into `tabel_5_1_2_1_sjmk`(`id`,`jenis`,`sub_jenis`,`sks`) values 
(1,1,'Mata Kuliah Kompetensi Dasar',26),
(2,1,'Mata Kuliah Kompetensi Utama',91),
(3,1,'Mata Kuliah Kompetensi Pendukung',31),
(4,1,'Mata Kuliah Kompetensi Lainnya',0),
(5,2,'Mata Kuliah Pilihan',48);

/*Table structure for table `tabel_5_1_2_2` */

CREATE TABLE `tabel_5_1_2_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smt` tinyint(4) NOT NULL,
  `kode_mk` char(8) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` tinyint(4) NOT NULL DEFAULT '0',
  `mk_inti` tinyint(4) NOT NULL DEFAULT '1',
  `tugas` tinyint(4) NOT NULL DEFAULT '0',
  `desk` tinyint(1) NOT NULL DEFAULT '0',
  `sil` tinyint(1) NOT NULL DEFAULT '0',
  `sap` tinyint(1) NOT NULL DEFAULT '0',
  `url_desk` varchar(512) NOT NULL,
  `url_sil` varchar(512) NOT NULL,
  `url_sap` varchar(512) NOT NULL,
  `unit` varchar(32) NOT NULL,
  `sub_jenis` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `subjenis_mk` (`sub_jenis`),
  KEY `unit_mk_kurikulum` (`unit`),
  CONSTRAINT `subjenis_mk` FOREIGN KEY (`sub_jenis`) REFERENCES `tabel_5_1_2_1_sjmk` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `unit_mk_kurikulum` FOREIGN KEY (`unit`) REFERENCES `unit_mk` (`unit`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_2_2` */

insert  into `tabel_5_1_2_2`(`id`,`smt`,`kode_mk`,`nama_mk`,`sks`,`mk_inti`,`tugas`,`desk`,`sil`,`sap`,`url_desk`,`url_sil`,`url_sap`,`unit`,`sub_jenis`) values 
(1,1,'A0016001','Bahasa Indonesia',3,0,0,1,1,1,'','','','Universitas',NULL),
(2,1,'A0016002','IAD/IBD/ISD',3,0,0,1,1,1,'','','','Universitas',NULL),
(3,1,'A0016003','Pancasila dan Kewarganegaraan',3,0,0,1,1,1,'','','','Universitas',NULL),
(4,1,'A0016004','Pengantar Studi Islam',3,0,0,1,1,1,'','','','Universitas',NULL),
(5,1,'BH616007','Algoritma & Pemrograman',3,1,1,1,1,1,'','','','Program Studi',NULL),
(6,1,'BH616008','Manajemen dan Organisasi',3,0,1,1,1,1,'','','','Program Studi',NULL),
(7,1,'BH616009','Pengantar Teknologi Informasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(8,2,'A0016005','Studi Hadis',3,0,0,1,1,1,'','','','Universitas',NULL),
(9,2,'A0016006','Studi al Qur`an',3,0,0,1,1,1,'','','','Universitas',NULL),
(10,2,'BH616016','Kalkulus dan Aljabar Linear',3,1,1,1,1,1,'','','','Program Studi',NULL),
(11,2,'BH616020','Konsep Sistem Informasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(12,2,'BH616033','Pengantar Basis Data',3,1,1,1,1,1,'','','','Program Studi',NULL),
(13,2,'BH616044','Statistika',3,1,1,1,1,1,'','','','Program Studi',NULL),
(14,2,'BH616046','Teknik Pemrograman',4,1,1,1,1,1,'','','','Program Studi',NULL),
(15,3,'BH616011','Desain Basis Data + Prakt',4,1,1,1,1,1,'','','','Program Studi',NULL),
(16,3,'BH616028','Manajemen Sains',3,1,1,1,1,1,'','','','Program Studi',NULL),
(17,3,'BH616031','Pemrog. Berorientasi Obyek + Prakt',4,1,1,1,1,1,'','','','Program Studi',NULL),
(18,3,'BH616040','Rekayasa Perangkat Lunak',3,1,1,1,1,1,'','','','Program Studi',NULL),
(19,3,'BH616042','Sistem Informasi Manajemen',3,1,1,1,1,1,'','','','Program Studi',NULL),
(20,3,'BH616043','Sistem Operasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(21,4,'BH616010','Analisa & Perancangan SI',3,1,1,1,1,1,'','','','Program Studi',NULL),
(22,4,'BH616014','Interaksi Manusia & Komputer',3,1,1,1,1,1,'','','','Program Studi',NULL),
(23,4,'BH616015','Jaringan Keamanan Komputer',4,1,1,1,1,1,'','','','Program Studi',NULL),
(24,4,'BH616021','Manajemen & Administrasi Basis Data',3,1,1,1,1,1,'','','','Program Studi',NULL),
(25,4,'BH616024','Manajemen Proses Bisnis',3,1,1,1,1,1,'','','','Program Studi',NULL),
(26,4,'BH616032','Pemrograman Web',4,1,1,1,1,1,'','','','Program Studi',NULL),
(27,5,'BH616012','Enterprise Architect',3,1,1,1,1,1,'','','','Program Studi',NULL),
(28,5,'BH616019','Komunikasi Interpersonal',2,1,1,1,1,1,'','','','Program Studi',NULL),
(29,5,'BH616022','Manajemen Hub. Pelanggan',3,1,1,1,1,1,'','','','Program Studi',NULL),
(30,5,'BH616025','Manajemen Proyek SI',3,1,1,1,1,1,'','','','Program Studi',NULL),
(31,5,'BH616026','Manajemen Rantai Pasok',3,1,1,1,1,1,'','','','Program Studi',NULL),
(32,5,'BH616030','Pemodelan dan Simulasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(33,5,'BH616034','Pengembangan dan Implementasi SI',3,1,1,1,1,1,'','','','Program Studi',NULL),
(34,6,'BH616013','Etika Profesi',2,0,0,1,1,1,'','','','Program Studi',NULL),
(35,6,'BH616017','Kerja Praktek',3,0,0,1,0,0,'','','','Program Studi',NULL),
(36,6,'BH616029','Metodologi Penelitian',3,0,1,1,1,1,'','','','Program Studi',NULL),
(37,6,'BH616035','Pengujian Sistem Informasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(38,6,'BH616039','Proteksi Aset Informasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(39,6,'BH616041','Sistem Cerdas',3,1,1,1,1,1,'','','','Program Studi',NULL),
(40,6,'BH616045','Tata Kelola IT',3,1,1,1,1,1,'','','','Program Studi',NULL),
(41,7,'BH616018','Kuliah Kerja Nyata (KKN)',4,0,0,1,0,0,'','','','Universitas',NULL),
(42,7,'BH616023','Manajemen Investasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(43,7,'BH616027','Manajemen Resiko',3,1,1,1,1,1,'','','','Program Studi',NULL),
(44,7,'BH616036','Perenc. Sumber Daya Perush.',3,1,1,1,1,1,'','','','Program Studi',NULL),
(45,7,'BH616037','Perencanaan Strategis SI',3,1,1,1,1,1,'','','','Program Studi',NULL),
(46,8,'BH616047','Teknopreneurship',3,1,1,1,1,1,'','','','Program Studi',NULL),
(47,8,'BH616048','Tugas Akhir/Skripsi',6,0,0,1,0,0,'','','','Program Studi',NULL);

/*Table structure for table `tabel_5_1_3` */

CREATE TABLE `tabel_5_1_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `smt` tinyint(1) NOT NULL,
  `kode_mk` char(8) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `sks` tinyint(1) NOT NULL DEFAULT '0',
  `tugas` tinyint(1) NOT NULL DEFAULT '0',
  `unit` varchar(32) NOT NULL DEFAULT '1',
  `sub_jenis` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_jenis_mk_pil` (`sub_jenis`),
  KEY `unit_mk_pil` (`unit`),
  CONSTRAINT `sub_jenis_mk_pil` FOREIGN KEY (`sub_jenis`) REFERENCES `tabel_5_1_2_1_sjmk` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `unit_mk_pil` FOREIGN KEY (`unit`) REFERENCES `unit_mk` (`unit`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_3` */

insert  into `tabel_5_1_3`(`id`,`smt`,`kode_mk`,`nama_mk`,`sks`,`tugas`,`unit`,`sub_jenis`) values 
(1,6,'CH616049','Mobile Technology',3,1,'Program Studi',NULL),
(2,6,'CH616050','Pengemb. Aplikasi Berbasis Web',3,1,'Program Studi',NULL),
(3,6,'CH616051','Audit IT',3,1,'Program Studi',NULL),
(4,6,'CH616052','Data Warehouse',3,1,'Program Studi',NULL),
(5,6,'CH616053','Sistem Temu Kembali Informasi',3,1,'Program Studi',NULL),
(6,6,'CH616056','Digital Forensik',3,1,'Program Studi',NULL),
(7,7,'CH616060','E-Government',3,1,'Program Studi',NULL),
(8,7,'CH616063','Sistem Informasi Akuntansi',3,1,'Program Studi',NULL),
(9,7,'CH616054','Sistem Informasi Geografis',3,1,'Program Studi',NULL),
(10,7,'CH616055','Manajemen Layanan TI',3,1,'Program Studi',NULL),
(11,7,'CH616057','Socio Informatics',3,1,'Program Studi',NULL),
(12,7,'CH616058','Integrasi Aplikasi Korporasi',3,1,'Program Studi',NULL),
(13,7,'CH616059','Bisnis Cerdas',3,1,'Program Studi',NULL),
(14,7,'CH616061','Teknik Peramalan',3,1,'Program Studi',NULL),
(15,7,'CH616062','Sistem Pendukung Keputusan',3,1,'Program Studi',NULL),
(16,7,'CH616064','Data Mining',3,1,'Program Studi',NULL);

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
  `status_mk` varchar(5) NOT NULL,
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
(''),
('Internasional'),
('Lokal'),
('Nasional'),
('Regional'),
('Wilayah');

/*Table structure for table `unit_mk` */

CREATE TABLE `unit_mk` (
  `unit` varchar(32) NOT NULL,
  PRIMARY KEY (`unit`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `unit_mk` */

insert  into `unit_mk`(`unit`) values 
('Fakultas'),
('Jurusan'),
('Program Studi'),
('Universitas');

/*Table structure for table `unit_tk` */

CREATE TABLE `unit_tk` (
  `unit` varchar(50) NOT NULL,
  PRIMARY KEY (`unit`)
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
