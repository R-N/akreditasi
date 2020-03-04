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
) ENGINE=InnoDB AUTO_INCREMENT=2 DEFAULT CHARSET=latin1;

/*Data for the table `cards` */

/*Table structure for table `dokumen_pendukung` */

CREATE TABLE `dokumen_pendukung` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(16) NOT NULL,
  `nama` varchar(256) NOT NULL,
  `url` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_dokumen_pendukung` (`parent`),
  CONSTRAINT `parent_dokumen_pendukung` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=3 DEFAULT CHARSET=latin1;

/*Data for the table `dokumen_pendukung` */

insert  into `dokumen_pendukung`(`id`,`parent`,`nama`,`url`) values 
(1,'0','Dokumen Evaluasi Diri','https://www.google.com/'),
(2,'0','Dokumen Borang','https://www.google.com/');

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
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `ids` */

insert  into `ids`(`id`,`name`) values 
('0',''),
('1.1',''),
('1.1 M',''),
('1.1 P',''),
('1.1 SS',''),
('1.1 T',''),
('1.1 V',''),
('1.1.2',''),
('1.1.3',''),
('1.1.4',''),
('1.1.5.1',''),
('1.1.5.1.1',''),
('1.1.5.1.2',''),
('1.1.5.1.3',''),
('1.1.5.1.4',''),
('1.1.5.1.5',''),
('1.2',''),
('2.1',''),
('2.2',''),
('2.3',''),
('2.4',''),
('2.5',''),
('2.6',''),
('3.3',''),
('3.3.1',''),
('3.3.2',''),
('3.3.3',''),
('3.4',''),
('4.1',''),
('4.2',''),
('4.3.1',''),
('4.3.2',''),
('4.3.3',''),
('4.3.4',''),
('4.3.5',''),
('4.4.1',''),
('4.4.2',''),
('4.5.1',''),
('4.5.2',''),
('4.5.3',''),
('4.5.4',''),
('4.5.5',''),
('4.6.1',''),
('4.6.2',''),
('5.1.1',''),
('5.1.1.1',''),
('5.1.1.2',''),
('5.1.1.3',''),
('5.1.2.1',''),
('5.1.2.2',''),
('5.1.3',''),
('5.1.4',''),
('5.2',''),
('5.3.1',''),
('5.3.2',''),
('5.4.1',''),
('5.4.2',''),
('5.5',''),
('5.5.1',''),
('5.5.2',''),
('5.5.2 A',''),
('5.5.2 B',''),
('5.6',''),
('5.7',''),
('6.1',''),
('6.2.1.1',''),
('6.2.1.2',''),
('6.2.2',''),
('6.2.3',''),
('6.3.1',''),
('6.3.2',''),
('6.3.3',''),
('6.4.1.1',''),
('6.4.1.2',''),
('6.4.2',''),
('6.4.3',''),
('6.5.1',''),
('6.5.2',''),
('7.1.1',''),
('7.1.2 A',''),
('7.1.2 B',''),
('7.1.3',''),
('7.1.4',''),
('7.2.1',''),
('7.2.2',''),
('7.3.1',''),
('7.3.2','');

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
) ENGINE=InnoDB AUTO_INCREMENT=19 DEFAULT CHARSET=latin1;

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
(16,'1.1.5.1.1',1,'Penguatan internal prodi.'),
(17,'1.1.5.1.1',2,'Peningkatan kualitas SDM.'),
(18,'1.1.5.1.1',3,'Meningkatkan mutu penelitian dan pengabdian kepada masyarakat.');

/*Table structure for table `paragraf` */

CREATE TABLE `paragraf` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `parent` varchar(16) NOT NULL,
  `title` varchar(256) NOT NULL,
  `text` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `parent_paragraph` (`parent`),
  CONSTRAINT `parent_paragraph` FOREIGN KEY (`parent`) REFERENCES `ids` (`id`) ON UPDATE NO ACTION
) ENGINE=InnoDB AUTO_INCREMENT=50 DEFAULT CHARSET=latin1;

/*Data for the table `paragraf` */

insert  into `paragraf`(`id`,`parent`,`title`,`text`) values 
(2,'1.1.2','Visi','\"Menjadi Program Studi Sistem Informasi yang unggul dan kompetitif\"'),
(3,'1.1','Misi','Misi'),
(4,'1.1','Tujuan','Tujuan'),
(5,'1.1','Sasaran dan Strategi','Sasaran dan Strategi'),
(6,'1.2','Sosialisasi','Sosialisasi'),
(7,'2.1','Sistem Tata Pamong','Sistem Tata Pamong'),
(9,'2.2','Kepemimpinan','Kepemimpinan'),
(10,'2.3','Pengelolaan','Pengelolaan'),
(11,'2.4','Penjaminan Mutu','Penjaminan Mutu'),
(12,'2.6','Upaya untuk peningkatan animo calon mahasiswa','Upaya untuk peningkatan animo calon mahasiswa'),
(13,'2.6','Upaya peningkatan mutu manajemen','Upaya peningkatan mutu manajemen'),
(14,'2.6','Upaya untuk peningkatan mutu lulusan','Upaya untuk peningkatan mutu lulusan'),
(15,'2.6','Upaya untuk pelaksanaan dan hasil kerjasama kemitraan','Upaya untuk pelaksanaan dan hasil kerjasama kemitraan'),
(16,'2.6','Upaya dan prestasi memperoleh dana hibah kompetitif','Upaya dan prestasi memperoleh dana hibah kompetitif'),
(17,'3.3','Uraian metode, proses, dan mekanisme studi pelacakan lulusan','uraian metode, proses, dan mekanisme studi pelacakan lulusan'),
(18,'3.3.2','Penjelasan Rata-rata waktu tunggu lulusan untuk memperoleh pekerjaan yang pertama','Penjelasan Rata-rata waktu tunggu lulusan untuk memperoleh pekerjaan yang pertama'),
(19,'3.3.3','Penjelasan Persentase lulusan yang bekerja pada bidang yang sesuai dengan keahliannya','Penjelasan Persentase lulusan yang bekerja pada bidang yang sesuai dengan keahliannya'),
(21,'3.4','Uraian himpunan alumni','Uraian himpunan alumni'),
(23,'4.1','Sistem Seleksi dan Pengembangan','Sistem Seleksi dan Pengembangan'),
(25,'4.2','Monitoring dan Evaluasi','Monitoring dan Evaluasi'),
(26,'4.6.2','Upaya Meningkatkan Kualifikasi dan Kompetensi Tenaga Kependidikan','Upaya Meningkatkan Kualifikasi dan Kompetensi Tenaga Kependidikan'),
(27,'5.1.1','5.1.1.1 Uraian kompetensi utama lulusan','Uraian kompetensi utama lulusan'),
(28,'5.1.1','5.1.1.2 Uraian kompetensi pendukung lulusan','Uraian kompetensi pendukung lulusan'),
(29,'5.1.1','5.1.1.3 Uraian kompetensi lainnya/pilihan lulusan','Uraian kompetensi lainnya/pilihan lulusan'),
(30,'5.2','Mekanisme','Mekanisme'),
(31,'5.2','Pihak yang dilibatkan','Pihak yang dilibatkan'),
(32,'5.3.1','Mekanisme penyusunan materi','Mekanisme penyusunan materi'),
(33,'5.3.1','Mekanisme monitoring kehadiran dosen dan mahasiswa','Mekanisme monitoring kehadiran dosen dan mahasiswa'),
(34,'5.3.1','Mekanisme monitoring materi kuliah','Mekanisme monitoring materi kuliah'),
(35,'5.5','Rata-rata banyaknya mahasiswa per dosen pembimbing TA: 0\r\nRata-rata jumlah pertemuan dosen-mahasiswa untuk menyelesaiakan TA: 0','Rata-rata banyaknya mahasiswa per dosen pembimbing TA: 0\r\nRata-rata jumlah pertemuan dosen-mahasiswa untuk menyelesaiakan TA: 0'),
(36,'5.5.1','Panduan pembimbingan TA','Panduan pembimbingan TA'),
(37,'5.5.2 A','PENYELESAIAN TUGAS AKHIR ATAU SKRIPSI','Rata-rata lama penyelesaian tugas akhir/skripsi pada tiga tahun terakhir'),
(38,'5.5.2 B','','Menurut kurikulum tugas akhir direncanakan (semester): '),
(39,'5.7','Kebijakan tentang suasana akademik','Kebijakan tentang suasana akademik'),
(41,'5.7','Ketersediaan dan jenis prasaran, sarana dan dana yang memungkinkan terciptanya interaksi akademik antara sivitas akademika','Ketersediaan dan jenis prasaran, sarana dan dana yang memungkinkan terciptanya interaksi akademik antara sivitas akademika'),
(42,'5.7','Program dan kegiatan di dalam dan di luar proses pembelajaran','Program dan kegiatan di dalam dan di luar proses pembelajaran'),
(43,'5.7','Interaksi akademik antara dosen-mahasiswa, antar mahasiswa, serta antar dosen','Interaksi akademik antara dosen-mahasiswa, antar mahasiswa, serta antar dosen'),
(44,'5.7','Pengembangan perilaku kecendikiawanan','Pengembangan perilaku kecendikiawanan'),
(45,'6.1','Keterlibatan ps dalam perencanaan anggaran dan pengelolaan dana\r\n','Keterlibatan ps dalam perencanaan anggaran dan pengelolaan dana\r\n'),
(46,'6.5.1','Penjelasan sistem informasi dari fasilitas yang digunakan prodi untuk pembelajaran','Penjelasan sistem informasi dari fasilitas yang digunakan prodi untuk pembelajaran'),
(47,'7.1.2 A','Mahasiswa tugas akhir yang dilibatkan dalam penelitian dosen dalam tiga tahun','Adakah mahasiswa tugas akhir yang dilibatkan dalam penelitian dosen dalam tiga tahun terakhir? Ada'),
(48,'7.1.2 B','','Jika ada, banyaknya mahasiswa PS yang ikut serta dalam penelitian dosen adalah 5 orang, dari 19 mahasiswa yang menjalankan tugas akhir melalui skripsi'),
(49,'7.2.2','Penjelasan tingkat partisipasi dan bentuk keterlibatan mahasiswa dalam kegiatan pengabdian','Penjelasan tingkat partisipasi dan bentuk keterlibatan mahasiswa dalam kegiatan pengabdian');

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

/*Table structure for table `tabel_2_5` */

CREATE TABLE `tabel_2_5` (
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `dari` varchar(16) NOT NULL,
  `isi` varchar(1024) NOT NULL,
  `tindak_lanjut` varchar(1024) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_2_5` */

