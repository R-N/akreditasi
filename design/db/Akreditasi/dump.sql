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
  `url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_dokumen_pendukung` (`parent`),
  CONSTRAINT `parent_dokumen_pendukung` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=55 DEFAULT CHARSET=latin1;

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
(28,'4.3.2',1,'Fotokopi ijazah dan sertifikat pendidik dosen tetap yang bidang keahliannya di luar bidang PS.','https://drive.google.com/open?id=1zBxfjPZ_CaorSbmmMo5Tpj56FshXZmec'),
(29,'4.4.1',1,'Fotokopi ijazah dan sertifikat pendidik dosen tidak tetap.',''),
(30,'4.5.3',1,'Bukti kegiatan dosen tetap dalam seminar ilmiah/ lokakarya/ penataran/ workshop/ pagelaran/pameran/peragaan.','https://drive.google.com/open?id=1cHLw85ZNxfyehcZJiLG-61CRSFPKMZOb'),
(31,'4.5.4',1,'Bukti pencapaian prestasi/reputasi dosen.','https://drive.google.com/open?id=1NFRg9Z7HzJZ1G3UxqEMlTMab9h4ArGCm'),
(32,'4.5.5',1,'Fotocopi bukti keikutsertaan dosen tetap dalam organisasi keilmuan/profesi.','https://drive.google.com/open?id=1TKwySoItfnOPmv0ZzXUvrSBTE75dsdL6'),
(33,'4.6.1',1,'Fotokopi ijazah dan sertifikat tenaga kependidikan.','https://drive.google.com/open?id=1HTLflHyb2pOQN77ILRfzUgENZ6BsqA_h'),
(34,'5.1.2.2',1,'Silabus dan SAP tiap mata kuliah.','https://drive.google.com/open?id=1z7AwH4Aio9a3oAs8WiNhzCAG4I772PRp'),
(35,'5.1.4',1,'Modul praktikum/praktek untuk setiap kegiatan praktikum/praktek.','https://drive.google.com/open?id=1IyjFRwfix8ZZ7PAWotb5NsioY-PayYjd'),
(36,'5.2',1,'Dokumen pendukung kegiatan peninjauan kurikulum.','https://drive.google.com/open?id=1cBl_pr_RvcDITIPlraHY0MotcOpQ4DcQ'),
(37,'5.3.1',1,'Dokumen pendukung monitoring perkuliahan.','https://esr.uinsby.ac.id/'),
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
(52,'3.1.3',1,'Bukti prestasi*',''),
(54,'5.1.3',1,'Silabus dan SAP tiap mata kuliah pilihan.','https://drive.google.com/open?id=1Xd0jNM4ebO-jsz-2XAuVkmOC7lc15a-V');

/*Table structure for table `dosen` */