insert  into `tabel_2_5`(`id`,`dari`,`isi`,`tindak_lanjut`) values 
(1,'Alumni','',''),
(2,'Dosen','',''),
(3,'Mahasiswa','',''),
(4,'Pengguna Lulusan','','');

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
  `ipk_min` decimal(10,0) NOT NULL DEFAULT '0',
  `ipk_rat` decimal(10,0) NOT NULL DEFAULT '0',
  `ipk_mak` decimal(10,0) NOT NULL DEFAULT '0',
  `persen_low` decimal(10,0) NOT NULL DEFAULT '0',
  `persen_mid` decimal(10,0) NOT NULL DEFAULT '0',
  `persen_high` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`tahun`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_1` */

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
  CONSTRAINT `tahun_3_1_1_lis` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_1` (`tahun`) ON UPDATE CASCADE
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
  `ipk` decimal(10,0) NOT NULL,
  `id_alumni` int(11) DEFAULT NULL,
  PRIMARY KEY (`id`),
  KEY `tahun_3_1_1_ll` (`tahun`),
  CONSTRAINT `tahun_3_1_1_ll` FOREIGN KEY (`tahun`) REFERENCES `tabel_3_1_1` (`tahun`) ON UPDATE CASCADE
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
  `id` int(11) NOT NULL,
  `kegiatan` varchar(256) NOT NULL,
  `tingkat` tinyint(4) NOT NULL,
  `prestasi` varchar(256) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tingkat_kegiatan_3_1_3` (`tingkat`),
  CONSTRAINT `tingkat_kegiatan_3_1_3` FOREIGN KEY (`tingkat`) REFERENCES `tingkat_kegiatan` (`id`) ON UPDATE CASCADE
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_3` */

/*Table structure for table `tabel_3_1_4` */

CREATE TABLE `tabel_3_1_4` (
  `angkatan` int(11) NOT NULL,
  `jumlah_lulusan` int(11) NOT NULL DEFAULT '0',
  PRIMARY KEY (`angkatan`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_1_4` */

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

/*Table structure for table `tabel_3_1_4_ll` */

CREATE TABLE `tabel_3_1_4_ll` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `angkatan` int(4) NOT NULL,
  `nim` char(9) NOT NULL,
  `nama` varchar(50) NOT NULL,
  `laki` tinyint(1) NOT NULL,
  `wisuda` int(11) NOT NULL,
  `ipk` decimal(10,0) NOT NULL,
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
  `sangat_baik` decimal(10,0) NOT NULL DEFAULT '0',
  `baik` decimal(10,0) NOT NULL DEFAULT '0',
  `cukup` decimal(10,0) NOT NULL DEFAULT '0',
  `kurang` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_3_3_1` */

insert  into `tabel_3_3_1`(`id`,`kemampuan`,`sangat_baik`,`baik`,`cukup`,`kurang`) values 
(1,'Integritas (etika dan moral)',0,0,0,0),
(2,'Keahlian berdasarkan bidang ilmu (profesionalisme)',0,0,0,0),
(3,'Bahasa Inggris',0,0,0,0),
(4,'Penggunaan Teknologi Informasi',0,0,0,0),
(5,'Komunikasi',0,0,0,0),
(6,'Kerjasama Tim',0,0,0,0),
(7,'Pengembangan Diri',0,0,0,0);

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
  `sks_ps_sendiri` decimal(10,0) NOT NULL DEFAULT '0',
  `sks_ps_lain` decimal(10,0) NOT NULL DEFAULT '0',
  `sks_pt_lain` decimal(10,0) NOT NULL DEFAULT '0',
  `sks_penelitian` decimal(10,0) NOT NULL DEFAULT '0',
  `sks_pengabdian` decimal(10,0) NOT NULL DEFAULT '0',
  `sks_man_sendiri` decimal(10,0) NOT NULL DEFAULT '0',
  `sks_man_lain` decimal(10,0) NOT NULL DEFAULT '0',
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
  `tingkat` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tingkat prestasi` (`tingkat`),
  CONSTRAINT `tingkat prestasi` FOREIGN KEY (`tingkat`) REFERENCES `tingkat_kegiatan` (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1;

/*Data for the table `tabel_4_5_4` */

/*Table structure for table `tabel_4_5_5` */

CREATE TABLE `tabel_4_5_5` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `nama_dosen` varchar(50) NOT NULL,
  `organisasi` varchar(50) NOT NULL,
  `tahun_awal` int(4) NOT NULL,
  `tahun_akhir` int(4) NOT NULL,
  `tingkat` tinyint(4) NOT NULL,
  PRIMARY KEY (`id`),
  KEY `tingkat_organisasi_dosen_tetap` (`tingkat`),
  CONSTRAINT `tingkat_organisasi_dosen_tetap` FOREIGN KEY (`tingkat`) REFERENCES `tingkat_kegiatan` (`id`) ON UPDATE CASCADE
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
  `rata_pertemuan` decimal(10,0) NOT NULL DEFAULT '0',
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
  `jumlah_ts_2` decimal(10,0) NOT NULL DEFAULT '0',
  `jumlah_ts_1` decimal(10,0) NOT NULL DEFAULT '0',
  `jumlah_ts` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`),
  KEY `sumber_dana_diperoleh` (`sumber_dana`),
  CONSTRAINT `sumber_dana_diperoleh` FOREIGN KEY (`sumber_dana`) REFERENCES `sumber_dana` (`sumber_dana`) ON UPDATE CASCADE
) ENGINE=InnoDB AUTO_INCREMENT=9 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_1_1` */

insert  into `tabel_6_2_1_1`(`id`,`sumber_dana`,`jenis_dana`,`jumlah_ts_2`,`jumlah_ts_1`,`jumlah_ts`) values 
(1,'PT Sendiri','Rupiah Murni',0,0,0),
(2,'PT Sendiri','Penerimaan Negara Bukan Pajak (P',0,0,0),
(3,'Sumber Lain','Bantuan Penelitian',0,0,0),
(6,'Sumber Lain','Bantuan Pengabdian Masyarakat',0,0,0),
(7,'Sumber Lain','IDB (Lab Integrasi)',0,0,0),
(8,'Sumber Lain','Hibah Pendampingan Jurnal (DIKTI',0,0,0);

/*Table structure for table `tabel_6_2_1_2` */

CREATE TABLE `tabel_6_2_1_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `jenis_penggunaan` varchar(32) NOT NULL,
  `penggunaan_ts_2` decimal(10,0) NOT NULL DEFAULT '0',
  `penggunaan_ts_1` decimal(10,0) NOT NULL DEFAULT '0',
  `penggunaan_ts` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=8 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_2_1_2` */

insert  into `tabel_6_2_1_2`(`id`,`jenis_penggunaan`,`penggunaan_ts_2`,`penggunaan_ts_1`,`penggunaan_ts`) values 
(1,'Pendidikan',0,0,0),
(2,'Penelitian',0,0,0),
(3,'Pengabdian kepada Masyarakat',0,0,0),
(4,'Investasi Prasarana',0,0,0),
(5,'Investasi Sarana',0,0,0),
(6,'Investasi SDM',0,0,0),
(7,'Lain-lain',0,0,0);

/*Table structure for table `tabel_6_2_2` */

CREATE TABLE `tabel_6_2_2` (
  `id` int(11) NOT NULL AUTO_INCREMENT,
  `tahun` int(11) NOT NULL,
  `judul_penelitian` varchar(256) NOT NULL,
  `sumber_dana` varchar(8) NOT NULL,
  `jumlah_dana` decimal(10,0) NOT NULL,
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
  `jumlah_dana` decimal(10,0) NOT NULL,
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
  `luas` decimal(10,0) NOT NULL DEFAULT '0',
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tabel_6_3_1` */