CREATE TABLE `dosen` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama` varchar(50) NOT NULL,
  `nidn` char(10) DEFAULT NULL,
  `id_lecturer` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=20 DEFAULT CHARSET=latin1;

/*Data for the table `dosen` */

insert  into `dosen`(`id`,`nama`,`nidn`,`id_lecturer`) values 
(1,'Achmad Teguh Wibowo','2026108801',0),
(2,'Ahmad Yusuf','2020019001',0),
(3,'Anang Kunaefi','2013117902',0),
(4,'Asep Saepul  Hamdani','2031076501',0),
(5,'Bayu Adhi Nugroho','0718057902',0),
(6,'Dwi Rolliawati','2027097901',0),
(7,'Faris Muslihul Amin','9907146569',0),
(8,'Ilham','0708118003',0),
(9,'Imas Maesaroh','2014056601',0),
(10,'Indri Sudanawati Rozas','2021078201',0),
(11,'Khalid','2009067902',0),
(12,'Kusaeri','2006077202',0),
(13,'Moch. Yasin','2030088801',0),
(14,'Muhammad Andik Izzuddin','2007038402',0),
(15,'Mujib Ridwan','2027048602',0),
(16,'Yusuf Amrozi','2003077601',0),
(17,'Titik Triwulan Tutik','2029036801',0),
(18,'Asep Abbas Abdullah','2229076301',0),
(19,'Evi Fatimatur Rusdiyah',NULL,0);

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
('Asisten Ahli'),
('Guru Besar'),
('Lektor'),
('Lektor Kepala');

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
  `no` tinyint(1) NOT NULL,
  PRIMARY KEY (`jenis`),
  UNIQUE KEY `UNIQUE_NO_JJ` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `jenis_jurnal` */

insert  into `jenis_jurnal`(`jenis`,`no`) values 
('Jurnal Terakreditasi DIKTI',1),
('Jurnal Internasional',2);

/*Table structure for table `laboratorium` */

CREATE TABLE `laboratorium` (
  `laboratorium` varchar(50) NOT NULL,
  `no` tinyint(1) NOT NULL,
  PRIMARY KEY (`laboratorium`),
  UNIQUE KEY `UNIQUE_NO_L` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `laboratorium` */

insert  into `laboratorium`(`laboratorium`,`no`) values 
('Laboratorium Komputer',1),
('Laboratorium Tata Kelola',2),
('Laboratorium Sistem Cerdas',3),
('Laboratorium Teknologi',4),
('Laboratorium Jaringan dan Hardware',5);

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
  `no` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`sumber_dana`),
  UNIQUE KEY `UNIQUE_NO` (`no`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `sumber_dana` */

insert  into `sumber_dana`(`sumber_dana`,`no`) values 
('PT Sendiri',1),
('Yayasan',2),
('Diknas',3),
('Sumber Lain',4);

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
('Luar PT'),
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
(3,'EDNA GENESIS Young Moslem EntrepreneurCompetition 2016','Lokal','Grand Finalis',''),
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
(1,'Integritas (etika dan moral)',87,13,0,0,'Etika mahasiswa akan diperkuat kembali melalui perkuliahan etika profesi'),
(2,'Keahlian berdasarkan bidang ilmu (profesionalisme)',70,30,0,0,'Keahlian sudah cukup baik akan dievaluasi kesesuaian dengan pekerjaan yang dilakukan'),
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
(1,'Achmad Teguh Wibowo','2026108801','1988-10-20','Lektor',1,'S.Kom','STIKOM Surabaya','Sistem Informasi','M.T','Univ. Brawijaya Malang','Teknik Elektro','','','',NULL,'',NULL,NULL),
(2,'Ahmad Yusuf','2020019001','1990-01-20','Asisten Ahli',1,'S.Kom','ITS Surabaya','Teknik Informatika','M.Kom','ITS Surabaya','Teknik Informatika','','','',NULL,'',NULL,NULL),
(3,'Anang Kunaefi','2013117902','1979-11-13','Asisten Ahli',1,'S.Kom','ITS Surabaya','Teknik Informatika','M.Kom','ITS Surabaya','Teknik Informatika','','','',NULL,'',NULL,NULL),
(4,'Asep Saepul  Hamdani','2031076501','1965-07-31','Lektor Kepala',1,'Drs.\r','Univ. Muhammadiyah Surabaya','Pendidikan Matematika','M.Pd.','IKIP Surabaya','Pendidikan Matematika','Dr','Univ. Negeri Surabaya','Pendidikan Matematika',NULL,'',NULL,NULL),
(5,'Bayu Adhi Nugroho','0718057902','1975-05-18','Asisten Ahli',1,'S.T.\r','UGM Jogjakarta','Sistem Komputer Informatika  ','M.Kom','ITS Surabaya','Teknik Informatika','','','',NULL,'',NULL,NULL),
(6,'Dwi Rolliawati','2027097901','1979-09-27','Lektor',1,'S.T.\r','ITATS Surabaya','Teknik Informatika','M.T','ITS Surabaya','Teknik Elektro','','','',NULL,'',NULL,NULL),
(7,'Faris Muslihul Amin','9907146569','1988-08-13','Lektor',1,'S.Kom','STT Nurul Jadid Probolinggo','Teknik Informatika','M.Kom','UDINUS Semarang','Teknik Informatika','','','',NULL,'',NULL,NULL),
(8,'Ilham','0708118003','1980-11-08','Lektor',1,'S.Kom','UGM Jogjakarta','Ilmu Komputer','M.Kom','ITS Surabaya','Teknik Informatika','','','',NULL,'',NULL,NULL),
(9,'Imas Maesaroh','2014056601','1966-05-14','Lektor Kepala',1,'Dra','Institut Agama Islam Negeri (IAIN) Walisongo','Penyiaran dan Penerangan Agama Islam','M.Lib','University of New South Wales','School of Information, Library, and Archive Studies','Ph.D\r','Curtin University','Media and Information',NULL,'',NULL,NULL),
(10,'Indri Sudanawati Rozas','2021078201','1982-07-21','Lektor',1,'S.Kom','IPB Bogor','Ilmu Komputer','M.Kom','ITS Surabaya','Teknik Informatika','','','',NULL,'',NULL,NULL),
(11,'Khalid','2009067902','1979-06-09','Asisten Ahli',1,'S.Kom','ITS Surabaya','Teknik Informatika','M.Kom','ITS Surabaya','Teknik Informatika','','','',NULL,'',NULL,NULL),
(12,'Kusaeri','2006077202','1972-07-06','Lektor Kepala',1,'S.Pd\r','IKIP Negeri Malang','Pendidikan Matematika','M.Pd.','Univ. Negeri Surabaya','Pendidikan Matematika','Dr','Univ. Negeri Yogyakarta','Penelitian dan Evaluasi Pendidikan',NULL,'',NULL,NULL),
(13,'Moch. Yasin','2030088801','1988-08-30','Lektor',1,'S.Kom','ITS Surabaya','Sistem Informasi','M.Kom','ITS Surabaya; NTUST Taiwan','Sistem Informasi; Industrial Management','','','',NULL,'',NULL,NULL),
(14,'Muhammad Andik Izzuddin','2007038402','1984-03-07','Lektor',1,'S.T.\r','Univ. Negeri Malang','Pendidikan Teknik Informatika','M.T','ITB Bandung','Teknik Media Digital dan Game ','','','',NULL,'',NULL,NULL),
(15,'Mujib Ridwan','2027048602','1986-04-27','Lektor',1,'S.Kom','UIN Maulana Malik Ibrahim Malang ','Teknik Informatika','M.T','Univ. Brawijaya Malang','Teknik Elektro','','','',NULL,'',NULL,NULL),
(16,'Yusuf Amrozi','2003077601','1976-07-03','Lektor',1,'S.T.\r','UNISMA Malang','Teknik Elektro','M.MT\r','ITS Surabaya','Manajemen Teknologi Informasi','','','',NULL,'',NULL,NULL);

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
(1,'Titik Triwulan Tutik','2029036801','1968-03-29','Guru Besar',1,'Universitas Dr. Soetomo','Ilmu Hukum','SH','Universitas Airlangga','Ilmu Hukum','MH','Universitas Airlangga','Ilmu Hukum','Dr.',NULL,'',NULL,NULL),
(2,'Asep Abbas Abdullah','2229076301','1963-07-29','Lektor Kepala',1,'Universitas Padjadjaran Bandung','Bahasa dan Sastra Arab','Drs.\r','Universitas Surabaya','Pendidikan Bahasa dan Sastra','M.Pd.','Universitas Sebelas Maret','Linguistik','Dr.',NULL,'',NULL,NULL);

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
(1,'Achmad Teguh Wibowo',8.000,0.000,0.000,4.000,0.700,0.000,0.000),
(2,'Ahmad Yusuf',8.000,0.000,0.000,3.000,1.000,0.000,0.000),
(3,'Anang Kunaefi',6.000,0.000,0.000,2.500,0.750,4.000,0.000),
(4,'Asep Saepul  Hamdani',3.000,4.000,0.000,1.500,0.700,6.000,0.000),
(5,'Bayu Adhi Nugroho',12.000,0.000,0.000,0.000,0.000,0.000,0.000),
(6,'Dwi Rolliawati',9.000,0.000,0.000,3.000,1.750,0.000,0.000),
(7,'Faris Muslihul Amin',9.000,0.000,0.000,3.000,1.750,0.000,0.000),
(8,'Ilham',6.000,0.000,0.000,2.500,0.000,5.000,0.000),
(9,'Imas Maesaroh',3.000,6.000,0.000,3.500,0.860,0.000,0.000),
(10,'Indri Sudanawati Rozas',8.000,0.000,0.000,3.500,1.500,0.000,0.000),
(11,'Khalid',9.000,0.000,0.000,3.000,1.000,0.000,0.000),
(12,'Kusaeri',3.000,6.000,0.000,2.500,2.000,0.000,0.000),
(13,'Moch. Yasin',8.000,0.000,0.000,3.000,1.000,0.000,0.000),
(14,'Muhammad Andik Izzuddin',9.000,0.000,0.000,3.000,1.500,0.000,0.000),
(15,'Mujib Ridwan',6.000,0.000,0.000,2.000,1.500,5.000,0.000),
(16,'Yusuf Amrozi',6.000,0.000,0.000,1.525,0.750,6.000,0.000);

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
(1,'Achmad Teguh Wibowo','FH613074','Sistem Informasi Geografis',3,14,14),
(2,'Achmad Teguh Wibowo','BH616014','Interaksi Manusia & Komputer',3,14,14),
(3,'Achmad Teguh Wibowo','BH616032','Pemrograman Web',4,14,14),
(4,'Achmad Teguh Wibowo','BH616033','Pengantar Basis Data',3,14,14),
(5,'Achmad Teguh Wibowo','BH613027','Pengujian Sistem Informasi',3,14,14),
(6,'Ahmad Yusuf','BH616028','Manajemen Sains',3,14,14),
(7,'Ahmad Yusuf','BH616031','Pemrog. Berorientasi Obyek + Prakt',4,14,14),
(8,'Mujib Ridwan','BH613028','Sistem Cerdas',3,14,14),
(9,'Ahmad Yusuf','BH616019','Komunikasi Interpersonal',2,14,14),
(10,'Khalid','BH616007','Algoritma & Pemrograman',3,14,14),
(11,'Ilham','CH613043','Enterprise Architecture',3,14,14),
(12,'Khalid','BH616021','Manajemen & Administrasi Basis Data',3,14,14),
(13,'Dwi Rolliawati','CH613049','Perencanaan Strategis SI',3,14,14),
(14,'Asep Saepul  Hamdani','BH616044','Statistika',3,14,14),
(15,'Dwi Rolliawati','BH613029','Pemodelan dan Simulasi',3,14,14),
(16,'Dwi Rolliawati','BH616031','Pemrog. Berorientasi Obyek + Prakt',4,14,14),
(17,'Dwi Rolliawati','BH616014','Interaksi Manusia & Komputer',3,14,14),
(18,'Ahmad Yusuf','BH616046','Teknik Pemrograman',4,14,14),
(19,'Faris Muslihul Amin','CH613042','Manajemen Hubungan Pelanggan',3,14,14),
(20,'Faris Muslihul Amin','CH613052','Manajemen Investasi',3,14,14),
(21,'Faris Muslihul Amin','BH613026','Technopreneurship',3,14,14),
(22,'Ilham','BH616009','Pengantar Teknologi Informasi',3,14,14),
(23,'Ilham','BH616043','Sistem Operasi',3,14,14),
(24,'Ilham','CH613054','Proteksi Aset Informasi',3,14,14),
(25,'Ilham','DH613055','Etika Profesi',2,14,14),
(26,'Imas Maesaroh','BH616024','Manajemen Proses Bisnis',3,14,14),
(27,'Imas Maesaroh','BH616008','Manajemen dan Organisasi',3,14,14),
(28,'Indri Sudanawati Rozas','FH613061','Audit TI',3,14,14),
(29,'Indri Sudanawati Rozas','CH613040','Manajemen Resiko',3,14,14),
(30,'Indri Sudanawati Rozas','BH616029','Metodologi Penelitian',3,14,14),
(31,'Indri Sudanawati Rozas','CH613053','Tata Kelola TI',3,14,14),
(32,'Khalid','FH613085','Data Warehouse',3,14,14),
(33,'Khalid','BH616011','Desain Basis Data + Prakt',4,14,14),
(34,'Khalid','BH616021','Manajemen & Administrasi Basis Data',3,14,14),
(35,'Kusaeri','BH616016','Kalkulus dan Aljabar Linear',3,14,14),
(36,'Moch Yasin','FH613073','Integrasi Aplikasi Korporasi',3,14,14),
(37,'Moch Yasin','CH613033','Manajemen Rantai Pasok',3,14,14),
(38,'Moch Yasin','CH613044','Perencanaan Sumberdaya Perusahaan',3,14,14),
(39,'Moch Yasin','BH616032','Pemrograman Web',4,14,14),
(40,'Muhammad Andik Izzuddin','BH616011','Desain Basis Data + Prakt',4,14,14),
(41,'Muhammad Andik Izzuddin','FH613065','Digital Forensic',3,14,14),
(42,'Muhammad Andik Izzuddin','CH613045','Manajemen Proyek Sistem Informasi',3,14,14),
(43,'Muhammad Andik Izzuddin','BH616015','Jaringan Keamanan Komputer',4,14,14),
(44,'Muhammad Andik Izzuddin','FH613071','Mobile Technology',3,14,14),
(45,'Mujib Ridwan','CH613041','Pengembangan dan Implementasi SI',3,14,14),
(46,'Indri Sudanawati Rozas','BH616040','Rekayasa Perangkat Lunak',3,14,14),
(47,'Mujib Ridwan','FH613066','Sistem Pendukung Keputusan',3,14,14),
(48,'Mujib Ridwan','BH616010','Analisa & Perancangan SI',3,14,14),
(49,'Yusuf Amrozi','BH616042','Sistem Informasi Manajemen',3,14,14),
(50,'Yusuf Amrozi','BH616020','Konsep Sistem Informasi',3,14,14),
(51,'Yusuf Amrozi','FH613066','Sistem Pendukung Keputusan',3,14,14);

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
(1,'Prof. Dr. Titik Triwulan Tutik, SH.,MH.','A0016003','Pancasila dan Kewarganegaraan',3,14,14),
(2,'Prof. Dr. Titik Triwulan Tutik, SH.,MH.','A0016002','IAD/IBD/ISD',3,14,14),
(3,'Asep Abbas Abdullah','A0016001','Bahasa Indonesia',3,14,14);

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
(2,'Aryo Nugroho','Founder CATFIZ','Talkshow : \"Social Media Technopreneur\", Information System Festival (I-Fest 1)',2016),
(3,'Wahyudi Agustiono, P.hD ',' Universitas Trunojoyo Madura / Mentor tim solid studio pemenang 2 dunia game developer di kompetisi Imagine Cup 2013 tingkat Internasional','Talkshow : \"Youtechpreneur\", Information System Festival (I-Fest 2)',2016),
(4,'Anwar Fuadi, S.Kom','Founder None Developers, Pemenang lomba tingkat Dunia Imagine Cup di Amerika Serikat','Talkshow : \"Youtechpreneur\", Information System Festival (I-Fest 2)',2016),
(5,'Tyo Avianto','Founder Cubeacon','Talkshow : \"Youtechpreneur\", Information System Festival (I-Fest 2)',2016),
(6,'Dr. Hamidul haque ','Expert dari Senior Experten Service Jerman','Seminar \"Renewable Energy for Sustainable Development\"',2016),
(7,'Tim Inixindo','Inixindo','Pelatihan WEB programming',2016),
(8,'Tim Inixindo','Inixindo','Workshop Programming With Android',2016),
(9,'Prof. Dr. Abdul. Mujib, M.Ag., M.Si ','Dekan Psikologi UIN jakarta','Majelis Hikmah, Implementasi Integrasi Sains dan Islam',2016),
(10,'Taufik Kasturi, M.Si., Ph.D ','Dekan Psikologi UMS','Majelis Hikmah, Implementasi Integrasi Sains dan Islam',2016),
(11,'dr, Mukhtar Ikhsan, Sp.P(k),MARS ','FKUI','Majelis Hikmah, Implementasi Integrasi Sains dan Islam',2016),
(12,'Dr, Ir, Hasan Ikhwani, MSc ','ITS','Majelis Hikmah, Implementasi Integrasi Sains dan Islam',2016),
(13,'Hangga Nuarta ','Traveloka','Traveloka Digital Marketing Seminar : Search Engine Optimization',2016),
(14,'Dr. Cahyo Crysdian','UIN Maulana Malik Ibrahim, Malang','Kuliah Tamu : Virtual Reality For Field Combat Simulation and Research For University',2016),
(15,'Budi Hermawan','UPI','Kuliah Tamu IT Governance',2017),
(16,'Agus Zainal Arifin','ITS','Pembekalan Mahasiswa Baru',2018),
(17,'Prof Ali Ramdhani','UIN SGD Bandung','Penulisan publikasi ilmiah',2018),
(18,'Dr Yusuf Durrahman','UIN Jakarta','Integrasi dalam Tridharma',2018),
(19,'Achmad Holil Nur Ali','ITS','Kurikulum Sistem Informasi',2018),
(20,'Setyo Deny Hudaya','PGN','Kuliah tamu Manajemen Resiko',2017),
(21,'Prof. Hendro wicaksono','Jacobs University, Bremen, Jerman','Kuliah Tamu “Integrasi riset dalam pembelajaran menyongsong revolusi indistri 4.0.”',2019),
(22,'Dra. Dede Mia Yusantri','Lembaga Ilmu Pengetahuan Indonesia','Workshop Pembinaan Drafting Paten',2019),
(23,'Prio Adi Ramadhani, ST','Lembaga Ilmu Pengetahuan Indonesia','Workshop Pembinaan Drafting Paten',2019),
(24,'Adi Ankafia, SE','Lembaga Ilmu Pengetahuan Indonesia','Workshop Pembinaan Drafting Paten',2019),
(25,'Yunifa Miftahul A, M.T','UIN Maulana Malik Ibrahim, Malang','Membangun Serious Game Sebagai Media Digital Marketing Smart Tourism Indonesia',2019),
(26,'Dr. M.Faisal, MT','UIN Maulana Malik Ibrahim, Malang','Rancang Bangun mesin Virtual Mendeteksi Plagiasi Karya Tulis Dosen dan Mahasiswa',2019),
(27,'Prio Adi Ramadhani, ST','Lembaga Ilmu Pengetahuan Indonesia (LIPI) Jakarta','Pelatihan Drafting Paten Tingkat Lanjut ',2019),
(28,'Dr. Ahmad Taufiq, M.Si','Universitas Negeri Malang','Pelatihan Drafting Paten Tingkat Lanjut ',2019),
(29,'Ita Yukimartati, M.Si','DJKI Kemenkum HAM','Pelatihan Drafting Paten Tingkat Lanjut ',2019),
(30,'drh. Sirin Wahyu Nugroho','Ristek Dikti','Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(31,'Prof. Dr. Suwito, MA','UIN Jakarta','Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(32,'Moh. Zikky, S.ST, M.T','Politeknik Elektronika Negeri Surabaya','Workshop Peningkatan Kualitas Pembelajaran Berbasis Integrasi Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(33,'Syahiduz Zaman, M.Kom','UIN Maulana Malik Ibrahim, Malang','Strategi Pemilihan Topik Penelitian Mahasiswa Sistem Informasi',2019),
(34,'M. Ainul Yaqin, M.Kom','UIN Maulana Malik Ibrahim, Malang','Strategi Pemilihan Topik Penelitian Mahasiswa Sistem Informasi',2019),
(35,'Dr. Ary Mazharuddin Shiddiqi, S.Kom, M.Kom.Sc','ITS','Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(36,'Citrawati Dyah Kencono Wungu, dr., M.Si','Universitas Airlangga ','Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(37,'Muhammad Browijoyo Santanumurti, S.Pi, M.Sc','Universitas Airlangga ','Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(38,'Alfian Pramudita Putra, M.Sc','Universitas Airlangga ','Workshop Penyusunan Modul Praktikum Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(39,'Prof. H. Mas\'ud Said, MA. PhD','Universitas Islam Malang','FGD : Kependudukan dan Lingkungan Hidup Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(40,'H. Yenrizal Makmur, SP, MM','BKKBN','FGD : Kependudukan dan Lingkungan Hidup Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya',2019),
(41,'KH. Abdul Ghaffarrozin, M.Ed','Robithoh Maahid Islamiyah (RMI) PBNU','Simposium Nasional pondok Pesantren \"Sinergi dan Kolaborasi Pengembangan Sarana dan Prasarana Pondok Pesantren dalam Mendukung Pencapaian Sustainable ',2019),
(42,'Ruchman Basori, S.Ag, M.Ag','Direktorat Jenderal Pendidikan Islam Kementerian Agama ','Simposium Nasional pondok Pesantren \"Sinergi dan Kolaborasi Pengembangan Sarana dan Prasarana Pondok Pesantren dalam Mendukung Pencapaian Sustainable ',2019);

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
(1,'Anang Kunaefi','S3\r','Computer Science','Kumamoto Univesity','Jepang',2018,''),
(2,'Bayu Adhi Nugroho','S3\r','Computer Science','University of Western Australia','Australia',2017,''),
(3,'Moch. Yasin','S3\r','Teknik Informatika','Institut Teknologi Sepuluh Nopem','Indonesia',2018,''),
(5,'Yusuf Amrozi','S3\r','Manajemen','Universitas Airlangga','Indonesia',2016,''),
(6,'Ilham','S3\r','Manajemen','Universitas Airlangga','Indonesia',2019,''),
(7,'Achmad Teguh Wibowo','S3\r','Teknik Elektro','Institut Teknologi Sepuluh Nopem','Indonesia',2019,'');

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
(5,1,'BH616007','Algoritma & Pemrograman',3,1,1,1,1,1,'','https://drive.google.com/open?id=1FO4ztEiORo2YBBpvkZZgLM2pnuFKp7ff','','Program Studi',NULL),
(6,1,'BH616008','Manajemen dan Organisasi',3,0,1,1,1,1,'','https://drive.google.com/open?id=1dXCqjeREKVIEhSLMMGQ4SmEW4ENahmc4','','Program Studi',NULL),
(7,1,'BH616009','Pengantar Teknologi Informasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(8,2,'A0016005','Studi Hadis',3,0,0,1,1,1,'','','','Universitas',NULL),
(9,2,'A0016006','Studi al Qur`an',3,0,0,1,1,1,'','','','Universitas',NULL),
(10,2,'BH616016','Kalkulus dan Aljabar Linear',3,1,1,1,1,1,'','','','Program Studi',NULL),
(11,2,'BH616020','Konsep Sistem Informasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(12,2,'BH616033','Pengantar Basis Data',3,1,1,1,1,1,'','','','Program Studi',NULL),
(13,2,'BH616044','Statistika',3,1,1,1,1,1,'','','','Program Studi',NULL),
(14,2,'BH616046','Teknik Pemrograman',4,1,1,1,1,1,'','','','Program Studi',NULL),
(15,3,'BH616011','Desain Basis Data + Prakt',4,1,1,1,1,1,'','','','Program Studi',NULL),
(16,3,'BH616028','Manajemen Sains',3,1,1,1,1,1,'','https://drive.google.com/open?id=1ChYw7fGVOM4-2-vlEzrd5k-fZ3L30UYV','','Program Studi',NULL),
(17,3,'BH616031','Pemrog. Berorientasi Obyek + Prakt',4,1,1,1,1,1,'','https://drive.google.com/open?id=1mSZ24FiS-wdzLGwZk2GqKisojggGqOng','','Program Studi',NULL),
(18,3,'BH616040','Rekayasa Perangkat Lunak',3,1,1,1,1,1,'','https://drive.google.com/open?id=10lfs5E2otfYvY3vidtebkFc2qHTQin1x','','Program Studi',NULL),
(19,3,'BH616042','Sistem Informasi Manajemen',3,1,1,1,1,1,'','','','Program Studi',NULL),
(20,3,'BH616043','Sistem Operasi',3,1,1,1,1,1,'','https://drive.google.com/open?id=1xVnlNADKCeQ5dHVy1H8knvCLEk5-GPOy','','Program Studi',NULL),
(21,4,'BH616010','Analisa & Perancangan SI',3,1,1,1,1,1,'','','','Program Studi',NULL),
(22,4,'BH616014','Interaksi Manusia & Komputer',3,1,1,1,1,1,'','','','Program Studi',NULL),
(23,4,'BH616015','Jaringan Keamanan Komputer',4,1,1,1,1,1,'','','','Program Studi',NULL),
(24,4,'BH616021','Manajemen & Administrasi Basis Data',3,1,1,1,1,1,'','','','Program Studi',NULL),
(25,4,'BH616024','Manajemen Proses Bisnis',3,1,1,1,1,1,'','','','Program Studi',NULL),
(26,4,'BH616032','Pemrograman Web',4,1,1,1,1,1,'','','','Program Studi',NULL),
(27,5,'BH616012','Enterprise Architect',3,1,1,1,1,1,'','https://drive.google.com/open?id=1SWIbOp4qL6sGrM_uwGimJR8klVKZZdL6','','Program Studi',NULL),
(28,5,'BH616019','Komunikasi Interpersonal',2,1,1,1,1,1,'','','','Program Studi',NULL),
(29,5,'BH616022','Manajemen Hub. Pelanggan',3,1,1,1,1,1,'','','','Program Studi',NULL),
(30,5,'BH616025','Manajemen Proyek SI',3,1,1,1,1,1,'','','','Program Studi',NULL),
(31,5,'BH616026','Manajemen Rantai Pasok',3,1,1,1,1,1,'','','','Program Studi',NULL),
(32,5,'BH616030','Pemodelan dan Simulasi',3,1,1,1,1,1,'','https://drive.google.com/open?id=13OgIPsmmA7q5YZSndccj1-YLB-JCW6BF','','Program Studi',NULL),
(33,5,'BH616034','Pengembangan dan Implementasi SI',3,1,1,1,1,1,'','','','Program Studi',NULL),
(34,6,'BH616013','Etika Profesi',2,0,0,1,1,1,'','','','Program Studi',NULL),
(35,6,'BH616017','Kerja Praktek',3,0,0,1,0,0,'','','','Program Studi',NULL),
(36,6,'BH616029','Metodologi Penelitian',3,0,1,1,1,1,'','','','Program Studi',NULL),
(37,6,'BH616035','Pengujian Sistem Informasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(38,6,'BH616039','Proteksi Aset Informasi',3,1,1,1,1,1,'','','','Program Studi',NULL),
(39,6,'BH616041','Sistem Cerdas',3,1,1,1,1,1,'','','','Program Studi',NULL),
(40,6,'BH616045','Tata Kelola IT',3,1,1,1,1,1,'','','','Program Studi',NULL),
(41,7,'BH616018','Kuliah Kerja Nyata (KKN)',4,0,0,1,0,0,'','','','Universitas',NULL),
(42,7,'BH616023','Manajemen Investasi',3,1,1,1,1,1,'','https://drive.google.com/open?id=1ZIKdFwg3_PFMkGTG9dZYNtHt6nIzJDg6','','Program Studi',NULL),
(43,7,'BH616027','Manajemen Resiko',3,1,1,1,1,1,'','https://drive.google.com/open?id=1m9RNdHUpXPvxLdt9XiwzieAbgHNqGDDT','','Program Studi',NULL),
(44,7,'BH616036','Perenc. Sumber Daya Perush.',3,1,1,1,1,1,'','https://drive.google.com/open?id=1tAr01bExIBH_kwnVmRtdnwl8mnw7tWDq','','Program Studi',NULL),
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
  `url_rps` varchar(512) NOT NULL,
  `sub_jenis` tinyint(2) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sub_jenis_mk_pil` (`sub_jenis`),
  KEY `unit_mk_pil` (`unit`),
  CONSTRAINT `sub_jenis_mk_pil` FOREIGN KEY (`sub_jenis`) REFERENCES `tabel_5_1_2_1_sjmk` (`id`) ON UPDATE CASCADE,
  CONSTRAINT `unit_mk_pil` FOREIGN KEY (`unit`) REFERENCES `unit_mk` (`unit`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=17 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_1_3` */

insert  into `tabel_5_1_3`(`id`,`smt`,`kode_mk`,`nama_mk`,`sks`,`tugas`,`unit`,`url_rps`,`sub_jenis`) values 
(1,6,'CH616049','Mobile Technology',3,1,'Program Studi','',NULL),
(2,6,'CH616050','Pengemb. Aplikasi Berbasis Web',3,1,'Program Studi','',NULL),
(3,6,'CH616051','Audit IT',3,1,'Program Studi','https://drive.google.com/open?id=1_HYmfpU8oMQWT3RchFVbkB9Km784A54a',NULL),
(4,6,'CH616052','Data Warehouse',3,1,'Program Studi','',NULL),
(5,6,'CH616053','Sistem Temu Kembali Informasi',3,1,'Program Studi','',NULL),
(6,6,'CH616056','Digital Forensik',3,1,'Program Studi','',NULL),
(7,7,'CH616060','E-Government',3,1,'Program Studi','',NULL),
(8,7,'CH616063','Sistem Informasi Akuntansi',3,1,'Program Studi','',NULL),
(9,7,'CH616054','Sistem Informasi Geografis',3,1,'Program Studi','',NULL),
(10,7,'CH616055','Manajemen Layanan TI',3,1,'Program Studi','',NULL),
(11,7,'CH616057','Socio Informatics',3,1,'Program Studi','',NULL),
(12,7,'CH616058','Integrasi Aplikasi Korporasi',3,1,'Program Studi','https://drive.google.com/open?id=19fGbayTAREMynucWEZBzVah0G5-Wzy9F',NULL),
(13,7,'CH616059','Bisnis Cerdas',3,1,'Program Studi','',NULL),
(14,7,'CH616061','Teknik Peramalan',3,1,'Program Studi','https://drive.google.com/open?id=1NrZQVDqHN6FcvW3uIqK-pKAQRH3tLSKL',NULL),
(15,7,'CH616062','Sistem Pendukung Keputusan',3,1,'Program Studi','',NULL),
(16,7,'CH616064','Data Mining',3,1,'Program Studi','',NULL);

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
  `kode_mk` char(8) NOT NULL,
  `nama_mk` varchar(50) NOT NULL,
  `status_mk` varchar(8) NOT NULL,
  `perubahan_silabus` tinyint(1) NOT NULL DEFAULT '0',
  `perubahan_buku` tinyint(1) NOT NULL DEFAULT '0',
  `perubahan_sks` tinyint(1) NOT NULL DEFAULT '0',
  `alasan_peninjauan` varchar(200) NOT NULL,
  `atas_usulan` varchar(50) NOT NULL,
  `berlaku` varchar(32) NOT NULL,
  `url_silabus` varchar(512) NOT NULL,
  `url_buku` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=10 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_2` */

insert  into `tabel_5_2`(`id`,`kode_mk`,`nama_mk`,`status_mk`,`perubahan_silabus`,`perubahan_buku`,`perubahan_sks`,`alasan_peninjauan`,`atas_usulan`,`berlaku`,`url_silabus`,`url_buku`) values 
(1,'A0016004','Pengantar Studi Islam','MK lama',1,1,1,'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas','Institusi','I/2016','',''),
(2,'A0016001','Bahasa Indonesia (TPKI)','MK lama',1,0,1,'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas','Institusi','I/2016','',''),
(3,'A0016002','IAD/IBD/ISD','MK lama',1,1,1,'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas','Institusi','I/2016','',''),
(4,'A0016003','Civic Education','MK lama',1,1,1,'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas','Institusi','I/2016','',''),
(5,'A0016005','Studi Hadits','MK lama',1,1,1,'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas','Institusi','I/2016','',''),
(6,'A0016006','Studi Alquran','MK lama',1,1,1,'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas','Institusi','I/2016','',''),
(7,'BH616018','KKN','MK lama',1,0,1,'Penyesuaian tematema/materi yang dipakai agar lebih kontektual.<br>Instruksi rector tentang pemberlaku an KKNI dan capaian pembelajaran penciri Universitas untuk tercapainya visi misi Universitas','Institusi','I/2016','',''),
(8,'BH616009','Pengantar Teknologi Informasi','MK Baru',1,1,1,'Optimalisasi kompetensi (ketrampilan umum dan pengetahuan) untuk ketercapaian profil lulusan','Dosen','I/2016','',''),
(9,'EH613058','Metodologi Penelitian','MK lama',1,1,1,'Optimalisasi kompetensi (ketrampilan umum dan pengetahuan) untuk ketercapaian profil lulusan','Dosen','I/2016','','');

/*Table structure for table `tabel_5_4_1` */

CREATE TABLE `tabel_5_4_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_pembimbing` varchar(50) NOT NULL,
  `jumlah_mhs` int(11) NOT NULL DEFAULT '0',
  `rata_pertemuan` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=12 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_4_1` */

insert  into `tabel_5_4_1`(`id`,`nama_pembimbing`,`jumlah_mhs`,`rata_pertemuan`) values 
(1,'Achmad Teguh Wibowo',24,3.000),
(2,'Ahmad Yusuf',26,3.000),
(3,'Evi Fatimatur Rusdiyah ',1,4.000),
(4,'Dwi Rolliawati',24,3.000),
(5,'Faris Muslihul Amin',25,4.000),
(6,'Ilham',26,3.000),
(7,'Indri Sudanawati Rozas',27,3.000),
(8,'Khalid',26,3.000),
(9,'Muhammad Andik Izzuddin',26,3.000),
(10,'Mujib Ridwan',26,4.000),
(11,'Yusuf Amrozi',24,4.000);

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
) ENGINE=InnoDB AUTO_INCREMENT=14 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_5_5_1` */

insert  into `tabel_5_5_1`(`id`,`nama_dosen`,`jumlah_mhs`) values 
(1,'Achmad Teguh Wibowo',7),
(2,'Ahmad Yusuf',5),
(3,'Asep Saepul Hamdani',2),
(4,'Dwi Rolliawati',6),
(5,'Faris Muslihul Amin',7),
(6,'Ilham',6),
(7,'Imas Maesaroh',3),
(8,'Indri Sudanawati Rozas',4),
(9,'Khalid',5),
(10,'Kusaeri',3),
(11,'Muhammad Andik Izzuddin',6),
(12,'Mujib Ridwan',7),
(13,'Yusuf Amrozi',4);

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
  `jumlah_ts_2` decimal(7,3) NOT NULL DEFAULT '0.000',
  `jumlah_ts_1` decimal(7,3) NOT NULL DEFAULT '0.000',
  `jumlah_ts` decimal(7,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`),
  KEY `sumber_dana_diperoleh` (`sumber_dana`),
  CONSTRAINT `sumber_dana_diperoleh` FOREIGN KEY (`sumber_dana`) REFERENCES `sumber_dana` (`sumber_dana`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_1_1` */

insert  into `tabel_6_2_1_1`(`id`,`sumber_dana`,`jenis_dana`,`jumlah_ts_2`,`jumlah_ts_1`,`jumlah_ts`) values 
(1,'PT Sendiri','Rupiah Murni',3297.000,3522.000,4334.000),
(2,'PT Sendiri','Penerimaan Negara Bukan Pajak (P',1489.000,1574.000,1544.000),
(3,'Sumber Lain','Bantuan Penelitian',420.000,395.000,543.000),
(6,'Sumber Lain','Bantuan Pengabdian Masyarakat',88.000,117.600,116.600),
(7,'Sumber Lain','IDB (Lab Integrasi)',2674.300,0.000,0.000),
(8,'Sumber Lain','Hibah Pendampingan Jurnal (DIKTI',0.000,40.000,0.000);

/*Table structure for table `tabel_6_2_1_2` */

CREATE TABLE `tabel_6_2_1_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_penggunaan` varchar(32) NOT NULL,
  `penggunaan_ts_2` decimal(7,3) NOT NULL DEFAULT '0.000',
  `penggunaan_ts_1` decimal(7,3) NOT NULL DEFAULT '0.000',
  `penggunaan_ts` decimal(7,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_1_2` */

insert  into `tabel_6_2_1_2`(`id`,`jenis_penggunaan`,`penggunaan_ts_2`,`penggunaan_ts_1`,`penggunaan_ts`) values 
(1,'Pendidikan',4627.000,4949.858,4730.000),
(2,'Penelitian',420.000,395.000,543.000),
(3,'Pengabdian kepada Masyarakat',88.000,117.600,116.600),
(4,'Investasi Prasarana',2674.300,0.000,928.333),
(5,'Investasi Sarana',158.666,168.166,208.203),
(6,'Investasi SDM',0.000,0.000,12.000),
(7,'Lain-lain',0.000,0.000,0.000);

/*Table structure for table `tabel_6_2_2` */

CREATE TABLE `tabel_6_2_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `judul_penelitian` varchar(300) NOT NULL,
  `sumber_dana` varchar(8) NOT NULL,
  `jumlah_dana` decimal(7,3) NOT NULL,
  `url_penelitian` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sumber_dana_6_2_2` (`sumber_dana`),
  CONSTRAINT `sumber_dana_6_2_2` FOREIGN KEY (`sumber_dana`) REFERENCES `sumber_dana_penelitian` (`sumber`)
) ENGINE=InnoDB AUTO_INCREMENT=57 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_2` */

insert  into `tabel_6_2_2`(`id`,`tahun`,`judul_penelitian`,`sumber_dana`,`jumlah_dana`,`url_penelitian`) values 
(1,2017,'Prototype Sistem Informasi Deteksi Masjid Terdekat Menggunakan Peta Digital Berbasis Multi-Platform Device(Mobile and Web) Sebagai Pendukung Pelaksanaan Ibadah Sholat Tepat Waktu','Sendiri',15.000,''),
(2,2017,'Optimalisasi Potensi Psikologi Siswa Berbasis Manajemen Data','PT',60.000,''),
(3,2017,'Aplikasi Sistem Manajemen Mutu Lembaga Penjaminan Mutu UIN Sunan Ampel Surabaya','PT',110.000,''),
(4,2017,'Implementasi Pengenalan Pola Untuk Mengevaluasi Hasil Pembelajaran Dengan Metode Fuzzy C-means','DIKTIS',10.000,''),
(5,2017,'Analisis Dan Desain Penempatan Antrian Pemakaman Yang Aman Serta Ramah Lingkungan','Sendiri',15.000,''),
(6,2017,'Mengkaji Konsep Green Computing Berdasarkan Perspektif Umat Islam','PT',10.000,''),
(7,2017,'Seleksi Fitur Dua Tahap Menggunakan Information Gain dan Artificial Bee Colony untuk Kategorisasi Teks Berbasis Support Vector Machine','Sendiri',10.000,''),
(8,2017,'Prototype Sistem Pendukung Keputusan Untuk Penetapan Jadwal Kuliah Menggunakan Algoritma Genetika','Sendiri',10.000,''),
(9,2017,'NORMATIVE THEOLOGICAL REASONING OF BIOMETRIC SYSTEMS: Analyze the Uniqueness of Fingerprint Pattern in Information Technology Implementation','Sendiri',10.000,''),
(10,2017,'“Upaya Pencegahan Penyakit Demam Berdarah Dengue (DBD) Berbasis Pondok Pesantren\" Di Desa Puton Kabupaten Jombang Jawa Timur','PT',10.000,''),
(11,2017,'Ekonomi Lumbung dan Konstruksi Keberdayaan Petani Muslim Madiun','Sendiri',10.000,''),
(12,2017,'Perancangan Robotik Boat Pemantauan Sedimen Sungai Sebagai  Data Analisis Kebijakan Pengelolaan Air DAS Brantas','Sendiri',10.000,''),
(13,2017,'Desain Framework Kebijakan Internet Perguruan Tinggi Dalam Membangun University Social Responsibility (USR)','Sendiri',10.000,''),
(14,2017,'Pengembangan Digital Signage Sebagai Display Interaktif Produk Pada Pusat Pengembangan Bisnis UIN Sunan Ampel Surabaya','PT',15.000,''),
(15,2017,'Pemetaan Potensi Psikologis Siswa Mtsn di Surabaya','PT',60.000,''),
(16,2017,'Prediksi Penerimaan Besasiswa Santri Pada Lembaga Pendidikan di Pesantren Nurul Huda Menggunakan Algoritma J48','Luar',17.500,''),
(17,2017,'Strategy Development in University Academic Quality Related to Academic Library Services','PT',17.500,''),
(18,2017,'A algorithm hybrid model of Bayesian for detection performance in unhealthy lifestyle','Sendiri',10.000,''),
(19,2017,'Analisis Sentimen Twitter untuk Teks Berbahasa Indonesia Mengenai Peran Ormas Islam  dalam Penanganan Isu Radikalisme dengan Metode Support Vector Machine','Sendiri',10.000,''),
(20,2018,'Pengembangan Sistem Informasi Akademik Dalam Mendukung Efisiensi Kurikulum 2013 Di Sekolah Dasar Islam Terpadu Firdaus','Sendiri',60.000,''),
(21,2018,'Disparitas Status Sosial Ekonomi Intensitas Keterlibatan Orang Tua dalam Belajar dan Prestasi Belajar Matematika Siswa Indonesia','Sendiri',30.000,''),
(22,2018,'menjadi ketua Tim Peneliti pada penelitian kolektiv madya dengan mahasiswa yg berjudul: Desain Sistem Informasi Pemasaran E Commercepada Usaha Mikro, Kecil  dan  Menengah  (UMKM)  “Bandeng  Mentari”  UD.  Multi  Sarana  Niaga  Gresik  untuk  Meningkatkan  Pemasaran','Sendiri',30.000,''),
(23,2018,'ISLAMIC GREEN COMPUTING IMPLEMENTASI KONSEP RAHMATAN LIL ALAMINDI ERA TEKNOLOGI INFORMASI','PT',10.000,''),
(24,2018,'RENCANA PENGEMBANGAN AKADEMIK UNIVERSITAS ISLAM NEGERI SUNAN AMPEL SURABAYA 2020-2025 MENGGUNAKAN TEKNIK KARTU KENDALI KOMUNITAS (Community Score Card)','PT',65.000,''),
(25,2018,'Membuat Karya Penelitian dalam kluster PPK Individual dengan judul \"Teknologi Opinion Mining sebagai Strategic Planning menuju World Class University\"','PT',18.000,''),
(26,2018,'Identifikasi Citra Daging Ayam Berformalin Menggunakan Metode Fitur Tekstur dan K-Nearest Neighbor (K-NN)','Sendiri',10.000,''),
(27,2018,'MODEL SISTEM DETEKSI DINI KECENDERUNGAN PENYAKIT MASYARAKAT DESA TERTINGGAL DAN PESISIR AKIBAT POLA HIDUP YANG TIDAK SEHAT DENGAN ALGORITMA HYBRID BAYESIAN NETWORK BERDASARKAN DATA TERSEBAR (STUDI KASUS : DI KABUPATEN GRESIK DAN TUBAN)','Sendiri',10.000,''),
(28,2018,' Adopsi Teknologi Informasi pada PTKIS di Jawa Timur','PT',24.000,''),
(29,2018,'SOFTWARE DETEKSI HUBUNGAN POLA KONSUMSI (ENERGI DAN PROTEIN) TERHADAP INDEKS MASSA TUBUH MAHASISWA FAKULTAS SAINS TEKNOLOGI UIN SUNAN AMPEL SURABAYA TAHUN 2017','PT',30.000,''),
(30,2018,'SISTEM INFORMASI PENENTUAN UANG KULIAH TUNGGAL DENGAN MENGGUNAKAN METODE FUZZY SUGENO DI UIN SUNAN AMPEL SURABAYA','Sendiri',10.000,''),
(31,2018,'Perencanaan dan Analisis Papan Informasi Digital Berwawasan Green Campus Berbasis Internet of Things (IoT)','Sendiri',15.000,''),
(32,2018,'Rancang Bangun Smart Urban Farming Surabaya Berbasis Internet of Things (IoT) Guna Memperkokoh Identitas Surabaya Green City:','Sendiri',15.000,''),
(33,2018,'Peningkatan Akses Perguruan Tinggi NU (PTNU) di Jawa Timur melalui Teknologi Tepat Guna di Bidang Sistem Informasi (Rancang Bangun dan Pelatihan Content Management System Website Ptnu di Jawa Timur)','PTNU',17.500,''),
(34,2018,'Pengembangan Instrumen Asesmen Higher Order Thinking Skills (HOTS) Mata Pelajaran Matematika Diintegrasikan dengan Nilai-nilai Islami','Sendiri',10.000,''),
(35,2018,'Realitas Sosiologi Komunikasi Komunitas Pesantren Dalam Ruang Masyarakat Informasi (Studi Qualitative Inquiry Kyai dan Santri di Pondok Pesantren Al-Falah Ploso Kediri)','Sendiri',10.000,''),
(36,2018,'\"Forecasts marine weather on Java sea using hybrid methods: TS-ANFIS\" yang diterbitkan dalam International Conference on Electrical Engineering, Computer Science and Informatics (EECSI)','Sendiri',10.000,''),
(37,2018,'STUDENT READINESS AND CHALLENGE IN COMPLETING HIGHER ORDER THINKING SKILL TEST TYPE FOR MATHEMATICS','Sendiri',10.000,''),
(38,2018,'EVALUASI USABILITY SISTEM INFORMASI MANAJEMENKEPEGAWAIAN BERBASIS ISO 9241-11 MENGGUNAKAN METODE PARTIAL LEAST SQUARE','Sendiri',10.000,''),
(39,2019,'Potensi Green City Berwawasan Industri 4.0 melalui Smart Urban Farming through IOT (SUFI)','PT',100.000,''),
(40,2019,'Rekomendasi Pencocokan Pasangan berdasarkan kriteria Alquran Hadis dengan K-Means Clustering','PT',18.000,''),
(41,2019,'Pengembangan Sistem Manajemen Penetapan Anggran Program Studi UINSA menuju WCU','PT',18.000,''),
(42,2019,'Penerapan Software Peningkatan Kapasitas Kinerja Pelayanan','PT',24.000,''),
(43,2019,'Implementasi Sistem Pakar untuk Mendiagnosa Paham Radikalisme pada Mahasiswa dengan Fuzzy Logic','PT',43.000,''),
(44,2019,'Manajemen Aset Wakaf berbasis SIG sebagai media informasi publik','PT',100.000,''),
(45,2019,'Peningkatan Akses Perguruan Tinggi NU (PTNU) di Jawa Timur melalui Teknologi Tepat Guna di Bidang Sistem Informasi (Rancang Bangun dan Pelatihan Content Management System Website Ptnu di Jawa Timur)','Sendiri',18.000,''),
(46,2019,'Analisa Kebutuhan Sistem Hubungan Konsumsi (Energi dan Protein) Terhadap IMT Mahasiswa Fakultas Sains Teknologi Uin Sunan Ampel Surabaya','Sendiri',18.000,''),
(47,2019,'ANALISIS DAN DESAIN ALGORITMA HYBRID KRIPTOGRAFI UNTUK MANAJEMEN STRATEGI PENGAMANAN DATA PERUSAHAAN','Sendiri',18.000,''),
(48,2019,'Student Readiness and Challence in Completing Higher Order Thinking Skills Test Type for Mathematics (Infinity Journal Volume 8 Nomor 1 STKIP Siliwangi)','Sendiri',18.000,''),
(49,2019,'Learning outcome of mathematics and science: Features of Indonesian madrasah students','Sendiri',24.000,''),
(50,2019,'Metode Hibridasi Artificial Bee Colony dan Fuzzy K-Modes untuk Klasterisasi Data Kategorikal','Sendiri',18.000,''),
(51,2019,'Pemanfaatan Teknologi Single Page Application (SPA) dalam Pembuatan Aplikasi Feedback Dosen dari Mahasiswa Sebagai Bentuk Pengawasan Lembaga Terhadap Kinerja Dosen di Bidang Pengajaran','Sendiri',18.000,''),
(52,2019,'pemnfaatan open erp (dollibar) untuk agenda dan member sebagai penunjang program ukm melek teknologi','Sendiri',18.000,''),
(53,2019,'Pengembangan Model Usaha Tanaman Hidroponik Melalui Pemanfaatan Teknologi Tepat Guna Berbasis Media Informasi Pada Komunitas UMKM Pertanian Perkotaan','Sendiri',24.000,''),
(54,2019,'DETEKSI PLAGIASI DOKUMEN SKRIPSI MAHASISWA MENGGUNAKAN METODE N-GRAMS DAN WINNOWING','Sendiri',24.000,''),
(55,2019,'EVALUASI USABILITY SISTEM INFORMASI MANAJEMEN KEPEGAWAIAN BERBASIS ISO 9241-11','Sendiri',18.000,''),
(56,2019,'Text Mining Approach for Topic Modelling of Corpus Al Qur\'an in Indonesian Translation','Sendiri',24.000,'');

/*Table structure for table `tabel_6_2_3` */

CREATE TABLE `tabel_6_2_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NOT NULL,
  `judul_pengabdian` varchar(256) NOT NULL,
  `sumber_dana` varchar(16) NOT NULL,
  `jumlah_dana` decimal(6,3) NOT NULL,
  `url_pengabdian` varchar(512) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `sumber_dana_6_2_3` (`sumber_dana`),
  CONSTRAINT `sumber_dana_6_2_3` FOREIGN KEY (`sumber_dana`) REFERENCES `sumber_dana_pengabdian` (`sumber`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_3` */

insert  into `tabel_6_2_3`(`id`,`tahun`,`judul_pengabdian`,`sumber_dana`,`jumlah_dana`,`url_pengabdian`) values 
(1,2017,'Pelatihan pembuatan website dan  Seminar tentang Teknologi serta dampaknya Terhadap Perilaku Hidup Sehat Santri Di pondok pesantren Nurul Huda','Mandiri',9.000,NULL),
(2,2017,'Narasumber Radio RRI','PT',1.800,NULL),
(3,2017,'Siaran RRI Pro 2 Tema Gadget','PT',1.800,NULL),
(4,2017,'Pelatihan internet sehat pada Remaja Masjid Bukit Palma Surabaya','PT',6.000,NULL),
(5,2017,'Penyuluhan\" Gadget dan Teknologi\" dengan tema Digital Literasi','Mandiri',6.000,NULL),
(6,2017,'Narasumber pada Pelatihan Pengelolaan Data untuk Penertiban Sistem Administrasi Desa di Ds. Srirande','Mandiri',6.000,NULL),
(7,2017,'Pengabdian Di RRI Surabaya Tema Gadget ','Mandiri',1.800,NULL),
(8,2017,'Pengabdian Masyarakat di SMK Nurul Huda Situbondo','Mandiri',9.000,NULL),
(9,2017,'Pengabdian  di PP Al Hidayah Mojosari','Mandiri',9.000,NULL),
(10,2017,'Kelas Inspirasi Tuban 2','Mandiri',9.000,NULL),
(11,2017,'RRI : Membumikan Literasi Informasi Digital Untuk Memerangi Hoax','Lembaga Lain',9.000,NULL),
(12,2017,'Pelatihan Manajemen Berbasis Sekolah di SMA Darul Mukhlasin','PT',9.000,NULL),
(13,2017,'Pengabdian Kepada Masyarakat \"Social Enterprise of Bambooland Maximizing the Role of Rural Communication towards Sustainable Economic Creative\" di Desa Purwobinangun, Kec. Pakem Sleman, DIY','Mandiri',9.000,NULL),
(14,2017,'Melakukan Pendampingan Masyarakat melalui menjadi reviewer Beasiswa LPDP pada Bulan September 2017','Lembaga Lain',1.800,NULL),
(15,2018,'Pengabdian Desain dan Pembuatan Website PT NU di Jawa Timur','Mandiri',9.000,NULL),
(16,2018,'Narasumber BOS Madrasah Kementrian Agama','Mandiri',3.000,NULL),
(17,2018,'Kegiatan silaturahmi Yayasan Muslim  Bukit Palma dengan tema \"Cerdas menjaga ukhuwah dalam era informasi berbasis digital\"','Mandiri',3.000,NULL),
(18,2018,'Kegiatan pengabdian masyarakat  Play Mathematics di Taman Bacaan Masyarakat','Mandiri',9.000,NULL),
(19,2018,'Program \'Kegiatan\'Pengembangan\"\"Mutu\"\"Pendidikan\"\"Matematika\"\"di\"\" Madrasah\"\"Sekolah(Pedesaan','Mandiri',9.000,NULL),
(20,2018,'Pelatihan kepada Wali murid : sebagai narasumber pada \"Parenting Edukasi Penggunaan Gadget (HP) untuk anak-anak\"  PAUD Jawaahirul Hikmah Ponpes Jawaahirul Hikmah tanggal 20 Juli 2018','Mandiri',9.000,NULL),
(21,2018,'Pembuatan Media Informasi LPTNU Jawa Timur','Luar PT',12.000,NULL),
(22,2018,'Menjadi pembicara dalam Seminar Parenting dengan tema “Bagaimana Peran Gadget dalam Pendidikan Anak”','Mandiri',1.800,NULL),
(23,2018,'Nara Sumber \"Parenting Edukasi penggunaan Gadget (HP) untuk anak anak\"','Mandiri',1.800,NULL),
(24,2018,'Pendamping Program KP-KAS Kota Surabaya','Lembaga Lain',6.000,NULL),
(25,2018,'Pengabdian Kepada Masyarakat Melalui Pembimbingan Mahasiswa KKN Reguler Gelombang II Tahun 2018 di Desa Kuwu, Kecamatan Balerejo, Kabupaten Madiun','Mandiri',3.000,NULL),
(26,2018,'Diseminasi dan Alih Teknologi dan Perangkat Otomasi Pertanian\" di KRPL RW 04 Kelurahan Jemursari, Wonocolo Surabaya','Mandiri',9.000,NULL),
(27,2018,'Pemetaan aset warga menggunakan teknologi GIS untuk menunjang kampung melek teknologi (study kasus kecamatan wonocolo surabaya)','Mandiri',15.000,NULL),
(28,2018,'Pengabdian Masyarakat di Gedung Juang 45 Medan  tentang Digital Literasi','Mandiri',6.000,NULL),
(29,2018,'Workshop penguatan kinerja tenaga kependidikan madrasah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 19-21 November 2018','Mandiri',6.000,NULL),
(30,2018,'Workshop Peningkatan Kompetensi Pustakawan Madrasah Aliyah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 2-4 Oktober 2018','Mandiri',6.000,NULL),
(31,2018,'Workshop Penguatan Kompetensi Kepala Perpustakaan dan Kepala Laboratorium , Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 16-18 November 2018','Mandiri',6.000,NULL),
(32,2018,'Narasumber Bantuan Pengembangan Karir Pustakawan, yang diselenggarakan oleh Direktorat Jenderal Pendidikan Tinggi Islam, Kementerian Agama RI, pada tanggal 21-26 November 2018','Mandiri',3.000,NULL),
(33,2019,'Melakukan pengabdian masyarakat bersama FST Uinsa dan FT Univ Nurul Jadid tentang pesantren tanggap informasi di Ponpes Nurul Huda Situbondo','PT',5.000,NULL),
(34,2019,'Melakukan Pengmas melalui menjadi pembicara sistem penjaminan mutu di kampus Umaha Sidoarjo','Mandiri',1.500,NULL),
(35,2019,'\"Diseminasi dan Alih Teknologi dan Perangkat Otomasi Pertanian\" di KRPL RW 04 Kelurahan Jemursari, Wonocolo Surabaya','Mandiri',1.500,NULL),
(36,2019,'Pemetaan Aset warga menggunkan Teknologi GIS Untuk menunjang program kampung melek teknologi (studi kasus  kecamatan wonocolo surabaya)','Mandiri',1.500,NULL),
(37,2019,'Sosialisasi Hasil Karya Perangkat Lunak Bersama Mahasiswa pada Masyarakat UKM','Mandiri',1.500,NULL),
(38,2019,'Pendampingan Sekolah SDN Baturetnno 1 Tuban','Mandiri',2.000,NULL),
(39,2019,'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri berbasi E-commerce','PT',60.000,NULL),
(40,2019,'Diseminasi dan Alih Teknologi Perangkat Otomasi Pertanian','Mandiri',2.000,NULL),
(41,2019,'Melakukan Kegiatan Pengabdian Bersama Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya dengan Fakultas Teknik Universitas Nurul Jadid Di SMK dan Pondok Pesantren Nurul Huda Situbondo','Mandiri',2.000,NULL),
(42,2019,'pendampingan dan sosialisasi pengunaan aplikasi informasi jasa konstruksi kota malang di dinas pekerjaan kota malang','Mandiri',2.000,NULL),
(43,2019,'\"\"Diseminasi dan Alih Teknologi Perangkat Otomasi Pertanian\"\" di KRPL RW 04 Kelurahan Jemurwonosari Kecamatan Wonocolo Kota Surabaya','Mandiri',1.500,NULL),
(44,2019,'Pemetaan Aset Warga Menggunakan Teknologi GIS Untuk Menunjang Program Kampung Melek Teknologi (Studi Kasus Kec. Wonocolo Surabaya)','Mandiri',1.500,NULL),
(45,2019,'Pengisi Acara Saintek Bersholawat','PT',5.000,NULL),
(46,2019,'Pendampingan IT bagi Guru-guru MTsN 1 Surabaya','PT',5.000,NULL),
(47,2019,'Pendampingan dan Sosialisasi penggunaan aplikasi SIPJAKON di PUPR Kota Malang','Mandiri',2.000,NULL),
(48,2019,'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri Berbasis E-Commerce di Pondok Pesantren Nurul Huda Yayasan Cendekia Insani Situbondo','Mandiri',2.000,NULL),
(49,2019,' Kegiatan Pengabdian Kepada Masyarakat di SMK Nurul Huda Situbondo','Mandiri',2.000,NULL),
(50,2019,'Pengabdian di Desa Wisata Gosari Kabupaten Gresik','Mandiri',2.000,NULL),
(51,2019,'Penyuluhan gadget warning system di SMP 62','Mandiri',1.800,NULL),
(52,2019,'Melaksanakan Pengabdian Masyarakat di Gedung Juang 45 Medan  tentang Digital Literasi','Mandiri',2.000,NULL),
(53,2019,'Pendampingan Pengabdian di SMK Probolinggo','Mandiri',2.000,NULL),
(54,2019,'Melaksanakan Kegiatan Pengabdian Masyarakat Math4rural dengan Kegiatan Pelatihan Evalausi Pembelajaran Matematika bagi Guru SMP/MTs. di Panggungrejo 194 Gondanglegi Malang tanggal 01 sd 02 Desember 2018','Mandiri',1.800,NULL),
(55,2019,'penguatan kinerja tenaga kependidikan madrasah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 19-21 November 2018','Luar PT',3.000,NULL),
(56,2019,'Peningkatan Kompetensi Pustakawan Madrasah Aliyah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 2-4 Oktober 2018','Luar PT',3.000,NULL),
(57,2019,'Penguatan Kompetensi Kepala Perpustakaan dan Kepala Laboratorium , Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 16-18 November 2018','Luar PT',3.000,NULL);

/*Table structure for table `tabel_6_3_1` */

CREATE TABLE `tabel_6_3_1` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `ruang` varchar(64) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `luas` decimal(7,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_3_1` */

insert  into `tabel_6_3_1`(`id`,`ruang`,`jumlah`,`luas`) values 
(1,'Satu ruang untuk 1 dosen (bukan pejabat struktural)',0,0.000),
(2,'Satu ruang untuk 2 dosen',0,0.000),
(3,'Satu ruang untuk 3-4 dosen',0,0.000),
(4,'Satu ruang untuk lebih dari 4 dosen',8,80.000);

/*Table structure for table `tabel_6_3_2` */

CREATE TABLE `tabel_6_3_2` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `luas` decimal(7,3) NOT NULL DEFAULT '0.000',
  `sewa` tinyint(1) NOT NULL DEFAULT '0',
  `terawat` tinyint(1) NOT NULL DEFAULT '1',
  `utilisasi` decimal(6,3) NOT NULL DEFAULT '0.000',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=13 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_3_2` */

insert  into `tabel_6_3_2`(`id`,`jenis`,`jumlah`,`luas`,`sewa`,`terawat`,`utilisasi`) values 
(1,'Ruang kelas',5,320.000,0,1,50.000),
(2,'Laboratorium',3,64.000,0,1,30.000),
(3,'Laboratorium Manajemen',1,64.000,0,1,30.000),
(4,'Laboratorium Sistem Cerdas',1,64.000,0,1,30.000),
(5,'Laboratorium Teknologi',1,64.000,0,1,30.000),
(6,'Laboratorium Jaringan dan Hardware',1,150.000,0,1,30.000),
(7,'Perpustakaan',1,2800.000,0,1,35.000),
(8,'Ruang Baca',1,16.000,0,1,35.000),
(9,'Ruang Prodi ',1,20.000,0,1,35.000),
(10,'Ruang',1,14.000,0,1,12.000),
(11,'Ruang Ujian',1,18.000,0,1,2.000),
(12,'Ruang',1,32.000,0,1,35.000);

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
  `jumlah` int(11) NOT NULL DEFAULT '1',
  `luas` decimal(7,3) NOT NULL DEFAULT '0.000',
  `sewa` tinyint(4) NOT NULL DEFAULT '0',
  `terawat` tinyint(4) NOT NULL DEFAULT '1',
  `unit` varchar(50) NOT NULL DEFAULT 'Universitas',
  `image` tinyint(1) NOT NULL DEFAULT '1',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=31 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_3_3` */

insert  into `tabel_6_3_3`(`id`,`jenis`,`jumlah`,`luas`,`sewa`,`terawat`,`unit`,`image`) values 
(1,'Sport Center and Multi Purpose',1,2325.000,0,1,'Universitas',1),
(2,'Laboratorium Terintegrasi',1,944.000,0,1,'Universitas',1),
(3,'Ruang Auditorium',1,0.000,0,1,'Universitas',1),
(4,'Self Acces Center (SAC)',1,576.000,0,1,'Universitas',1),
(5,'Lapangan Serbaguna',1,3500.000,0,1,'Universitas',1),
(6,'Ruang Fitness',1,240.000,0,1,'Universitas',1),
(7,'Ruang Tenis Meja',1,240.000,0,1,'Universitas',1),
(8,'Koperasi',1,130.000,0,1,'Universitas',1),
(9,'Bank Mini Syariah',1,108.000,0,1,'Universitas',1),
(10,'Poliklinik',1,99.000,0,1,'Universitas',1),
(11,'Kantin',1,273.000,0,1,'Universitas',1),
(12,'Pesantren mahasiswa',1,408.000,0,1,'Universitas',1),
(13,'Masjid',1,2585.000,0,1,'Universitas',1),
(14,'Cafe Dharmawanita',1,400.000,0,1,'Universitas',1),
(15,'UINSA Mart',1,250.000,0,1,'Universitas',1),
(16,'UINSA Book Store',1,250.000,0,1,'Universitas',0),
(17,'Hotel Green Sa Inn',1,1000.000,0,1,'Universitas',1),
(18,'ATM Center',1,54.000,0,1,'Universitas',1),
(19,'Ruang Sidang',1,250.000,0,1,'Universitas',1),
(20,'Bank Tabungan Negara (BTN) Cabang UINSA',1,200.000,0,1,'Universitas',1),
(21,'Bank Mini Sampah',1,30.000,0,1,'Universitas',1),
(22,'Kantor Lembaga Bantuan Hukum',1,60.000,0,1,'Universitas',1),
(23,'Amphitheater Twin Tower',1,400.000,0,1,'Universitas',1),
(24,'Halaman Parkir Mobil',1,5000.000,0,1,'Universitas',1),
(25,'Halaman Parkir Motor',1,8000.000,0,1,'Universitas',1),
(26,'Kantor Pusat Bisnis Universitas',1,200.000,0,1,'Universitas',1);

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
(1,'Buku Teks',425,425),
(2,'Jurnal Nasional yang terakreditasi',5,5),
(3,'Jurnal Internasional',2,2),
(4,'Prosiding',10,15),
(5,'Skripsi',30,30),
(6,'Tesis',30,30),
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
  `jurnal` varchar(128) NOT NULL,
  `url_jurnal` varchar(512) NOT NULL,
  `nomor_tahun` varchar(1024) NOT NULL,
  `jumlah` int(11) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jenis_jurnal_6_4_1_2` (`jenis`),
  CONSTRAINT `jenis_jurnal_6_4_1_2` FOREIGN KEY (`jenis`) REFERENCES `jenis_jurnal` (`jenis`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_1_2` */

insert  into `tabel_6_4_1_2`(`id`,`jenis`,`jurnal`,`url_jurnal`,`nomor_tahun`,`jumlah`) values 
(1,'Jurnal Terakreditasi DIKTI','KURSOR Journal','https://kursorjournal.org/','Vol 10 No 1 (2019): Vol 10 No 1 (2019) <br>Vol 9 No 4 (2018) <br>Vol 9 No 3 (2018) <br>Vol 9 No 2 (Desember 2017) <br>Vol 9 No 1 (Juli 2017) <br>Vol 8 No. 4 (Desember 2016) <br>Vol 8 No. 3 (Juli 2016)',7),
(2,'Jurnal Terakreditasi DIKTI','Systemic','http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC','Desember Vol 4 No 2 (2018) <br>Agustus Vol 4 No 1 (2018) <br>Desember Vol 3 No 2 (2017) <br>Agustus Vol 3 No 1 (2017) <br>Desember Vol 2 No 2 (2016) <br>Agustus Vol 2 No 1 (2016)',6),
(3,'Jurnal Terakreditasi DIKTI','Jurnal Nasional Teknik Elektro dan Teknologi Informasi (JNTETI)','http://jnteti.te.ugm.ac.id/','Vol 8, No 4 (2019) <br>Vol 8, No 3 (2019) <br>Vol 8, No 2 (2019) <br>Vol 8, No 1 (2019) <br>Vol 7, No 4 (2018) <br>Vol 7, No 3 (2018) <br>Vol 7, No 2 (2018) <br>Vol 7, No 1 (2018) <br>Vol 6, No 4 (2017) <br>Vol 6, No 3 (2017)',9),
(4,'Jurnal Internasional','Telkomnika','http://journal.uad.ac.id/index.php/TELKOMNIKA','Vol 17, No 3: June 2019 <br>Vol 17, No 2: April 2019 <br>Vol 17, No 1: February 2019 <br>Vol 16, No 6: December 2018 <br>Vol 16, No 5: October 2018 <br>Vol 16, No 4: August 2018 <br>Vol 16, No 3: June 2018 <br>Vol 16, No 2: April 2018 <br>Vol 16, No 1: February 2018 <br>Vol 15, No 4: December 2017 <br>Vol 15, No 3: September 2017',3),
(5,'Jurnal Internasional','Computer Science and Information Systems','http://www.comsis.org/','Volume 16, Issue 2 (June 2019) <br>Volume 16, Issue 1 (January 2019) <br>Volume 15, Issue 3 (October 2018) <br>Volume 15, Issue 2 (June 2018) <br>Volume 15, Issue 1 (January 2018)',5);

/*Table structure for table `tabel_6_4_1_2_lj` */

CREATE TABLE `tabel_6_4_1_2_lj` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jurnal` int(11) NOT NULL,
  `nomor_tahun` varchar(50) NOT NULL,
  `url_jurnal` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `jurnal_6_4_1_2_lj` (`jurnal`),
  CONSTRAINT `jurnal_6_4_1_2_lj` FOREIGN KEY (`jurnal`) REFERENCES `tabel_6_4_1_2` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=41 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_1_2_lj` */

insert  into `tabel_6_4_1_2_lj`(`id`,`jurnal`,`nomor_tahun`,`url_jurnal`) values 
(1,1,'Vol 10 No 1 (2019): Vol 10 No 1 (2019)',''),
(2,1,'Vol 9 No 4 (2018)',''),
(3,1,'Vol 9 No 3 (2018)',''),
(4,1,'Vol 9 No 2 (Desember 2017)',''),
(5,1,'Vol 9 No 1 (Juli 2017)',''),
(6,1,'Vol 8 No. 4 (Desember 2016)',''),
(7,1,'Vol 8 No. 3 (Juli 2016)',''),
(8,2,'Desember Vol 4 No 2 (2018)',''),
(9,2,'Agustus Vol 4 No 1 (2018)',''),
(10,2,'Desember Vol 3 No 2 (2017)',''),
(11,2,'Agustus Vol 3 No 1 (2017)',''),
(12,2,'Desember Vol 2 No 2 (2016)',''),
(13,2,'Agustus Vol 2 No 1 (2016)',''),
(14,3,'Vol 8, No 4 (2019)',''),
(15,3,'Vol 8, No 3 (2019)',''),
(16,3,'Vol 8, No 2 (2019)',''),
(17,3,'Vol 8, No 1 (2019)',''),
(18,3,'Vol 7, No 4 (2018)',''),
(19,3,'Vol 7, No 3 (2018)',''),
(20,3,'Vol 7, No 2 (2018)',''),
(21,3,'Vol 7, No 1 (2018)',''),
(22,3,'Vol 6, No 4 (2017)',''),
(24,3,'Vol 6, No 3 (2017)',''),
(25,4,'Vol 17, No 3: June 2019',''),
(26,4,'Vol 17, No 2: April 2019',''),
(27,4,'Vol 17, No 1: February 2019',''),
(28,4,'Vol 16, No 6: December 2018',''),
(29,4,'Vol 16, No 5: October 2018',''),
(30,4,'Vol 16, No 4: August 2018',''),
(31,4,'Vol 16, No 3: June 2018',''),
(32,4,'Vol 16, No 2: April 2018',''),
(33,4,'Vol 16, No 1: February 2018',''),
(34,4,'Vol 15, No 4: December 2017',''),
(35,4,'Vol 15, No 3: September 2017',''),
(36,5,'Volume 16, Issue 2 (June 2019)',''),
(37,5,'Volume 16, Issue 1 (January 2019)',''),
(38,5,'Volume 15, Issue 3 (October 2018)',''),
(39,5,'Volume 15, Issue 2 (June 2018)',''),
(40,5,'Volume 15, Issue 1 (January 2018)','');

/*Table structure for table `tabel_6_4_2` */

CREATE TABLE `tabel_6_4_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumber` varchar(100) NOT NULL,
  `url_sumber` varchar(128) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=26 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_2` */

insert  into `tabel_6_4_2`(`id`,`sumber`,`url_sumber`) values 
(1,'Perpustakaan Daerah Surabaya',NULL),
(2,'SAGE Publisher','http://www.methods.sagepub.com/'),
(3,'EBSCO','http://www.search.ebscohost.com/'),
(4,'Indonesian One Search','http://onesearch.id/'),
(5,'BookFi','http://www.bookfi.org/'),
(6,'Directory of Open Access Journal (DOAJ)','http://doaj.org/'),
(7,'Open Access Journals Search Engine (OAJSE)','http://www.oajse.com/'),
(8,'Buku Elektronik Bidang Teknik','http://www.ebookteknik.com/'),
(9,'MORAREF','http://moraref.or.id/'),
(10,'Springer','https://link.springer.com/'),
(11,'Iglibrary','http://portal.igpublish.com/iglibrary/'),
(12,'Emerald','https://www.emerald.com/insight/'),
(13,'Google Scholar','https://scholar.google.com/'),
(14,'Perpustakaan Nasional Republik Indonesia','http://perpusnas.go.id/'),
(15,'Perpustakaan Universitas Negeri Surabaya','http://digilibunesa.org/'),
(16,'Perpustakaan Universitas Pendidikan Indonesia','http://repository.upi.edu/'),
(17,'Perpustakaan Universitas Diponegoro','http://eprints.undip.ac.id/'),
(18,'Perpustakaan Universitas Muhammadiyah Surakarta','http://eprints.ums.ac.id/'),
(19,'Perpustakaan Universitas Airlangga Surabaya','http://lib.unair.ac.id/'),
(20,'Perpustakaan Institut Teknologi Sepuluh November Surabaya','http://digilib.its.ac.id/'),
(21,'Perpustakaan Universitas Negeri Malang','http://library.um.ac.id/'),
(22,'Perpustakaan UIN Maulana Malik Ibrahim','http://libcat.uin-malang.ac.id/'),
(23,'Perpustakaan Universitas Indonesia','http://digilib.ui.ac.id'),
(24,'Garuda (Garba Rujukan Digital)','http://garuda.ristekdikti.go.id/'),
(25,'IEEE Xplore Digital Library','http://ieeexplore.ieee.org/Xplore/home.jsp');

/*Table structure for table `tabel_6_4_3` */

CREATE TABLE `tabel_6_4_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_lab` varchar(50) NOT NULL,
  `jenis_peralatan` varchar(50) NOT NULL,
  `jumlah_peralatan` int(11) NOT NULL,
  `unit` varchar(8) NOT NULL,
  `sewa` tinyint(1) NOT NULL DEFAULT '0',
  `terawat` tinyint(1) NOT NULL DEFAULT '1',
  `rata_penggunaan` decimal(6,3) NOT NULL DEFAULT '30.000',
  PRIMARY KEY (`id`),
  KEY `laboratorium_6_4_3` (`nama_lab`),
  CONSTRAINT `laboratorium_6_4_3` FOREIGN KEY (`nama_lab`) REFERENCES `laboratorium` (`laboratorium`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=48 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_4_3` */

insert  into `tabel_6_4_3`(`id`,`nama_lab`,`jenis_peralatan`,`jumlah_peralatan`,`unit`,`sewa`,`terawat`,`rata_penggunaan`) values 
(1,'Laboratorium Komputer','Komputer',25,'Set',0,1,30.000),
(2,'Laboratorium Komputer','Server',1,'Set',0,1,30.000),
(3,'Laboratorium Komputer','Software (netbeans, office)',1,'Pack',0,1,30.000),
(4,'Laboratorium Komputer','LCD Projector + Bracket + Screen 70”',1,'Set',0,1,30.000),
(5,'Laboratorium Komputer','Network Printer',1,'Unit',0,1,30.000),
(6,'Laboratorium Komputer','Scanner',1,'Unit',0,1,30.000),
(7,'Laboratorium Komputer','Interactive Whiteboard',1,'Unit',0,1,30.000),
(8,'Laboratorium Komputer','LAN Connection and Material',1,'Lot',0,1,30.000),
(9,'Laboratorium Tata Kelola','AC',2,'Unit',0,1,30.000),
(10,'Laboratorium Tata Kelola','Komputer',25,'Set',0,1,30.000),
(11,'Laboratorium Tata Kelola','Server',1,'Set',0,1,30.000),
(12,'Laboratorium Tata Kelola','Software (office)',1,'Pack',0,1,30.000),
(13,'Laboratorium Tata Kelola','LCD Projector + Bracket + Screen 70”',1,'Set',0,1,30.000),
(14,'Laboratorium Tata Kelola','Network Printer',1,'Unit',0,1,30.000),
(15,'Laboratorium Tata Kelola','Scanner',1,'Unit',0,1,30.000),
(16,'Laboratorium Tata Kelola','Interactive Whiteboard',1,'Unit',0,1,30.000),
(17,'Laboratorium Tata Kelola','LAN Connection and Material',1,'Lot',0,1,30.000),
(18,'Laboratorium Tata Kelola','AC',1,'Unit',0,1,30.000),
(19,'Laboratorium Sistem Cerdas','Komputer',25,'Set',0,1,30.000),
(20,'Laboratorium Sistem Cerdas','Server',1,'Set',0,1,30.000),
(21,'Laboratorium Sistem Cerdas','Software (anaconda, office, orange)',1,'Pack',0,1,30.000),
(22,'Laboratorium Sistem Cerdas','LCD Projector + Bracket + Screen 70”',1,'Set',0,1,30.000),
(23,'Laboratorium Sistem Cerdas','Network Printer',1,'Unit',0,1,30.000),
(24,'Laboratorium Sistem Cerdas','Scanner',1,'Unit',0,1,30.000),
(25,'Laboratorium Sistem Cerdas','Interactive Whiteboard',1,'Unit',0,1,30.000),
(26,'Laboratorium Sistem Cerdas','LAN Connection and Material',1,'Lot',0,1,30.000),
(27,'Laboratorium Sistem Cerdas','AC',2,'Unit',0,1,30.000),
(28,'Laboratorium Teknologi','Komputer',25,'Set',0,1,30.000),
(29,'Laboratorium Teknologi','Server',1,'Set',0,1,30.000),
(30,'Laboratorium Teknologi','Software (anaconda, office, orange)',1,'Pack',0,1,30.000),
(31,'Laboratorium Teknologi','LCD Projector + Bracket + Screen 70”',1,'Set',0,1,30.000),
(32,'Laboratorium Teknologi','Network Printer',1,'Unit',0,1,30.000),
(33,'Laboratorium Teknologi','Scanner',1,'Unit',0,1,30.000),
(34,'Laboratorium Teknologi','Interactive Whiteboard',1,'Unit',0,1,30.000),
(35,'Laboratorium Teknologi','LAN Connection and Material',1,'Lot',0,1,30.000),
(36,'Laboratorium Teknologi','AC',2,'Unit',0,1,30.000),
(41,'Laboratorium Jaringan dan Hardware','Komputer',30,'Set',0,1,30.000),
(42,'Laboratorium Jaringan dan Hardware','Smartboard',1,'Unit',0,1,30.000),
(43,'Laboratorium Jaringan dan Hardware','AC',4,'Unit',0,1,30.000),
(44,'Laboratorium Jaringan dan Hardware','Layar LCD',2,'Unit',0,1,30.000),
(45,'Laboratorium Jaringan dan Hardware','Server',1,'Set',0,1,30.000),
(46,'Laboratorium Jaringan dan Hardware','Whiteboard',1,'Unit',0,1,30.000),
(47,'Laboratorium Jaringan dan Hardware','Audio',1,'Set',0,1,30.000);

/*Table structure for table `tabel_6_5_1_3` */

CREATE TABLE `tabel_6_5_1_3` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `software` varchar(50) NOT NULL,
  `lisensi` tinyint(1) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_5_1_3` */

insert  into `tabel_6_5_1_3`(`id`,`software`,`lisensi`) values 
(1,'Windows',1),
(2,'Ms Office',1),
(3,'Netbeans',3),
(4,'Orange',3),
(5,'Packet Tracer',3),
(6,'Any Logic Community',3),
(7,'Oracle',1),
(8,'Arcgis',1),
(9,'Visual Paradigm Community',3),
(10,'Sparx Enterprise Architect Community',3);

/*Table structure for table `tabel_6_5_2` */

CREATE TABLE `tabel_6_5_2` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `jenis_data` varchar(32) NOT NULL,
  `pengolahan_data` tinyint(1) NOT NULL,
  `url` varchar(256) DEFAULT NULL,
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
(1,'Pembiayaan sendiri oleh peneliti',10,13,12),
(2,'PT yang bersangkutan',7,5,6),
(3,'Depdiknas',0,0,0),
(4,'Institusi dalam negeri di luar Depdiknas',2,1,0),
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
  `jurnal` varchar(200) NOT NULL,
  `tahun` int(4) NOT NULL,
  `tingkat` tinyint(1) NOT NULL,
  `url_dok` varchar(512) NOT NULL,
  `url_jurnal` varchar(256) DEFAULT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=80 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_3` */

insert  into `tabel_7_1_3`(`id`,`judul`,`nama_dosen`,`jurnal`,`tahun`,`tingkat`,`url_dok`,`url_jurnal`) values 
(1,'Prototype Sistem Informasi Manajemen Keselamatan dan Kesehatan Kerja E-K3 Menggunakan Peta Digital Berbasis Web dan Mobile','Achmad Teguh Wibowo, S.Kom, M.T,','Seminar Nasional BALITBANG JATIM',2016,2,'',NULL),
(2,'Prototype Sistem Informasi Deteksi Masjid Terdekat Menggunakan Peta Digital Berbasis Multi-Platform Device(Mobile and Web) Sebagai Pendukung Pelaksanaan Ibadah Sholat Tepat Waktu','Achmad Teguh Wibowo, S.Kom, M.T,','AICIS, Diktis Kemenag RI',2016,3,'',NULL),
(3,'Super Smart Optimized Round Robin','Achmad Teguh Wibowo, S.Kom, M.T,','Jurnal Systemic, Vol. 1, No. 3',2016,1,'',NULL),
(4,'Optimalisasi Potensi Psikologi Siswa Berbasis Manajemen Data','Anang Kunaefi, M.Kom','Digital Library UIN Sunan Ampel',2016,1,'',NULL),
(5,'Undang-Undang Informasi Dan Transaksi Elektronik Dalam Perspektif It Security, Privasi, Dan Etika Dalam Islam','Anang Kunaefi, M.Kom','Seminar Nasional Politeknik Banjarmasin',2016,2,'',NULL),
(6,'A Framework for Optimum Contour Detection','Bayu Adhi Nugroho, M.Kom.','EECCIS-ICNERE 2016',2016,2,'',NULL),
(7,'Perancangan Robotik Boat Pemantauan Sedimen Sungai Sebagai  Data Analisis Kebijakan Pengelolaan Air DAS Brantas','Bayu Adhi Nugroho, M.Kom.','Seminar Nasional',2016,2,'',NULL),
(8,'Integrasi Sains dan Teknologi dengan keIslaman pada Majelis Hikmah Fakultas Saintek UIN Sby','Ilham, M.Kom','Forum Fakultas',2016,1,'',NULL),
(9,'Analisis Dan Desain Penempatan Antrian Pemakaman Yang Aman Serta Ramah Lingkungan','Indri Sudanawati Rozas, M.Kom','Seminar Lokal',2016,1,'',NULL),
(10,'Seleksi Fitur Dua Tahap Menggunakan Information Gain dan Artificial Bee Colony untuk Kategorisasi Teks Berbasis Support Vector Machine','Khalid, M.Kom','Jurnal Systemic, Vol. 1, No. 2',2016,2,'',NULL),
(11,'Relevansi Swarm intelligence (Particle Swarm Optimisation) dalam Al-Quran','Khalid, M.Kom','Forum Fakultas',2016,1,'',NULL),
(12,'Pembuatan program Reservasi Ruangan di Perpustakaan berbasis web','Moch Yasin, S.Kom., M.Kom., MBA','Konferensi Internasional',2016,3,'',NULL),
(13,'Prototipe Sistem Informasi Deteksi Masjid Terdekat Berbasis Peta Multi Platform Sebagai Pendukung Pelaksanaan Ibadah Tepat Waktu','Moch Yasin, S.Kom., M.Kom., MBA','AICIS, Diktis Kemenag RI',2016,3,'',NULL),
(14,'Prototype Sistem Pendukung Keputusan Untuk Penetapan Jadwal Kuliah Menggunakan Algoritma Genetika','Mujib Ridwan, M.T','Jurnal Systemic, Vol. 2, No. 2',2016,2,'',NULL),
(15,'NORMATIVE THEOLOGICAL REASONING OF BIOMETRIC SYSTEMS: Analyze the Uniqueness of Fingerprint Pattern in Information Technology Implementation','Mujib Ridwan, M.T','Konferensi Internasional',2016,3,'',NULL),
(16,'“Upaya Pencegahan Penyakit Demam Berdarah Dengue (DBD) Berbasis Pondok Pesantren\" Di Desa Puton Kabupaten Jombang Jawa Timur','Mujib Ridwan, M.T','Digital Library UIN Sunan Ampel',2016,1,'',NULL),
(17,'\"SIG (Sistem Informasi Geografis) Pemetaan Pondok Pesantren Kota Surabaya\"','Mujib Ridwan, M.T','http://sby-ponpes.esy.es/index.php',2016,1,'http://sby-ponpes.esy.es/index.php',NULL),
(18,'\"SIM (Sistem Informasi Manajemen) Potensi Psikologi Siswa\"','Mujib Ridwan, M.T','http://sipopsiuinsa.eu5.org',2016,1,'http://sipopsiuinsa.eu5.org',NULL),
(19,'Ekonomi Lumbung dan Konstruksi Keberdayaan Petani Muslim Madiun','Muhammad Andik Izzuddin, MT','Jurnal Inferensi Vol. 10, No. 1',2016,2,'',NULL),
(20,'Smart Home berbasis IoT','Muhammad Andik Izzuddin, MT','Pameran Produk SI pada i-Fest 2016',2016,1,'',NULL),
(21,'Optimalisasi Akses Internet Lembaga, dan peluangnya','Muhammad Andik Izzuddin, MT','Forum Fakultas',2016,1,'',NULL),
(22,'Desain Prototype Sistem Informasi Hafalan Al Quran Berbasis Perspektif HCI','Dwi Rolliawati, MT','http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/189',2016,2,'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/189',NULL),
(23,'Desain Framework Kebijakan Internet Perguruan Tinggi Dalam Membangun University Social Responsibility (USR)','Muhammad Andik Izzuddin, MT','Seminar Nasional Pendidikan Sains PPs Unesa',2016,2,'',NULL),
(24,'Prosiding  Seminar Nasional (SENIATI) 2018 Fakultas Teknologi Industri - ITN Malang','Ahmad Yusuf, M. Kom','http://ejournal.itn.ac.id/index.php/seniati/article/view/1589',2017,2,'http://ejournal.itn.ac.id/index.php/seniati/article/view/1589',NULL),
(25,'Presenter pada Seminar Nasional Teknologi Informasi dan Multimedia (Semnasteknomedia) 2018','Anang Kunaefi, M. Kom','https://drive.google.com/drive/folders/18Ua8rBWYFZX_7iDp7sBSvBp6V5a214zp?usp=sharing',2017,2,'https://drive.google.com/drive/folders/18Ua8rBWYFZX_7iDp7sBSvBp6V5a214zp?usp=sharing',NULL),
(26,'Karakteristik Instrumen Penilaian Hasil Belajar Matematika Ranah Kognitif yang Dikembangkan Mengacu pada Model PISA','Dr. Kusaeri, M.Pd','http://ejournal.uin-suska.ac.id/index.php/SJME/article/view/3897',2017,2,'http://ejournal.uin-suska.ac.id/index.php/SJME/article/view/3897',NULL),
(27,'Studi Perilaku Cheating Siswa Madrasah dan Sekolah Islam Ketika Ujian Nasional','Dr. Kusaeri, M.Pd','http://journal.stainkudus.ac.id/index.php/Edukasia/article/view/1727',2017,2,'http://journal.stainkudus.ac.id/index.php/Edukasia/article/view/1727',NULL),
(28,'Terbentuknya Konsepsi Matematika pada Diri Anak dari Perspektif Teori Reifikasi dan APOS','Dr. Kusaeri, M.Pd','http://riset.unisma.ac.id/index.php/jpm/article/view/244',2017,2,'http://riset.unisma.ac.id/index.php/jpm/article/view/244',NULL),
(29,'Merawat Kebhinekaan demi Terwujudnya Indonesia bermartabat','Faris Mushlihul Amin, M. Kom','SEMINAR KEBANGSAAN oleh BAKESBANGPOL PROVINSI JAWA TIMUR BEKERJASAMA DENGAN GEPI JAWA TIMUR',2017,1,'',NULL),
(30,'Peran Organisasi Intra Kampus dalam Menciptakan Lulusan Berkualitas','Faris Mushlihul Amin, M. Kom','SEMINAR KEORGANISASIAN BEM STT NURUL JADID PROBOLINGGO',2017,1,'',NULL),
(31,'Implementasi Pengenalan Pola Untuk Mengevaluasi Hasil Pembelajaran Dengan Metode Fuzzy C-means','Ilham, M. Kom','5aaf78927ef1f.doc,http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/111',2017,2,'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/111',NULL),
(32,'A algorithm hybrid model of Bayesian for detection performance in unhealthy lifestyle','Ilham, M. Kom','5aaf785900f8d.pdf,http://ieeexplore.ieee.org/document/8304119/ dan https://drive.google.com/file/d/1JLHHLWyRTohIpZL7sfD6AbaWDSacLAbY/view?usp=sharing',2017,3,'https://drive.google.com/file/d/1JLHHLWyRTohIpZL7sfD6AbaWDSacLAbY/view?usp=sharing',NULL),
(33,'MENGUKUR PERSEPSI TERHADAP KONSEP GREEN COMPUTING DI PERGURUAN TINGGI BERBASIS ISLAM ELINVO, UNY 2017','Indri Sudanawati Rozas, M. Kom','5a94e53bd6902.pdf,http://elinvo.uny.ac.id/content/media/proceeding/PROSIDING%20SEMNAS%20ELINVO_14%20September%202017.pdf',2017,2,'http://elinvo.uny.ac.id/content/media/proceeding/PROSIDING%20SEMNAS%20ELINVO_14%20September%202017.pdf',NULL),
(34,'ISLAMIC GREEN COMPUTING IMPLEMENTASI KONSEP RAHMATAN LIL ALAMINDI ERA TEKNOLOGI INFORMASI','Indri Sudanawati Rozas, M. Kom','5a94e5d1481d4.pdf,http://ejournal.itn.ac.id/index.php/seniati/issue/view/119',2017,2,'http://ejournal.itn.ac.id/index.php/seniati/issue/view/119',NULL),
(35,'MENGKAJI KONSEP GREEN COMPUTING BERDASARKAN PERSPEKTIF UMAT ISLAM','Indri Sudanawati Rozas, M. Kom','5a96421e11e49.pdf,https://drive.google.com/open?id=11pYEkOfnvVnHQmUa3clH6mNCp2X9BTVC',2017,2,'https://drive.google.com/open?id=11pYEkOfnvVnHQmUa3clH6mNCp2X9BTVC',NULL),
(36,'Analisis Sentimen Twitter untuk Teks Berbahasa Indonesia Mengenai Peran Ormas Islam  dalam Penanganan Isu Radikalisme dengan Metode Support Vector Machine','Khalid, M. Kom','https://drive.google.com/drive/folders/1B3tB543MXuxS4-7t4Z5LnvDngfqQibPl?usp=sharing',2017,2,'https://drive.google.com/drive/folders/1B3tB543MXuxS4-7t4Z5LnvDngfqQibPl?usp=sharing',NULL),
(37,'Hadits Inspired Software Development Methodology.','Moch Yasin, S.Kom., M. Kom, M.B.A.','http://digilib.uinsby.ac.id/23616/1/Moch%20Yasin%2C%20Maisyatus%20Suadaa%20Irfana_Hadith%20inspired%20software.pdf',2017,3,'http://digilib.uinsby.ac.id/23616/1/Moch%20Yasin%2C%20Maisyatus%20Suadaa%20Irfana_Hadith%20inspired%20software.pdf',NULL),
(38,'Penerima Bantuan Penelitian Tahun 2017 UIN Sunan Ampel Surabaya pada kluster Pemula Kolektif','Muhammad Andik Izzuddin, MT','https://drive.google.com/file/d/1tIMTzOVvYwvX2Fljh0fsoEPc5fvncWGu/view?usp=sharing',2017,2,'https://drive.google.com/file/d/1tIMTzOVvYwvX2Fljh0fsoEPc5fvncWGu/view?usp=sharing',NULL),
(39,'Penelitian \"Robot Line Follower Berbasis Mikrokontroler untuk Kompetisi\"','Muhammad Andik Izzuddin, MT','https://drive.google.com/file/d/10A5z6w2h9sDztjLoMjDq7msIVBgo2/view?usp=sharing',2017,2,'https://drive.google.com/file/d/10A5z6w2h9sDztjLoMjDq7msIVBgo2/view?usp=sharing',NULL),
(40,'Teknologi Live Streaming sebagai Media Penunjang Dakwah dan Kegiatan Belajar Mengajar untuk Mendukung Cyber University','Achmad Teguh Wibowo, MT','http://proceedings.kopertais4.or.id/index.php/ancoms/article/view/133',2018,2,'http://proceedings.kopertais4.or.id/index.php/ancoms/article/view/133',NULL),
(41,'Developing an Assessment Instrument of Higher Order Thinking Skills in Mathematics with in Islamic Context','Dr. Kusaeri, M.Pd','https://iopscience.iop.org/article/10.1088/1742-6596/1097/1/012151/meta',2018,3,'https://iopscience.iop.org/article/10.1088/1742-6596/1097/1/012151/meta',NULL),
(42,'Menulis di Jurnal Systemic berjudul \"Prototipe Aplikasi Penghitungan Matrik menggunakan Java\" Vol. 4 No.1 Tahun 2018','Dwi Rolliawati, MT','https://drive.google.com/drive/u/1/folders/1yqGoEf6l9q05zp8sRSyKLqvPpY7I8ZWj?ogsrc=32',2018,2,'https://drive.google.com/drive/u/1/folders/1yqGoEf6l9q05zp8sRSyKLqvPpY7I8ZWj?ogsrc=32',NULL),
(43,'Prediksi Penerimaan Besasiswa Santri Pada Lembaga Pendidikan di Pesantren Nurul Huda Menggunakan Algoritma J48','Faris Mushlihul Amin, M. Kom','https://drive.google.com/open?id=130e6zgVFJZWh1TPzGW64ihp7rtsULkoz',2018,2,'https://drive.google.com/open?id=130e6zgVFJZWh1TPzGW64ihp7rtsULkoz',NULL),
(44,'Identifikasi Citra Daging Ayam Berformalin Menggunakan Metode Fitur Tekstur dan K-Nearest Neighbor (K-NN)','Faris Mushlihul Amin, M. Kom','http://jurnalsaintek.uinsby.ac.id/index.php/mantik/article/view/318',2018,2,'http://jurnalsaintek.uinsby.ac.id/index.php/mantik/article/view/318',NULL),
(45,'Analisis Dampak Perubahan Perangkat Lunak Menggunakan Graf Relasi Fungsi-Atribut','Ahmad Yusuf, M. Kom','http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/385',2018,2,'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/385',NULL),
(46,'PERANGKAT LUNAK PERHITUNGAN PERUBAHAN JABATAN DENGAN MENGGUNAKAN FUZZY ANALYTICAL HIERARCHY PROCESS','Ilham, M. Kom','http://jurnal.uinsu.ac.id/index.php/query/article/view/634',2018,2,'http://jurnal.uinsu.ac.id/index.php/query/article/view/634',NULL),
(47,'IMPLEMENTASI TEXT MINING UNTUK MENGUKUR CONCORDANCE KONSEP TATA KELOLA TEKNOLOGI INFORMASI DI INDONESIA','Indri Sudanawati Rozas, M. Kom','https://drive.google.com/open?id=18JlotBkx4qhGSFybj1kp0nGkXoyy2fLb',2018,2,'https://drive.google.com/open?id=18JlotBkx4qhGSFybj1kp0nGkXoyy2fLb',NULL),
(48,'International Conference on Record and Library','Moch Yasin, S.Kom., M. Kom, M.B.A.','https://drive.google.com/drive/folders/1vl6XK6Q6ikaL_vwrhcVx5ws7jc-lNF_v?usp=sharing',2018,3,'https://drive.google.com/drive/folders/1vl6XK6Q6ikaL_vwrhcVx5ws7jc-lNF_v?usp=sharing',NULL),
(49,'Penerima Bantuan Penelitian Tahun 2017 UIN Sunan Ampel Surabaya pada kluster Pemula Kolektif','Muhammad Andik Izzuddin, MT','https://drive.google.com/file/d/1tIMTzOVvYwvX2Fljh0fsoEPc5fvncWGu/view?usp=sharing',2018,1,'https://drive.google.com/file/d/1tIMTzOVvYwvX2Fljh0fsoEPc5fvncWGu/view?usp=sharing',NULL),
(50,'Menjadi Ketua Peneliti (dengan 1 anggota) dengan judul Adopsi Teknologi Informasi pada PTKIS di Jawa Timur','Yusuf Amrozi, M.MT','https://drive.google.com/open?id=1D5HsVPmpnlH8hLV_Hczwc40wb_IN97DQ',2018,1,'https://drive.google.com/open?id=1D5HsVPmpnlH8hLV_Hczwc40wb_IN97DQ',NULL),
(51,'Perancangan dan Pelatihan Website dan Database Anggota Ikatan Keluarga Alumni Pergerakan Mahasiswa Islam Indonesia Jawa Timur','Faris Mushlihul Amin, M. Kom','http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/98',2018,2,'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/98',NULL),
(52,'ISLAMIC GREEN COMPUTING: INTEGRASI ISLAM DAN SAINS UNTUK MENGHADAPI REVOLUSI INDUSTRI 4.0','Indri Sudanawati Rozas, M.Kom','Pertemuan Ilmiah BSNI',2018,2,'',NULL),
(53,'MANAJEMEN LAYANAN TEKNOLOGI INFROMASI: TANTANGAN DALAM KURIKULUM PERGURUAN TINGGI DI ERA REVOLUSI INDUSTRI 4.0','Indri Sudanawati Rozas, M.Kom','Seminar Nasional SNRT Poliban',2018,2,'',NULL),
(54,'KOMPARASI KREDIBILITAS PENYELENGGARAAN  UNBK DAN UNKP PADA PELAJARAN MATEMATIKA (Dimuat di Jurnal Ilmu Pendidikan Volume 24 No. 1 Tahun 2018)','Dr. A. Saepul Hamdani, M.Pd','http://journal2.um.ac.id/index.php/jip/article/view/5336',2018,2,'http://journal2.um.ac.id/index.php/jip/article/view/5336',NULL),
(55,'Profil berpikir analitis masalah aljabar siswa ditinjau dari gaya kognitif visualizer dan verbalizer','Dr. A. Saepul Hamdani, M.Pd','http://jrpm.uinsby.ac.id/index.php/jrpm/article/view/28/29',2018,1,'http://jrpm.uinsby.ac.id/index.php/jrpm/article/view/28/29',NULL),
(56,'Text Mining Approach for Topic Modelling of Corpus Alqur\'an in Indonesian Translation','Khalid, M. Kom','https://drive.google.com/drive/folders/1uMfKRee1OwlWuoPvA27JaRBvDxnGHmjO?usp=sharing',2018,3,'https://drive.google.com/drive/folders/1uMfKRee1OwlWuoPvA27JaRBvDxnGHmjO?usp=sharing',NULL),
(57,'Metode Hibridasi Artificial Bee Colony dan Fuzzy K-Modes untuk Klasterisasi Data Kategorikal','Khalid, M. Kom','https://drive.google.com/drive/folders/1i-3JslSJBPbtNjXj9S5-kqeFvLiQhDm2',2018,2,'https://drive.google.com/drive/folders/1i-3JslSJBPbtNjXj9S5-kqeFvLiQhDm2',NULL),
(58,'Pedagogical Beliefs about Critical Thinking among Indonesian Mathematics Pre-service Teachers','Dr. Kusaeri, M.Pd','https://www.e-iji.net/dosyalar/iji_2019_1_37.pdf',2018,3,'https://www.e-iji.net/dosyalar/iji_2019_1_37.pdf',NULL),
(59,'SOCIOECONOMIC STATUS, PARENTAL INVOLVEMENT IN LEARNING AND STUDENT’ MATHEMATICS ACHIEVEMENT IN INDONESIAN SENIOR HIGH SCHOOL','Dr. Kusaeri, M.Pd','https://journal.uny.ac.id/index.php/cp/article/view/21100',2018,3,'https://journal.uny.ac.id/index.php/cp/article/view/21100',NULL),
(60,'DESAIN TATA KELOLA TEKNOLOGI INFORMASI RAMAH LINGKUNGAN BERBASIS ITIL VERSI 3 (STUDI KASUS: PUSTIPD UIN SUNAN AMPEL SURABAYA)','Indri Sudanawati Rozas, M. Kom','https://jurnal.kominfo.go.id/index.php/komunika/article/view/1641/930',2018,2,'https://jurnal.kominfo.go.id/index.php/komunika/article/view/1641/930',NULL),
(61,'Perancangan dan Pelatihan Website dan Database Anggota Ikatan Keluarga Alumni Pergerakan Mahasiswa Islam Indonesia Jawa Timur','Faris Mushlihul Amin, M. Kom','http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/56',2019,2,'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/56',NULL),
(62,'Peningkatan Akses Perguruan Tinggi NU (PTNU) di Jawa Timur melalui Teknologi Tepat Guna di Bidang Sistem Informasi (Rancang Bangun dan Pelatihan Content Management System Website Ptnu di Jawa Timur)','Faris Mushlihul Amin, M. Kom, Achmad Teguh Wibowo, MT, Mujib Ridwan, S.Kom., M.T','http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/98',2019,2,'http://proceedings.uinsby.ac.id/index.php/ACCE/article/view/98',NULL),
(63,'Analisa Kebutuhan Sistem Hubungan Konsumsi (Energi dan Protein) Terhadap IMT Mahasiswa Fakultas Sains Teknologi Uin Sunan Ampel Surabaya','Ilham, M. Kom','https://drive.google.com/drive/folders/1pcUsbYY6eHw7UGl8btyvHVTjH6m1TEPr',2019,2,'https://drive.google.com/drive/folders/1pcUsbYY6eHw7UGl8btyvHVTjH6m1TEPr',NULL),
(64,'ANALISIS DAN DESAIN ALGORITMA HYBRID KRIPTOGRAFI UNTUK MANAJEMEN STRATEGI PENGAMANAN DATA PERUSAHAAN','Ilham, M. Kom','https://drive.google.com/drive/folders/1pcUsbYY6eHw7UGl8btyvHVTjH6m1TEPr',2019,2,'https://drive.google.com/drive/folders/1pcUsbYY6eHw7UGl8btyvHVTjH6m1TEPr',NULL),
(65,'International Journal of Instruction','Dr. Kusaeri, M.Pd','https://www.e-iji.net/dosyalar/iji_2019_1_37.pdf',2019,3,'https://www.e-iji.net/dosyalar/iji_2019_1_37.pdf',NULL),
(66,'Student Readiness and Challence in Completing Higher Order Thinking Skills Test Type for Mathematics (Infinity Journal Volume 8 Nomor 1 STKIP Siliwangi)','Dr. A. Saepul Hamdani, M.Pd','http://e-journal.stkipsiliwangi.ac.id/index.php/infinity/article/view/1125',2019,2,'http://e-journal.stkipsiliwangi.ac.id/index.php/infinity/article/view/1125',NULL),
(67,'Learning outcome of mathematics and science: Features of Indonesian madrasah students','Dr. Kusaeri, M.Pd','https://journal.uny.ac.id/index.php/jpep/article/view/24881',2019,3,'https://journal.uny.ac.id/index.php/jpep/article/view/24881',NULL),
(68,'Metode Hibridasi Artificial Bee Colony dan Fuzzy K-Modes untuk Klasterisasi Data Kategorikal','Khalid','https://drive.google.com/drive/folders/1i-3JslSJBPbtNjXj9S5-kqeFvLiQhDm2',2019,2,'https://drive.google.com/drive/folders/1i-3JslSJBPbtNjXj9S5-kqeFvLiQhDm2',NULL),
(69,'Pemanfaatan Teknologi Single Page Application (SPA) dalam Pembuatan Aplikasi Feedback Dosen dari Mahasiswa Sebagai Bentuk Pengawasan Lembaga Terhadap Kinerja Dosen di Bidang Pengajaran','Achmad Teguh Wibowo, MT','http://ejournal.unikama.ac.id/index.php/jst/article/view/3327',2019,2,'http://ejournal.unikama.ac.id/index.php/jst/article/view/3327',NULL),
(70,'pemnfaatan open erp (dollibar) untuk agenda dan member sebagai penunjang program ukm melek teknologi','Achmad Teguh Wibowo, MT','https://drive.google.com/file/d/1fsY4y1gCErReSumkoX4lJX0ejEUodUQ8/view?usp=sharing',2019,2,'https://drive.google.com/file/d/1fsY4y1gCErReSumkoX4lJX0ejEUodUQ8/view?usp=sharing',NULL),
(71,'Proceding Best ICON','Muhammad Andik Izzuddin, MT','https://drive.google.com/open?id=1LrNVM4NczKXfk4kqFt7OAGBln_C83U4y',2019,3,'https://drive.google.com/open?id=1LrNVM4NczKXfk4kqFt7OAGBln_C83U4y',NULL),
(72,'Pengembangan Model Usaha Tanaman Hidroponik Melalui Pemanfaatan Teknologi Tepat Guna Berbasis Media Informasi Pada Komunitas UMKM Pertanian Perkotaan','Muhammad Andik Izzuddin, MT','http://engagement.fkdp.or.id/index.php/engagement/article/view/53',2019,2,'http://engagement.fkdp.or.id/index.php/engagement/article/view/53',NULL),
(73,'DETEKSI PLAGIASI DOKUMEN SKRIPSI MAHASISWA MENGGUNAKAN METODE N-GRAMS DAN WINNOWING','Andhy Permadi, M.Kom','https://doi.org/10.24176/simet.v9i2.2535',2019,2,'https://doi.org/10.24176/simet.v9i2.2535',NULL),
(74,'Prosiding di Prosiding SNST Fakultas Teknik Universitas Wahid Hasyim Semarang','Indri Sudanawati Rozas, M. Kom','https://publikasiilmiah.unwahas.ac.id/index.php/PROSIDING_SNST_FT/article/view/2404',2019,2,'https://publikasiilmiah.unwahas.ac.id/index.php/PROSIDING_SNST_FT/article/view/2404',NULL),
(75,'International Conference On Quran-Hadith, Information Technology and Media: Challenges and Opportunities (ICONQUHAS) UIN Bandung','Indri Sudanawati Rozas, M. Kom','https://osf.io/preprints/inarxiv/b4z76/download',2019,3,'https://osf.io/preprints/inarxiv/b4z76/download',NULL),
(76,'Proceeding of Seminar Riset Terapan Nasional Politeknik Negeri Banjarmasin','Indri Sudanawati Rozas, M. Kom','http://e-prosiding.poliban.ac.id/index.php/snrt/article/view/272',2019,2,'http://e-prosiding.poliban.ac.id/index.php/snrt/article/view/272',NULL),
(77,'Prototipe Aplikasi Penghitung Matrik Berbasis Java','Dwi Rolliawati, MT','http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/312/305',2019,2,'http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC/article/view/312/305',NULL),
(78,'EVALUASI USABILITY SISTEM INFORMASI MANAJEMEN KEPEGAWAIAN BERBASIS ISO 9241-11','Dwi Rolliawati, MT','https://jurnal.kominfo.go.id/index.php/komunika/article/view/1702/991',2019,2,'https://jurnal.kominfo.go.id/index.php/komunika/article/view/1702/991',NULL),
(79,'Text Mining Approach for Topic Modelling of Corpus Al Qur\'an in Indonesian Translation','Dwi Rolliawati, MT','https://osf.io/preprints/inarxiv/b4z76/download',2019,3,'https://osf.io/preprints/inarxiv/b4z76/download',NULL);

/*Table structure for table `tabel_7_1_4` */

CREATE TABLE `tabel_7_1_4` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karya` varchar(256) NOT NULL,
  `url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=11 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_4` */

insert  into `tabel_7_1_4`(`id`,`karya`,`url`) values 
(1,'Paten NUI Menggunakan Kinect FIS-TSK',''),
(2,'PROTOTIPE SISTEM INFORMASI DETEKSI MASJID TERDEKAT MENGGUNAKAN PETA DIGITAL BERBASIS MULTI-PLATFORM DEVICE (MOBILE AND WEB) SEBAGAI PENDUKUNG PELAKSANAAN BADAH SHOLAT TEPAT WAKTU',''),
(3,'Hak Cipta Atas Judul Ciptaan : \"PERANCANGAN ROBOTIK BOAT PEMANTAUAN Tanggal dan tempat diumumkan SEDIMEN SUNGAI SEBAGAI DATA ANALISIS KEBIJAKAN PENGELOLAAN AIR DAS BRANTAS\" dari Kemnterian Hukum dan HAM',''),
(4,'Sertifikat HAKI atas \"Aplikasi Literasi dan Buku Berjenjang\" di Laboratorium Fakultas Tarbiyah',''),
(5,'Sertifikat HAKI atas Makalah \" Islamic Green Computing\"',''),
(6,'Buku KRIPTOGRAFI & KEAMANAN KOMPUTER : “Prinsip,Teoritis Dan Praktis\" ',''),
(7,'Teknologi Live Streaming: Media Penunjang Dakwah Dan Kegiatan Belajar Mengajar Untuk Mendukung Cyber University',''),
(8,'Sistem Pendukung Keputusan Untuk Proses Kelulusan Dan Evaluasi Kinerja Akademik Mahasiswa Menggunakan Teknik Data Mining',''),
(9,'Penerapan Data Mining Untuk Evaluasi Kinerja Akademik Mahasiswa Menggunakan Algoritma Naive Bayes Classifier',''),
(10,'Pedoman KKN Literasi dengan Pendekatan ABCD','');

/*Table structure for table `tabel_7_1_4_d` */

CREATE TABLE `tabel_7_1_4_d` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `karya` int(11) NOT NULL,
  `nama_dosen` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `KARYA_DOSEN` (`karya`),
  CONSTRAINT `KARYA_DOSEN` FOREIGN KEY (`karya`) REFERENCES `tabel_7_1_4` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=16 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_1_4_d` */

insert  into `tabel_7_1_4_d`(`id`,`karya`,`nama_dosen`) values 
(1,1,'Achmad Teguh Wibowo, MT'),
(2,2,'Achmad Teguh Wibowo, MT'),
(3,2,'Faris Muslihul Amin, M.Kom'),
(4,2,'Moch Yasin, M. Kom'),
(5,2,'Muhammad AndikIzzuddin, MT'),
(6,2,'Dkk.'),
(7,3,'Muhammad Andik Izzuddin, MT'),
(8,4,'Muhammad Andik Izzuddin, MT'),
(9,5,'Indri Sudanawati Rozas, M.Kom'),
(10,6,'Dwi Rolliawati, MT'),
(11,7,'Achmad Teguh Wibowo, MT'),
(12,7,'Faris Muslihul Amin, M.Kom'),
(13,8,'Mujib Ridwan, MT'),
(14,9,'Mujib Ridwan, MT'),
(15,10,'Andik Izzudin, MT');

/*Table structure for table `tabel_7_2_1` */

CREATE TABLE `tabel_7_2_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `sumber_dana` varchar(50) NOT NULL,
  `ts_2` int(11) NOT NULL DEFAULT '0',
  `ts_1` int(11) NOT NULL DEFAULT '0',
  `ts` int(11) NOT NULL DEFAULT '0',
  `short_sumber` varchar(32) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_2_1` */

insert  into `tabel_7_2_1`(`id`,`sumber_dana`,`ts_2`,`ts_1`,`ts`,`short_sumber`) values 
(1,'Pembiayaan sendiri oleh dosen',8,16,18,'Mandiri'),
(2,'PT yang bersangkutan',4,0,4,'PT'),
(3,'Depdiknas',0,0,0,''),
(4,'Institusi dalam negeri di luar Depdiknas',2,2,3,''),
(5,'Institusi luar negeri',0,0,0,'');

/*Table structure for table `tabel_7_2_1_lkpkm` */

CREATE TABLE `tabel_7_2_1_lkpkm` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `judul` varchar(200) NOT NULL,
  `short_sumber` varchar(32) NOT NULL,
  `sumber_dana` int(11) DEFAULT NULL,
  `ts` int(1) NOT NULL,
  `nip` char(18) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `peran` varchar(100) NOT NULL,
  `url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `sumber_7_1_1_lpdt` (`sumber_dana`),
  CONSTRAINT `sumber_7_2_1_lkpkm` FOREIGN KEY (`sumber_dana`) REFERENCES `tabel_7_2_1` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=58 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_2_1_lkpkm` */

insert  into `tabel_7_2_1_lkpkm`(`id`,`tahun`,`judul`,`short_sumber`,`sumber_dana`,`ts`,`nip`,`nama`,`peran`,`url`) values 
(1,2017,'Pelatihan pembuatan website dan Seminar tentang Teknologi serta dampaknya Terhadap Perilaku Hidup Sehat Santri Di pondok pesantren Nurul Huda','Mandiri',1,1,'','','',''),
(2,2017,'Narasumber Radio RRI','PT',2,1,'','','',''),
(3,2017,'Siaran RRI Pro 2 Tema Gadget','PT',2,1,'','','',''),
(4,2017,'Pelatihan internet sehat pada Remaja Masjid Bukit Palma Surabaya','PT',2,1,'','','',''),
(5,2017,'Penyuluhan\" Gadget dan Teknologi\" dengan tema Digital Literasi ','Mandiri',1,1,'','','',''),
(6,2017,'Narasumber pada Pelatihan Pengelolaan Data untuk Penertiban Sistem Administrasi Desa di Ds. Srirande','Mandiri',1,1,'','','',''),
(7,2017,'Pengabdian Di RRI Surabaya Tema Gadget ','Mandiri',1,1,'','','',''),
(8,2017,'Pengabdian Masyarakat di SMK Nurul Huda Situbondo','Mandiri',1,1,'','','',''),
(9,2017,'Pengabdian di PP Al Hidayah Mojosari','Mandiri',1,1,'','','',''),
(10,2017,'Kelas Inspirasi Tuban 2 ','Mandiri',1,1,'','','',''),
(11,2017,'RRI : Membumikan Literasi Informasi Digital Untuk Memerangi Hoax','Lembaga Lain',NULL,1,'','','',''),
(12,2017,'Pelatihan Manajemen Berbasis Sekolah di SMA Darul Mukhlasin','PT',2,1,'','','',''),
(13,2017,'Pengabdian Kepada Masyarakat \"Social Enterprise of Bambooland Maximizing the Role of Rural Communication towards Sustainable Economic Creative\" di Desa Purwobinangun, Kec. Pakem Sleman, DIY','Mandiri',1,1,'','','',''),
(14,2017,'Melakukan Pendampingan Masyarakat melalui menjadi reviewer Beasiswa LPDP pada Bulan September 2017','Lembaga Lain',NULL,1,'','','',''),
(15,2018,'Pengabdian Desain dan Pembuatan Website PT NU di Jawa Timur','Mandiri',1,0,'','','',''),
(16,2018,'Narasumber BOS Madrasah Kementrian Agama ','Mandiri',1,0,'','','',''),
(17,2018,'Kegiatan silaturahmi Yayasan Muslim Bukit Palma dengan tema \"Cerdas menjaga ukhuwah dalam era informasi berbasis digital\"','Mandiri',1,0,'','','',''),
(18,2018,'Kegiatan pengabdian masyarakat Play Mathematics di Taman Bacaan Masyarakat','Mandiri',1,0,'','','',''),
(19,2018,'Program\'Kegiatan\'Pengembangan\"Mutu\"Pendidikan\"Matematika\"di\" Madrasah\"Sekolah(Pedesaan','Mandiri',1,0,'','','',''),
(20,2018,'Pelatihan kepada Wali murid : sebagai narasumber pada \"Parenting Edukasi Penggunaan Gadget (HP) untuk anak-anak\" PAUD Jawaahirul Hikmah Ponpes Jawaahirul Hikmah tanggal 20 Juli 2018','Mandiri',1,0,'','','',''),
(21,2018,'Pembuatan Media Informasi LPTNU Jawa Timur','Luar PT',NULL,0,'','','',''),
(22,2018,'Menjadi pembicara dalam Seminar Parenting dengan tema “Bagaimana Peran Gadget dalam Pendidikan Anak”','Mandiri',1,0,'','','',''),
(23,2018,'Nara Sumber \"Parenting Edukasi penggunaan Gadget (HP) untuk anak anak\"','Mandiri',1,0,'','','',''),
(24,2018,'Pendamping Program KP-KAS Kota Surabaya','Lembaga Lain',NULL,0,'','','',''),
(25,2018,'Pengabdian Kepada Masyarakat Melalui Pembimbingan Mahasiswa KKN Reguler Gelombang II Tahun 2018 di Desa Kuwu, Kecamatan Balerejo, Kabupaten Madiun','Mandiri',1,0,'','','',''),
(26,2018,'Diseminasi dan Alih Teknologi dan Perangkat Otomasi Pertanian\" di KRPL RW 04 Kelurahan Jemursari, Wonocolo Surabaya','Mandiri',1,0,'','','',''),
(27,2018,'Pemetaan aset warga menggunakan teknologi GIS untuk menunjang kampung melek teknologi (study kasus kecamatan wonocolo surabaya)','Mandiri',1,0,'','','',''),
(28,2018,'Pengabdian Masyarakat di Gedung Juang 45 Medan tentang Digital Literasi','Mandiri',1,0,'','','',''),
(29,2018,'Workshop penguatan kinerja tenaga kependidikan madrasah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 19-21 November 2018','Mandiri',1,0,'','','',''),
(30,2018,'Workshop Peningkatan Kompetensi Pustakawan Madrasah Aliyah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 2-4 Oktober 2018','Mandiri',1,0,'','','',''),
(31,2018,'Workshop Penguatan Kompetensi Kepala Perpustakaan dan Kepala Laboratorium , Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 16-18 November 2018','Mandiri',1,0,'','','',''),
(32,2018,'Narasumber Bantuan Pengembangan Karir Pustakawan, yang diselenggarakan oleh Direktorat Jenderal Pendidikan Tinggi Islam, Kementerian Agama RI, pada tanggal 21-26 November 2018','Mandiri',1,0,'','','',''),
(33,2019,'Melakukan pengabdian masyarakat bersama FST Uinsa dan FT Univ Nurul Jadid tentang pesantren tanggap informasi di Ponpes Nurul Huda Situbondo','PT',2,-1,'','','',''),
(34,2019,'Melakukan Pengmas melalui menjadi pembicara sistem penjaminan mutu di kampus Umaha Sidoarjo','Mandiri',1,-1,'','','',''),
(35,2019,'\"Diseminasi dan Alih Teknologi dan Perangkat Otomasi Pertanian\" di KRPL RW 04 Kelurahan Jemursari, Wonocolo Surabaya','Mandiri',1,-1,'','','',''),
(36,2019,'Pemetaan Aset warga menggunkan Teknologi GIS Untuk menunjang program kampung melek teknologi (studi kasus kecamatan wonocolo surabaya)','Mandiri',1,-1,'','','',''),
(37,2019,'Sosialisasi Hasil Karya Perangkat Lunak Bersama Mahasiswa pada Masyarakat UKM','Mandiri',1,-1,'','','',''),
(38,2019,'Pendampingan Sekolah SDN Baturetnno 1 Tuban','Mandiri',1,-1,'','','',''),
(39,2019,'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri berbasi E-commerce','PT',2,-1,'','','',''),
(40,2019,'Diseminasi dan Alih Teknologi Perangkat Otomasi Pertanian','Mandiri',1,-1,'','','',''),
(41,2019,'Melakukan Kegiatan Pengabdian Bersama Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya dengan Fakultas Teknik Universitas Nurul Jadid Di SMK dan Pondok Pesantren Nurul Huda Situbondo','Mandiri',1,-1,'','','',''),
(42,2019,'pendampingan dan sosialisasi pengunaan aplikasi informasi jasa konstruksi kota malang di dinas pekerjaan kota malang','Mandiri',1,-1,'','','',''),
(43,2019,'\"Diseminasi dan Alih Teknologi Perangkat Otomasi Pertanian\" di KRPL RW 04 Kelurahan Jemurwonosari Kecamatan Wonocolo Kota Surabaya','Mandiri',1,-1,'','','',''),
(44,2019,'Pemetaan Aset Warga Menggunakan Teknologi GIS Untuk Menunjang Program Kampung Melek Teknologi (Studi Kasus Kec. Wonocolo Surabaya)','Mandiri',1,-1,'','','',''),
(45,2019,'Pengisi Acara Saintek Bersholawat','PT',2,-1,'','','',''),
(46,2019,'Pendampingan IT bagi Guru-guru MTsN 1 Surabaya','PT',2,-1,'','','',''),
(47,2019,'Pendampingan dan Sosialisasi penggunaan aplikasi SIPJAKON di PUPR Kota Malang','Mandiri',1,-1,'','','',''),
(48,2019,'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri Berbasis E-Commerce di Pondok Pesantren Nurul Huda Yayasan Cendekia Insani Situbondo','Mandiri',1,-1,'','','',''),
(49,2019,'Kegiatan Pengabdian Kepada Masyarakat di SMK Nurul Huda Situbondo','Mandiri',1,-1,'','','',''),
(50,2019,'Pengabdian di Desa Wisata Gosari Kabupaten Gresik','Mandiri',1,-1,'','','',''),
(51,2019,'Penyuluhan gadget warning system di SMP 62','Mandiri',1,-1,'','','',''),
(52,2019,'Melaksanakan Pengabdian Masyarakat di Gedung Juang 45 Medan tentang Digital Literasi','Mandiri',1,-1,'','','',''),
(53,2019,'Pendampingan Pengabdian di SMK Probolinggo','Mandiri',1,-1,'','','',''),
(54,2019,'Melaksanakan Kegiatan Pengabdian Masyarakat Math4rural dengan Kegiatan Pelatihan Evalausi Pembelajaran Matematika bagi Guru SMP/MTs. di Panggungrejo 194 Gondanglegi Malang tanggal 01 sd 02 Desember 20','Mandiri',1,-1,'','','',''),
(55,2019,'penguatan kinerja tenaga kependidikan madrasah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 19-21 November 2018','Luar PT',NULL,-1,'','','',''),
(56,2019,'Peningkatan Kompetensi Pustakawan Madrasah Aliyah, Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 2-4 Oktober 2018','Luar PT',NULL,-1,'','','',''),
(57,2019,'Penguatan Kompetensi Kepala Perpustakaan dan Kepala Laboratorium , Yang diselenggarakan oleh Direktorat GTK Madrasah, Dirjen Pendis Kementerian Agama, Tanggal 16-18 November 2018','Luar PT',NULL,-1,'','','','');

/*Table structure for table `tabel_7_2_2` */

CREATE TABLE `tabel_7_2_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(4) NOT NULL,
  `kegiatan` varchar(256) NOT NULL,
  `url` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_2_2` */

insert  into `tabel_7_2_2`(`id`,`tahun`,`kegiatan`,`url`) values 
(1,2016,'Pembimbingan mahasiswa website Badan Wakaf Islam',''),
(2,2016,'Pendamping mahasiswa program literasi',''),
(3,2016,'Pelatihan anak sekolah di Taman Pinang Sidoarjo',''),
(4,2016,'Pelatihan Workshop peningkatan SDM Teknologi Informasi, SDIT Al Firdaus, Mojokerto',''),
(5,2016,'Memberi pelatihan kepada SMA Darul Mukhlasin Probolinggo',''),
(6,2016,'Pembuatan website Fakultas Sains dan Teknologi, UIN Sunan Ampel Surabaya',''),
(7,2016,'Pembuatan website Prodi Sistem Informasi, UIN Sunan Ampel Surabaya\r',''),
(8,2016,'Pembuatan aplikasi remunerasi UIN Sunan Ampel Surabaya ',''),
(9,2017,'Pelatihan pembuatan website dan Seminar tentang Teknologi serta dampaknya Terhadap Perilaku Hidup Sehat Santri Di pondok pesantren Nurul Huda',''),
(10,2017,'Pelatihan internet sehat pada Remaja Masjid Bukit Palma Surabaya',''),
(11,2017,'Penyuluhan\" Gadget dan Teknologi\" dengan tema Digital Literasi',''),
(12,2017,'Narasumber pada Pelatihan Pengelolaan Data untuk Penertiban Sistem Administrasi Desa di Ds. Srirande',''),
(13,2017,'Pelatihan Manajemen Berbasis Sekolah di SMA Darul Mukhlasin',''),
(14,2017,'Pengabdian Kepada Masyarakat \"Social Enterprise of Bambooland Maximizing the Role of Rural Communication towards Sustainable Economic Creative\" di Desa Purwobinangun, Kec. Pakem Sleman, DIY',''),
(15,2018,'Pengabdian Desain dan Pembuatan Website PT NU di Jawa Timur\r',''),
(16,2018,'Kegiatan silaturahmi Yayasan Muslim Bukit Palma dengan tema \"Cerdas menjaga ukhuwah dalam era informasi berbasis digital\"',''),
(17,2019,'Pengembangan Ekonomi Kreatif Pesantren Produk Batik Tulis Santri berbasi E-commerce',''),
(18,2019,'Melakukan Kegiatan Pengabdian Bersama Fakultas Sains dan Teknologi UIN Sunan Ampel Surabaya dengan Fakultas Teknik Universitas Nurul Jadid Di SMK dan Pondok Pesantren Nurul Huda Situbondo','');

/*Table structure for table `tabel_7_3_1` */

CREATE TABLE `tabel_7_3_1` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_instansi` varchar(128) NOT NULL,
  `jenis_kegiatan` varchar(256) NOT NULL,
  `mulai` varchar(32) NOT NULL,
  `berakhir` varchar(32) NOT NULL,
  `manfaat` varchar(1024) NOT NULL,
  `url_instansi` varchar(256) NOT NULL,
  `url_kegiatan` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=40 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_3_1` */

insert  into `tabel_7_3_1`(`id`,`nama_instansi`,`jenis_kegiatan`,`mulai`,`berakhir`,`manfaat`,`url_instansi`,`url_kegiatan`) values 
(1,'Radio RRI Pro2','Talkshow Dunia Gadget','Januari 2015','Desember 2015','Sarana mengenalkan PS kepada masyarakat serta memberikan pemahaman yang benar tentang pemanfaatan Teknologi Informasi bagi masyarakat','',''),
(2,'AISINDO (Association of Information System Indonesia)','Pendampingan penyusunan kurikulum KKNI Program Studi','Desember 2014','Desember 2015','Tim kurikulum mendapatkan benchmark dari asosiasi profesi sistem informasi','',''),
(3,'LSP INIXINDO','Sertifikasi kompetensi mahasiswa (bidang: programming)','Nopember 2016','Desember 2016','Penyelenggaraan penguatan praktikum dan ujian sertifikasi profesi BNSP (Badan Nasional Sertifikasi Profesi)','',''),
(4,'RRI Pro2 FM','Mengisi rubrik dengan tema ‘Gadget’ setiap bulan','Januari 2014','Desember 2016','Mengenalkan program studi sistem informasi kepada khalayak, serta menyebarkan keilmuan kepada masyarakat.','',''),
(5,'Prodi Sistem Informasi UIN Maulana Malik Ibrahim Malang','Penyelenggaraan kuliah tamu untuk mahasiswa','Desember 2016','Sekarang','Updating keilmuan di bidang sistem informasi dan teknologi informasi','',''),
(6,'Traveloka','Penyelenggaraan kuliah tamu untuk mahasiswa','Desember 2016','Sekarang','Updating keilmuan di bidang sistem informasi dan teknologi informasi','',''),
(7,'Bank Indonesia','Pemberian beasiswa mahasiswa berprestasi','Januari 2015','Desember 2016','Mendapat pendanaan sekaligus dukungan beasiswa','',''),
(8,'Digital Sense','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(9,'Jawa Pos','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(10,'Perusahaan Gas Negara','Penyelenggaraan kuliah tamu untuk mahasiswa','Mei 2016','Sekarang','Updating keilmuan terkait bidang sistem informasi dan teknologi informasi','',''),
(11,'Pemkab Sidoarjo','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(12,'Mitra Arofah','Penyelenggaraan pengabdian masyarakat','Agustus 2016','Sekarang','Mengenalkan program studi sistem informasi kepada khalayak, serta menyebarkan keilmuan kepada masyarakat.','',''),
(13,'SMK Kesehatan Al Yasini Pasuruan','Penyelenggaraan pengabdian masyarakat','Agustus 2016','Sekarang','Mengenalkan program studi sistem informasi kepada khalayak, serta menyebarkan keilmuan kepada masyarakat.','',''),
(14,'SMA Darul Mukhlasin Probolinggo','Penyelenggaraan pengabdian masyarakat','Agustus 2016','Sekarang','Mengenalkan program studi sistem informasi kepada khalayak, serta menyebarkan keilmuan kepada masyarakat.','',''),
(15,'Semen Indonesia','Sponsorship kegiatan himpunan mahasiswa','Nopember 2016','Sekarang','Mendapat pendanaan sekaligus dukungan sponsor','',''),
(16,'SIER','Sponsorship kegiatan himpunan mahasiswa','Nopember 2016','Sekarang','Mendapat pendanaan sekaligus dukungan sponsor','',''),
(17,'ITS','Kerjasama himpunan mahasiswa sistem informasi','Mei 2016','Juli 2016','Mendapatkan kesempatan untuk berbagi pengalaman memanaje himpunan mahasiswa sistem informasi','',''),
(18,'Universitas Brawijaya','Kerjasama himpunan mahasiswa sistem informasi','Mei 2016','Juli 2016','Mendapatkan kesempatan untuk berbagi pengalaman mengelola himpunan mahasiswa sistem informasi','',''),
(19,'Catfiz','Penyelenggaraan kuliah tamu untuk mahasiswa','Nopember 2016','Sekarang','Updating keilmuan terkait bidang sistem informasi dan teknologi informasi','',''),
(20,'PT POS Indonesia Cabang Pasuruan','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(21,'Dinas Pendidikan Dan Kebudayaan Sidoarjo','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(22,'Badan Wakaf Indonesia','Tempat magang mahasiswa (pembuatan web BWI)','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(23,'PT Indotech Infrastruktur Solution','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(24,'Dinas Perpustakaan dan Kearsipan Provinsi Jawa Timur','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(25,'PDAM Nganjuk','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(26,'MI Subulussalam Mondo','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(27,'Stand Studio','Tempat magang mahasiswa','Januari 2017','Sekarang','Mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(28,'SMKN 9 Malang','Tempat Pengabdian Masyarakat','2018','Sekarang','Memberikan kesempatan untuk lokasi pengabdian masyarakat','',''),
(29,'XP Solution','Pengayaan kompetensi','2018','Sekarang','Dukungan sertifikasi kompetens mahasiswa','',''),
(30,'Kominfo','Tempat Magang mahasiswa','2018','2020','mendapatkan tempat magang untuk mahasiswa sebagai sarana aplikasi keilmuan','',''),
(31,'SMPN 62 Surabaya','Tempat Pengabdian Masyarakat','2019','2025','Mahasiswa melakukan pengajaran ekstra kurikuler komputer','',''),
(32,'Universitas Nurul Jadid Paiton Probolinggo','Penelitian, pengabdian dan pemanfaatan sarana prasarana','2018','2023','Dosen dan mahasiswa dapat saling bersinergi dalam melakukan penelitian, dan pengabdian kepada masyarakat serta pemanfaatan sarana dan prasarana','',''),
(33,'Pengurus Cabang Istimewa NU Jerman','Pendidikan, penelitian, pengabdian kepada masyarakat serta peningkatan kualitas sumber daya manusia','2018','2023','Dosen terbantu dalam pelaksanaan pendidikan, penelitian dan pengabdian kepada masyarakat','',''),
(34,'Bank Indonesia','Beasiswa Prestasi Pendidikan Tinggi','2016','2023','Mahasiswa terbantu dalam pelaksanaan pendidikan','',''),
(35,'Pena Ameen','Pengembangan peningkatan mahasiswa','2018','2019','Mahasiwa mendapatkan fasilitas magang','',''),
(36,'Media Center PKB','Pengembangan peningkatan mahasiswa','2018','2019','Mahasiwa mendapatkan fasilitas magang','',''),
(37,'BNN Kota Surabaya','Pengembangan peningkatan mahasiswa','2018','2020','Mahasiwa mendapatkan fasilitas magang dan riset','',''),
(38,'Sevima','Pengembangan Prodi','2018','2020','Mahasiwa mendapatkan kuliah tamu dan prodi mendapatkan rekomendasi pengembangan kurikulum','',''),
(39,'UIN Maliki','Kerjasama riset dan kolaborasi pendidikan','2018','2020','Dosen mendapatkan kerjasama riset, dan mahasiswa mendapatkan kuliah tamu','','');

/*Table structure for table `tabel_7_3_2` */

CREATE TABLE `tabel_7_3_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_instansi` varchar(128) NOT NULL,
  `jenis_kegiatan` varchar(256) NOT NULL,
  `mulai` varchar(32) NOT NULL,
  `berakhir` varchar(32) NOT NULL DEFAULT 'Sekarang',
  `manfaat` varchar(1024) NOT NULL,
  `url_instansi` varchar(256) NOT NULL,
  `url_kegiatan` varchar(512) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_7_3_2` */

insert  into `tabel_7_3_2`(`id`,`nama_instansi`,`jenis_kegiatan`,`mulai`,`berakhir`,`manfaat`,`url_instansi`,`url_kegiatan`) values 
(1,'SES (Senior Experten Services) Jerman','Kuliah tamu dan pendampingan','Maret','Sekarang','Updating keilmuan di bidang sistem informasi dan teknologi informasi','',''),
(2,'Oracle Academy','Peningkatan kompetensi dosen dan mahasiswa','September 2014','Sekarang','Peningkatan kompetensi dosen dan mahasiswa serta sertifikasi bidang keahlian sistem informasi','',''),
(3,'MORA','Beasiswa kursus serta kuliah luar negeri','April 2015','Sekarang','Peningkatan kompetensi dan kemampuan dosen serta mahasiswa','',''),
(4,'Fukuoka University','Kerjasama di bidang penelitian','Oktober 2016','Sekarang','Kesempatan untuk berkolaborasi penelitian di bidang sistem informasi','',''),
(5,'Hiroshima University','Kerjasama di bidang penelitian','Oktober 2016','Sekarang','Kesempatan untuk berkolaborasi penelitian di bidang sistem informasi','',''),
(6,'SILE (Supporting Islamic Leadership in Indonesia)','Kerjasama di bidang penguatan leadership','Januari 2016','Sekarang','Penguatan kapasitas leadership untuk dosen maupun tenaga kependidikan','',''),
(7,'IDB (Islamic Development Bank)','Kerjasama di bidang pendanaan sarana dan prasarana','Januari 2016','Sekarang','Pendanaan gedung serta sarana laboratorium integrasi UIN Sunan Ampel Surabaya','','');

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