insert  into `tabel_6_3_1`(`id`,`ruang`,`jumlah`,`luas`) values 
(1,'Satu ruang untuk 1 dosen (bukan pejabat struktural)',0,0),
(2,'Satu ruang untuk 2 dosen',0,0),
(3,'Satu ruang untuk 3-4 dosen',0,0),
(4,'Satu ruang untuk lebih dari 4 dosen',0,0);

/*Table structure for table `tabel_6_3_2` */

CREATE TABLE `tabel_6_3_2` (
  `id` tinyint(2) NOT NULL AUTO_INCREMENT,
  `jenis` varchar(50) NOT NULL,
  `jumlah` int(11) NOT NULL DEFAULT '0',
  `luas` decimal(10,0) NOT NULL DEFAULT '0',
  `sewa` tinyint(1) NOT NULL DEFAULT '0',
  `terawat` tinyint(1) NOT NULL DEFAULT '1',
  `utilisasi` decimal(10,0) NOT NULL DEFAULT '0',
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
  `luas` decimal(10,0) NOT NULL DEFAULT '0',
  `sewa` tinyint(1) NOT NULL DEFAULT '0',
  `terawat` tinyint(1) NOT NULL DEFAULT '1',
  `utilisasi` decimal(10,0) NOT NULL DEFAULT '0',
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
  `luas` decimal(10,0) NOT NULL DEFAULT '0',
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
  `id` tinyint(4) NOT NULL AUTO_INCREMENT,
  `tingkat` varchar(16) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB AUTO_INCREMENT=5 DEFAULT CHARSET=latin1;

/*Data for the table `tingkat_kegiatan` */

insert  into `tingkat_kegiatan`(`id`,`tingkat`) values 
(1,'Lokal'),
(2,'Wilayah'),
(3,'Nasional'),
(4,'Internasional');

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

/*!40101 SET SQL_MODE=@OLD_SQL_MODE */;
/*!40014 SET FOREIGN_KEY_CHECKS=@OLD_FOREIGN_KEY_CHECKS */;
/*!40014 SET UNIQUE_CHECKS=@OLD_UNIQUE_CHECKS */;
/*!40111 SET SQL_NOTES=@OLD_SQL_NOTES */;
