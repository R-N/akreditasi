<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Guest extends CI_Controller {
	
			
	public function __construct()
	{
		parent::__construct();


		//$this->load->library('grocery_CRUD');
		$this->load->model('M_Guest');
		setlocale(LC_ALL, 'id_ID');
	}

	public function page_0(){
		$data = base_data("0");
		$data["contents"] = array(
			menu("dok-akreditasi", "Dokumen Akreditasi", array(
				_link("Dokumen Evaluasi Diri", base_url()),
				_link("Dokumen Borang", base_url())
			))
		);
			
		$this->load->view("page.php", $data);
	}
	public function page_standar($standar){
		$data = base_data($standar);
		$data["contents"] = array(
			menu("standar-" . $standar, "Standar " . $standar, get_standar_menu($standar))
		);
			
		$this->load->view("page.php", $data);
	}
	public function page_1_1(){
		$data = base_data("1.1");
		$data["contents"] = array(
			accordion(
				"visi-misi", 
				array(
					_content("Penyusunan", "Penyusunan"),
					fragment("1.1.2", "Visi", $this->M_Guest->get_paragraf("1.1.2")),
					fragment("1.1.3", "Misi", array("rows"=>$this->M_Guest->fetch_list("1.1.3"))),
					fragment("1.1.4", "Tujuan", array("rows"=>$this->M_Guest->fetch_list("1.1.4"))),
					_content("Sasaran dan Strategi", "Sasaran dan Strategi")
				)
			)
		);
			
		$this->load->view("page.php", $data);
	}
	public function page_1_2(){
		$data = base_data("1.2");
		$data["contents"] = array(
			paragraph("sosialisasi", "Sosialisasi", "Sosialisasi")
		);
		$this->load->view("page.php", $data);
	}
	public function page_2_1(){
		$data = base_data("2.1");
		$data["contents"] = array(
			card(
				"tata-pamong", 
				array(
					_content("Sistem Tata Pamong", "Sistem Tata Pamong"),
					_content("Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_2_2(){
		$data = base_data("2.2");
		$data["contents"] = array(
			paragraph("kepemimpinan", "Kepemimpinan", "Kepemimpinan")
		);
		$this->load->view("page.php", $data);
	}
	public function page_2_3(){
		$data = base_data("2.3");
		$data["contents"] = array(
			card(
				"pengelolaan", 
				array(
					_content("Pengelolaan", "Pengelolaan"),
					_content("Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_2_4(){
		$data = base_data("2.4");
		$data["contents"] = array(
			card(
				"jaminan-mutu", 
				array(
					_content("Penjaminan Mutu", "Penjaminan Mutu"),
					_content("Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			)
		);
		$this->load->view("page.php", $data);
	}

	public function page_2_5(){
		$data = base_data("2.5");
		$rows = array("Dosen", "Mahasiswa", "Alumni", "Pengguna Lulusan");
		$data["contents"] = array(
			card(
				"umpan-balik", 
				array(
					_content("2.5 Umpan Balik", $this->load->view("tables/2.5.php", array("rows"=>$rows),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}

	public function page_2_6(){
		$data = base_data("2.6");
		$data["contents"] = array(
			accordion(
				"keberlanjutan", 
				array(
					_content("Upaya untuk peningkatan animo calon mahasiswa", "Upaya untuk peningkatan animo calon mahasiswa"),
					_content("Upaya peningkatan mutu manajemen", "Upaya peningkatan mutu manajemen"),
					_content("Upaya untuk peningkatan mutu lulusan", "Upaya untuk peningkatan mutu lulusan"),
					_content("Upaya untuk pelaksanaan dan hasil kerjasama kemitraan", "Upaya untuk pelaksanaan dan hasil kerjasama kemitraan"),
					_content("Upaya dan prestasi memperoleh dana hibah kompetitif", "Upaya dan prestasi memperoleh dana hibah kompetitif")
				)
			)
		);
			
		$this->load->view("page.php", $data);
	}
	public function page_3_1(){
		$data = base_data("3.1");
		$rows1 = array("TS-4", "TS-3", "TS-2", "TS-1", "TS");
		$rows2 = array("TS-4", "TS-3", "TS-2", "TS-1", "TS");
		$rows3 = array("asd");
		$rows4 = array("TS-6", "TS-5", "TS-4", "TS-3", "TS-2", "TS-1", "TS");
		$data["contents"] = array(
			card(
				"mhs-reguler", 
				array(
					_content("3.1.1 Data mahasiswa reguler dan lulusannya", $this->load->view("tables/3.1.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"mhs-non-reguler", 
				array(
					_content("3.1.2 Data mahasiswa non-reguler", $this->load->view("tables/3.1.2.php", array("rows"=>$rows2),true))
				)
			),
			card(
				"prestasi-mhs", 
				array(
					_content("3.1.3 Prestasi/reputasi mahasiswa ", $this->load->view("tables/3.1.3.php", array("rows"=>$rows3),true))
				)
			),
			card(
				"jumlah-mhs-reguler", 
				array(
					_content("3.1.4 Jumlah mahasiswa reguler  ", $this->load->view("tables/3.1.4.php", array("rows"=>$rows4),true))
				)
			),
			menu("pendukung", "Dokumen Pendukung", array(
				_link("Google", "http://google.com"),
				_link("Youtube", "http://youtube.com")
			))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_2(){
		$data = base_data("3.2");
		$rows = array(
			"Bimbingan dan konseling", 
			"Minat dan bakat (ekstra kurikuler)", 
			"Pembinaan soft skills", 
			"Beasiswa", 
			"Kesehatan"
		);
		$data["contents"] = array(
			card(
				"layanan-mhs", 
				array(
					_content("3.2 Layanan kepada Mahasiswa", $this->load->view("tables/3.2.php", array("rows"=>$rows),true))
				)
			),
			menu("pendukung", "Dokumen Pendukung", array(
				_link("Google", "http://google.com"),
				_link("Youtube", "http://youtube.com")
			))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_3(){
		$data = base_data("3.3");
		$rows = array(
			"Integritas (etika dan moral)", 
			"Keahlian berdasarkan bidang ilmu (profesionalisme)",
			"Bahasa Inggris", 
			"Penggunaan Teknologi Informasi", 
			"Komunikasi",
			"Kerjasama Tim", 
			"Pengembangan Diri"
		);
		$data["contents"] = array(
			paragraph(
				"uraian-pelacakan", 
				"Uraian metode, proses, dan mekanisme studi pelacakan lulusan", 
				"uraian metode, proses, dan mekanisme studi pelacakan lulusan"
			),
			card(
				"umpan-balik", 
				array(
					_content("3.3.1 Evaluasi Kinerja lulusan oleh Pihak Pengguna Lulusan", $this->load->view("tables/3.3.1.php", array("rows"=>$rows),true)),
					_content("Dokumen Pendukung",
						_links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
						))
					)
				)
			),
			paragraph(
				"penjelasan-waktu-tunggu", 
				"3.3.2 Penjelasan Rata-rata waktu tunggu lulusan untuk memperoleh pekerjaan yang pertama", 
				"Penjelasan Rata-rata waktu tunggu lulusan untuk memperoleh pekerjaan yang pertama"
			),
			paragraph(
				"penjelasan-presentase-sesuai", 
				"3.3.3 Penjelasan Persentase lulusan yang bekerja pada bidang yang sesuai dengan keahliannya", 
				"Penjelasan Persentase lulusan yang bekerja pada bidang yang sesuai dengan keahliannya"
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_4(){
		$data = base_data("3.4");
		$data["contents"] = array(
			paragraph(
				"himpunan-alumni", 
				"Uraian himpunan alumni", 
				"Uraian himpunan alumni"
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_4_1(){
		$data = base_data("4.1");
		$data["contents"] = array(
			card(
				"seleksi-pengembangan", 
				array(
					_content("Sistem Seleksi dan Pengembangan", "Sistem Seleksi dan Pengembangan"),
					_content("Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_4_2(){
		$data = base_data("4.2");
		$data["contents"] = array(
			card(
				"monitoring-eval", 
				array(
					_content("Monitoring dan Evaluasi", "Monitoring dan Evaluasi"),
					_content("Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_4_3(){
		$data = base_data("4.3");
		$rows1 = array(
			"Achmad Teguh Wibowo"
		);
		$rows2 = array(
			"Titik Triwulan Tutik"
		);
		$rows3 = array(
			"Achmad Teguh Wibowo"
		);
		$rows4 = array(
			"Achmad Teguh Wibowo"
		);
		$rows5 = array(
			"Prof. Dr. Titik Triwulan Tutik, SH.,MH."
		);
		$data["contents"] = array(
			card(
				"dosen-tetap-sesuai", 
				array(
					_content("4.3.1 Dosen Tetap yang bidang keahliannya sesuai dengan bidang PS", $this->load->view("tables/4.3.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"dosen-tetap-luar", 
				array(
					_content("4.3.2 Dosen tetap yang bidang keahliannya di luar bidang PS", $this->load->view("tables/4.3.1.php", array("rows"=>$rows2),true))
				)
			),
			card(
				"aktivitas-dosen-tetap-sesuai", 
				array(
					_content("4.3.3 Aktivitas dosen tetap yang bidang keahliannya sesuai dengan PS", $this->load->view("tables/4.3.3.php", array("rows"=>$rows3),true))
				)
			),
			card(
				"mengajar-dosen-tetap-sesuai", 
				array(
					_content("4.3.4 Aktivitas mengajar dosen tetap yang bidang keahliannya sesuai dengan PS, dalam satu tahun akademik terakhir di PS", $this->load->view("tables/4.3.4.php", array("rows"=>$rows4),true))
				)
			),
			card(
				"mengajar-dosen-tetap-luar", 
				array(
					_content("4.3.5 Aktivitas mengajar dosen tetap yang bidang keahliannya di luar PS,  dalam satu tahun akademik terakhir di PS", $this->load->view("tables/4.3.4.php", array("rows"=>$rows5),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_4_4(){
		$data = base_data("4.4");
		$rows1 = array(
			"asd"
		);
		$rows2 = array(
			"asd"
		);
		$data["contents"] = array(
			card(
				"dosen-tidak-tetap", 
				array(
					_content("4.4.1 Dosen tidak tetap pada PS", $this->load->view("tables/4.3.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"mengajar-dosen-tidak-tetap", 
				array(
					_content("4.4.2 Aktivitas mengajar dosen tidak tetap pada satu tahun terakhir di PS", $this->load->view("tables/4.3.4.php", array("rows"=>$rows2),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_4_5(){
		$data = base_data("4.5");
		$rows1 = array(
			"Tony D Susanto, S.T., M.T.,Ph.D, ITIL"
		);
		$rows2 = array(
			"Anang Kunaefi"
		);
		$rows3 = array(
			"Achmad Teguh Wibowo"
		);
		$rows4 = array(
			"Achmad Teguh Wibowo"
		);
		$rows5 = array(
			"Achmad Teguh Wibowo"
		);
		$data["contents"] = array(
			card(
				"pembinaan-tenaga-ahli", 
				array(
					_content("4.5.1 Kegiatan tenaga ahli/pakar sebagai pembicara dalam seminar/pelatihan, pembicara tamu, dsb, dari luar PT sendiri, tidak termasuk dosen tidak tetap", $this->load->view("tables/4.5.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"peningkatan-kemampuan-dosen", 
				array(
					_content("4.5.2 Peningkatan kemampuan dosen tetap melalui program tugas belajar dalam bidang yang sesuai dengan bidang PS", $this->load->view("tables/4.5.2.php", array("rows"=>$rows2),true))
				)
			),
			card(
				"seminar-dosen-tetap-luas", 
				array(
					_content("4.5.3 Kegiatan dosen tetap yang bidang keahliannya sesuai dengan PS dalam seminar ilmiah/lokakarya/penataran/workshop/ pagelaran/ pameran/peragaan yang tidak hanya melibatkan dosen PT sendiri", $this->load->view("tables/4.5.3.php", array("rows"=>$rows3),true))
				)
			),
			card(
				"prestasi-dosen", 
				array(
					_content("4.5.4 Pencapaian prestasi/reputasi dosen, misalnya prestasi dalam pendidikan, penelitian dan pelayanan/pengabdian kepada masyarakat", $this->load->view("tables/4.5.4.php", array("rows"=>$rows4),true))
				)
			),
			card(
				"organisasi-dosen", 
				array(
					_content("4.5.5 Keikutsertaan dosen tetap dalam organisasi keilmuan atau organisasi profesi", $this->load->view("tables/4.5.5.php", array("rows"=>$rows5),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_4_6(){
		$data = base_data("4.6");
		$rows1 = array(
			"Pustakawan",
			"Laboran/ Teknisi/ Analis/ Operator/ Programer",
			"Administrasi",
			"Lainnya"
		);
		$data["contents"] = array(
			card(
				"statistik-tenaga-kependidikan", 
				array(
					_content("4.6.1 Tenaga kependidikan  yang ada di PS, Jurusan, Fakultas atau PT yang melayani mahasiswa PS", $this->load->view("tables/4.6.1.php", array("rows"=>$rows1),true))
				)
			),
			paragraph(
				"peningkatan-tenaga-kependidikan",
				"4.6.2 Upaya Meningkatkan Kualifikasi dan Kompetensi Tenaga Kependidikan",
				"Upaya Meningkatkan Kualifikasi dan Kompetensi Tenaga Kependidikan"
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_1(){
		$data = base_data("5.1");
		$rows1 = array(
			"Mata Kuliah Wajib",
			"Mata Kuliah Pilihan"
		);
		$rows2 = array(
			"Bahasa Indonesia"
		);
		$rows3 = array(
			"Mobile Technology"
		);
		$rows4 = array(
			 "asd"
		);
		$data["contents"] = array(
			accordion("kompetensi", array(
				_content("5.1.1.1 Uraian kompetensi utama lulusan", "Uraian kompetensi utama lulusan"),
				_content("5.1.1.2 Uraian kompetensi pendukung lulusan", "Uraian kompetensi pendukung lulusan"),
				_content("5.1.1.3 Uraian kompetensi lainnya/pilihan lulusan", "Uraian kompetensi lainnya/pilihan lulusan")
			)),
			card(
				"jumlah-sks-ps", 
				array(
					_content("5.1.2.1 Jumlah sks PS (minimum untuk kelulusan)", $this->load->view("tables/5.1.2.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"struktur-kurikulum", 
				array(
					_content("5.1.2.2 Struktur kurikulum berdasarkan urutan mata kuliah (MK) semester demi semester", $this->load->view("tables/5.1.2.2.php", array("rows"=>$rows2),true))
				)
			),
			card(
				"mk-pilihan", 
				array(
					_content("5.1.3 Mata kuliah pilihan ", $this->load->view("tables/5.1.3.php", array("rows"=>$rows3),true))
				)
			),
			card(
				"praktek", 
				array(
					_content("5.1.4 Substansi praktikum/praktek yang mandiri ataupun yang merupakan bagian dari mata kuliah tertentu ", $this->load->view("tables/5.1.4.php", array("rows"=>$rows3),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	
	public function page_5_2(){
		$data = base_data("5.2");
		$rows1 = array(
			"asd"
		);
		$data["contents"] = array(
			accordion("kompetensi", array(
				_content("Mekanisme", "Mekanisme"),
				_content("Pihak yang dilibatkan", "Pihak yang dilibatkan"),
				_content("Dokumen pendukung", _links(array(
					_link("Google", "http://google.com"),
					_link("Youtube", "http://youtube.com")
				)))
			)),
			card(
				"jumlah-sks-ps", 
				array(
					_content("5.2 Hasil Peninjauan Kurikulum", $this->load->view("tables/5.2.php", array("rows"=>$rows1),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_3(){
		$data = base_data("5.3");
		$rows1 = array(
			"asd"
		);
		$data["contents"] = array(
			accordion("mekan-materi", array(
				_content("5.3.1 Mekanisme penyusunan materi", "Mekanisme penyusunan materi"),
				_content("5.3.1 Mekanisme monitoring kehadiran dosen dan mahasiswa", "Mekanisme monitoring kehadiran dosen dan mahasiswa"),
				_content("5.3.1 Mekanisme monitoring materi kuliah", "Mekanisme monitoring materi kuliah"),
				_content("5.3.1 Dokumen pendukung", _links(array(
					_link("Google", "http://google.com"),
					_link("Youtube", "http://youtube.com")
				)))
			)),
			menu("menu", "5.3.2 Lampiran contoh soal ujian", array(
				_link("Google", "http://google.com"),
				_link("Youtube", "http://youtube.com")
			))
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_4(){
		$data = base_data("5.4");
		$rows1 = array(
			"Achmad Teguh Wibowo"
		);
		$rows2 = array(
			"Tujuan Pembimbingan",
			"Pelaksanaan pembimbingan",
			"Masalah yang dibicarakan dalam pembimbingan",
			"Kesultian dalam pembimbingan dan upaya untuk mengatasinya",
			"Manfaat yang diperoleh mahasiswa dari pembimbingan"
		);
		$data["contents"] = array(
			card(
				"dosen-pembimbing", 
				array(
					_content("5.4.1 Nama dosen pembimbing akademik dan jumlah mahasiswa yang dibimbingnya", $this->load->view("tables/5.4.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"proses-bimbingan", 
				array(
					_content("5.4.2 Proses pembimbingan akademik", $this->load->view("tables/5.4.2.php", array("rows"=>$rows2),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_5(){
		$data = base_data("5.5");
		$rows1 = array(
			"Achmad Teguh Wibowo"
		);
		$data["contents"] = array(
			paragraph(
				"rata-bimbingan", 
				"Rata-rata Bimbingan", 
				"Rata-rata banyaknya mahasiswa per dosen pembimbing TA: 0<br>Rata-rata jumlah pertemuan dosen-mahasiswa untuk menyelesaiakan TA: 0"
			),
			card(
				"dosen-pembimbing", 
				array(
					_content("5.5.1 Daftar nama dosen pembimbing dan jumlah mahasiswa", $this->load->view("tables/5.5.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"panduan-bimbingan", 
				array(
					_content("5.5.1 Panduan pembimbingan TA", "Panduan pembimbingan TA"),
					_content("Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			),
			card(
				"penyelesaian-ta", 
				array(
					_content("5.5.2 PENYELESAIAN TUGAS AKHIR ATAU SKRIPSI", "Rata-rata lama penyelesaian tugas akhir/skripsi pada tiga tahun terakhir: 0<br>Menurut kurikulum tugas akhir direncanakan (semester): 0"),
					_content("Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			),
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_6(){
		$data = base_data("5.6");
		$rows1 = array(
			"Materi",
			"Metode Pembelajaran",
			"Penggunaan Teknologi Pembelajaran",
			"Cara-cara evaluasi"
		);
		$data["contents"] = array(
			card(
				"perbaikan-pembelajaran", 
				array(
					_content("5.6 Upaya perbaikan pembelajaran serta hasil yang telah dilakukan dan dicapai dalam tiga tahun terakhir dan hasilnya", $this->load->view("tables/5.6.php", array("rows"=>$rows1),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_7(){
		$data = base_data("5.7");
		$data["contents"] = array(
			accordion("peningkatan-suasana-akademik", array(
				_content("Kebijakan tentang suasana akademik", "Kebijakan tentang suasana akademik"),
				_content("Ketersediaan dan jenis prasaran, sarana dan dana yang memungkinkan terciptanya interaksi akademik antara sivitas akademika", "Ketersediaan dan jenis prasaran, sarana dan dana yang memungkinkan terciptanya interaksi akademik antara sivitas akademika"),
				_content("Program dan kegiatan di dalam dan di luar proses pembelajaran", "Program dan kegiatan di dalam dan di luar proses pembelajaran"),
				_content("Interaksi akademik antara dosen-mahasiswa, antar mahasiswa, serta antar dosen", "Interaksi akademik antara dosen-mahasiswa, antar mahasiswa, serta antar dosen"),
				_content("Pengembangan perilaku kecendikiawanan", "Pengembangan perilaku kecendikiawanan")
			))
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_1(){
		$data = base_data("6.1");
		$data["contents"] = array(
			card(
				"pengelolaan-dana", 
				array(
					_content("Keterlibatan ps dalam perencanaan anggaran dan pengelolaan dana", "Keterlibatan ps dalam perencanaan anggaran dan pengelolaan dana"),
					_content("Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			),
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_2(){
		$data = base_data("6.2");
		$groups1 = array(
			array(
				"name"=>"PT Sendiri",
				"rows"=>array(
					"Rupiah Murni",
					"Penerimaan Negara Bukan Pajak (PNBP)"
				)
			),
			array(
				"name"=>"Yayasan",
				"rows"=>array(
					""
				)
			),
			array(
				"name"=>"Diknas",
				"rows"=>array(
					""
				)
			),
			array(
				"name"=>"Sumber Lain",
				"rows"=>array(
					"Bantuan Penelitian",
					"Bantuan Pengabdian Masyarakat"
				)
			)
		);
		$rows2 = array(
			"Pendidikan",
			"Penelitian",
			"Pengabdian kepada Masyarakat",
			"Investasi Prasarana",
			"Investasi Sarana",
			"Investasi SDM",
			"Lain-lain"
		);
		$rows3 = array(
			"Analisis Software Hybrid Untuk Deteksi Gejala Penyakit"
		);
		$rows4 = array(
			"Pelatihan Dekstop Application Training I Yayasan Mitra Arofah Surabaya"
		);
		$data["contents"] = array(
			card(
				"perolehan-dana", 
				array(
					_content("6.2.1.1 Perolehan Dana", $this->load->view("tables/6.2.1.1.php", array("groups"=>$groups1),true))
				)
			),
			card(
				"penggunaan-dana", 
				array(
					_content("6.2.1.2 Penggunaan dana", $this->load->view("tables/6.2.1.2.php", array("rows"=>$rows2),true))
				)
			),
			card(
				"dana-penelitian", 
				array(
					_content("6.2.2 Dana untuk kegiatan penelitian pada tiga tahun terakhir yang melibatkan dosen yang bidang keahliannya sesuai dengan program studi", $this->load->view("tables/6.2.2.php", array("rows"=>$rows3),true))
				)
			),
			card(
				"dana-pengabdian", 
				array(
					_content("6.2.3 Dana yang diperoleh dari/untuk kegiatan pelayanan/pengabdian kepada masyarakat pada tiga tahun terakhir", $this->load->view("tables/6.2.3.php", array("rows"=>$rows4),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_3(){
		$data = base_data("6.3");
		$rows1 = array(
			"Satu ruang untuk lebih dari 4 dosen",
			"Satu ruang untuk 3-4 dosen",
			"Satu ruang untuk 2 dosen",
			"Satu ruang untuk 1 dosen (bukan pejabat struktural)"
		);
		$rows2 = array(
			"asd"
		);
		$rows3 = array(
			"asd"
		);
		$data["contents"] = array(
			card(
				"ruang-dosen", 
				array(
					_content("6.3.1 Data ruang kerja dosen tetap yang bidang keahliannya sesuai dengan PS", $this->load->view("tables/6.3.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"prasarana", 
				array(
					_content("6.3.2 Data prasarana (tidak meliputi ruang dosen)", $this->load->view("tables/6.3.2.php", array("rows"=>$rows2),true))
				)
			),
			card(
				"prasarana-lain", 
				array(
					_content("6.3.3 Data prasarana lain yang menunjang", $this->load->view("tables/6.3.3.php", array("rows"=>$rows3),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_4(){
		$data = base_data("6.4");
		$rows1 = array(
			"Buku Teks",
			"Jurnal nasional yang terakreditasi",
			"Jurnal internasional",
			"Jurnal internasional",
			"Prosiding",
			"Skripsi",
			"Tesis",
			"Disertasi"
		);
		$groups2 = array(
			array(
				"name"=>"Jurnal Terakreditasi DIKTI",
				"rows"=>array(
					"KURSOR Journal (http://kursor.trunojoyo.ac.id/)",
					"Systemic (http://jurnalsaintek.uinsby.ac.id/index.php/SYSTEMIC)"
				)
			),
			array(
				"name"=>"Jurnal Internasional",
				"rows"=>array(
					"Information Systems Research (https://pubsonline.informs.org/journal/isre)",
					"Information Systems Journal (https://onlinelibrary.wiley.com/journal/13652575)"
				)
			)
		);
		$rows3 = array(
			"Halo"
		);
		$rows4 = array(
			"Halo"
		);
		$data["contents"] = array(
			card(
				"jumlah-pustaka", 
				array(
					_content("6.4.1.1 Rekapitulasi Jumlah Ketersediaan Pustaka yang Relevan dengan Bidang PS", $this->load->view("tables/6.4.1.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"paper-diterima", 
				array(
					_content("6.4.1.2 Jurnal/prosiding seminar yang tersedia/yang diterima secara teratur (lengkap), termasuk e-journal, terbitan 3 tahun terakhir", $this->load->view("tables/6.4.1.2.php", array("groups"=>$groups2),true))
				)
			),
			card(
				"sumber-pustaka", 
				array(
					_content("6.4.2 Sumber pustaka di lembaga lain yang bisa diakses dosen/mhs PS (TODO)", $this->load->view("tables/6.4.2.php", array("rows"=>$rows3),true))
				)
			),
			card(
				"peralatan-lab", 
				array(
					_content("6.4.3 peralatan utama yang digunakan di laboratorium untuk proses pembelajaran (TODO)", $this->load->view("tables/6.4.3.php", array("rows"=>$rows4),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_5(){
		$data = base_data("6.5");
		$rows1 = array(
			"Mahasiswa",
			"Kartu Rencana Studi (KRS)",
			"Jadwal Mata Kuliah",
			"Nilai Mata Kuliah",
			"Transkrip Akademik",
			"Lulusan",
			"Dosen",
			"Pegawai",
			"Keuangan",
			"Inventaris",
			"Perpustakaan"
		);
		$data["contents"] = array(
			card(
				"sistem-informasi", 
				array(
					_content("6.5.1 Penjelasan sistem informasi dari fasilitas yang digunakan prodi untuk pembelajaran", "Penjelasan sistem informasi dari fasilitas yang digunakan prodi untuk pembelajaran"),
					_content("6.5.1 Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			),
			card(
				"aksesibiltias-data", 
				array(
					_content("6.5.2 Aksesibilitas Tiap Jenis Data", $this->load->view("tables/6.5.2.php", array("rows"=>$rows1),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_7_1(){
		$data = base_data("7.1");
		$rows1 = array(
			"Pembiayaan sendiri oleh peneliti",
			"PT yang bersangkutan",
			"Depdiknas",
			"Institusi dalam negeri di luar Depdiknas",
			"Institusi luar negeri"
		);
		$rows2 = array(
			"Skema Basis Data Sistem Informasi Aset Barang"
		);
		$rows3 = array(
			"Paten NUI Menggunakan Kinect FIS-TSK"
		);
		$data["contents"] = array(
			card(
				"penelitian-dosen-tetap", 
				array(
					_content("7.1.1 Judul penelitian sesuai dengan bidang keilmuan PS, yang dilakukan oleh dosen tetap yang bidang keahliannya sesuai dengan PS selama tiga tahun terakhir", $this->load->view("tables/7.1.1.php", array("rows"=>$rows1),true)),
					_content("7.1.1 Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			),
			card(
				"mhs-penelitian", 
				array(
					_content(
						"7.1.2 Mahasiswa tugas akhir yang dilibatkan dalam penelitian dosen dalam tiga tahun", 
						"Adakah mahasiswa tugas akhir yang dilibatkan dalam penelitian dosen dalam tiga tahun terakhir? Ada"
						. '<br>Jika ada, banyaknya mahasiswa PS yang ikut serta dalam penelitian dosen adalah <a href="' . base_url("7/1/2/LP") . '">5</a> orang, dari <a href="' . base_url("7/1/2/LTA") . '">19</a> mahasiswa yang menjalankan tugas akhir melalui skripsi'
					),
					_content("7.1.2 Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			),
			card(
				"karya-dosen", 
				array(
					_content("7.1.3 Judul artikel ilmiah/karya ilmiah/karya seni/buku yang dihasilkan selama tiga tahun terakhir oleh dosen tetap yang bidang keahliannya sesuai dengan PS", $this->load->view("tables/7.1.3.php", array("rows"=>$rows2),true))
				)
			),
			card(
				"karya-dosen-haki", 
				array(
					_content("7.1.4 Karya dosen dan atau mahasiswa Program Studi yang telah memperoleh/sedang memproses perlindungan Hak atas Kekayaan Intelektual (HaKI) selama tiga tahun terakhir", $this->load->view("tables/7.1.4.php", array("rows"=>$rows3),true))
				)
			)
		);
		$this->load->view("page.php", $data);
	}
	public function page_7_2(){
		$data = base_data("7.2");
		$rows1 = array(
			"Pembiayaan sendiri oleh peneliti",
			"PT yang bersangkutan",
			"Depdiknas",
			"Institusi dalam negeri di luar Depdiknas",
			"Institusi luar negeri"
		);
		$rows2 = array(
			"Skema Basis Data Sistem Informasi Aset Barang"
		);
		$rows3 = array(
			"Paten NUI Menggunakan Kinect FIS-TSK"
		);
		$data["contents"] = array(
			card(
				"pengabdian-dosen-tetap", 
				array(
					_content("7.2.1 Jumlah kegiatan Pelayanan/Pengabdian kepada Masyarakat (*) yang sesuai dengan bidang keilmuan PS selama tiga tahun terakhir yang dilakukan oleh dosen tetap yang bidang keahliannya sesuai dengan PS", $this->load->view("tables/7.2.1.php", array("rows"=>$rows1),true)),
					_content("7.2.1 Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			),
			card(
				"partisipasi-mhs", 
				array(
					_content(
						"7.2.2 Penjelasan tingkat partisipasi dan bentuk keterlibatan mahasiswa dalam kegiatan pengabdian", 
						"penjelasan tingkat partisipasi dan bentuk keterlibatan mahasiswa dalam kegiatan pengabdian"
					),
					_content("7.2.2 Dokumen Pendukung", _links(array(
						_link("Google", "http://google.com"),
						_link("Youtube", "http://youtube.com")
					)))
				)
			),
		);
		$this->load->view("page.php", $data);
	}
	public function page_7_3(){
		$data = base_data("7.3");
		$rows1 = array(
			"asd"
		);
		$rows2 = array(
			"asd"
		);
		$data["contents"] = array(
			card(
				"kerjasama-dalam", 
				array(
					_content("7.3.1 Kerjasama Dalam Negeri", $this->load->view("tables/7.3.1.php", array("rows"=>$rows1),true))
				)
			),
			card(
				"kerjasama-luar", 
				array(
					_content("7.3.2 Kerjasama Luar Negeri", $this->load->view("tables/7.3.1.php", array("rows"=>$rows2),true))
				)
			),
		);
		$this->load->view("page.php", $data);
	}
	public function example()
	{
		$data = base_data("0");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/example", null, true))),
			menu("menu", "Menu", array(
				_link("Google", "http://google.com"),
				_link("Youtube", "http://youtube.com")
			)),
			paragraph("paragraf", "Paragraf", "Lorem ipsum dolor sit amet"),
			accordion("accordion", array(
				_content("Collapse 1", "Entah apa ini harusnya"),
				_content("Collapse 2", "Iki pisan opo iki")
			))
		);
			
		$this->load->view("page.php", $data);
	}
	
	public function page_3_1_1_IS($lulus, $ts){
		$data = base_data("3.1");
		$option = $lulus ? "Lulus" : "Ikut";
		$data["page_title"] = "{$option} Seleksi";
		$data["page_id"] = "3.1.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 IS.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_1_LIS($lulus, $ts, $jalur=''){
		$url_is = base_url("3/1/1/IS/{$lulus}/{$ts}");
		if(!$jalur){
			redirect($url_is);
			return;
		}
		$data = base_data("3.1");
		$option = $lulus ? "Lulus" : "Ikut";
		$data["page_title"] = "List {$option} Seleksi";
		$data["page_id"] = "3.1.1";
		array_push($data["breadcrumbs"], _link("{$option} Seleksi", $url_is));
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 LIS.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_1_MB($trf, $ts){
		$data = base_data("3.1");
		$option = $trf ? "Transfer" : "Reguler Bukan Transfer";
		$data["page_title"] = "Mahasiswa Baru {$option}";
		$data["page_id"] = "3.1.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 IS.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_1_LMB($trf, $ts, $jalur=''){
		$url_mb = base_url("3/1/1/MB/{$trf}/{$ts}");
		if(!$jalur){
			redirect($url_mb);
			return;
		}
		$data = base_data("3.1");
		$option = $trf ? "Transfer" : "Reguler Bukan Transfer";
		$data["page_title"] = "List Mahasiswa Baru {$option}";
		$data["page_id"] = "3.1.1";
		array_push($data["breadcrumbs"], _link("Mahasiswa Baru {$option}", $url_mb));
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 LIS.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_1_LM($trf, $ts){
		$data = base_data("3.1");
		$option = $trf ? "Transfer" : "Reguler Bukan Transfer";
		$data["page_title"] = "List Mahasiswa {$option}";
		$data["page_id"] = "3.1.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 LM.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_1_LL($trf, $ts){
		$data = base_data("3.1");
		$option = $trf ? "Transfer" : "Reguler Bukan Transfer";
		$data["page_title"] = "List Lulusan {$option}";
		$data["page_id"] = "3.1.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.1 LL.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	
	public function page_3_1_2_IS($lulus, $ts){
		$data = base_data("3.1");
		$option = $lulus ? "Lulus" : "Ikut";
		$data["page_title"] = "{$option} Seleksi";
		$data["page_id"] = "3.1.2";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 IS.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_2_LIS($lulus, $ts, $jalur=''){
		$url_is = base_url("3/1/2/IS/{$lulus}/{$ts}");
		if(!$jalur){
			redirect($url_is);
			return;
		}
		$data = base_data("3.1");
		$option = $lulus ? "Lulus" : "Ikut";
		$data["page_title"] = "List {$option} Seleksi";
		$data["page_id"] = "3.1.2";
		array_push($data["breadcrumbs"], _link("{$option} Seleksi", $url_is));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 LIS.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_2_MB($trf, $ts){
		$data = base_data("3.1");
		$option = $trf ? "Transfer" : "Reguler Bukan Transfer";
		$data["page_title"] = "Mahasiswa Baru {$option}";
		$data["page_id"] = "3.1.2";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 IS.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_2_LMB($trf, $ts, $jalur=''){
		$url_mb = base_url("3/1/2/MB/{$trf}/{$ts}");
		if(!$jalur){
			redirect($url_mb);
			return;
		}
		$data = base_data("3.1");
		$option = $trf ? "Transfer" : "Non-Reguler";
		$data["page_title"] = "List Mahasiswa Baru {$option}";
		$data["page_id"] = "3.1.2";
		array_push($data["breadcrumbs"], _link("Mahasiswa Baru {$option}", $url_mb));
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 LIS.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_2_LM($trf, $ts){
		$data = base_data("3.1");
		$option = $trf ? "Transfer" : "Non-Reguler";
		$data["page_title"] = "List Mahasiswa {$option}";
		$data["page_id"] = "3.1.2";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 LM.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_4_LM($ts1, $ts2){
		$data = base_data("3.1");
		$data["page_title"] = "List Mahasiswa";
		$data["page_id"] = "3.1.4";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 LM.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_3_1_4_LL($angkatan){
		$data = base_data("3.1");
		$data["page_title"] = "List Lulusan";
		$data["page_id"] = "3.1.4";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.1 LL.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_4_6_1_LTK($jenis, $pend){
		$data = base_data("4.6");
		$data["page_title"] = "List Tenaga Kerja";
		$data["page_id"] = "4.6.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/4.6.1 LTK.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_1_2_1_SJMK($jenis){
		$data = base_data("5.1");
		$data["page_title"] = "Sub Jenis Mata Kuliah";
		$data["page_id"] = "5.1.2.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/5.1.2.1 SJMK.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_1_2_1_MK($subjenis){
		$data = base_data("5.1");
		$data["page_title"] = "Mata Kuliah";
		$data["page_id"] = "5.1.2.1";
		array_push($data["breadcrumbs"], _link("Sub Jenis Mata Kuliah", base_url("5/1/2/1/sjmk/1")));
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/5.1.2.2.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_1_2_1_MKP($subjenis){
		$data = base_data("5.1");
		$data["page_title"] = "Mata Kuliah Pilihan";
		$data["page_id"] = "5.1.2.1";
		array_push($data["breadcrumbs"], _link("Sub Jenis Mata Kuliah", base_url("5/1/2/1/sjmk/2")));
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/5.1.3.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_4_1_LM($dosen){
		$data = base_data("5.4");
		$data["page_title"] = "List Mahasiswa";
		$data["page_id"] = "5.4.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/3.1.2 LM.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_5_5_1_LTA($dosen){
		$data = base_data("5.5");
		$data["page_title"] = "List Tugas Akhir";
		$data["page_id"] = "5.5.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/7.1.2 LTA.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_3_1_LR($jenis){
		$data = base_data("6.3");
		$data["page_title"] = "List Ruang";
		$data["page_id"] = "6.3.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/6.3.1 LR.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_3_2_LP($jenis){
		$data = base_data("6.3");
		$data["page_title"] = "List Prasarana";
		$data["page_id"] = "6.3.2";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/6.3.2 LP.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_3_3_LP($jenis){
		$data = base_data("6.3");
		$data["page_title"] = "List Prasarana";
		$data["page_id"] = "6.3.3";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/6.3.3 LP.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_4_1_1_LP($jenis){
		$data = base_data("6.4");
		$data["page_title"] = "List Pustaka";
		$data["page_id"] = "6.4.1.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/6.4.1.1 LP.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_6_4_1_2_LJ($jurnal){
		$data = base_data("6.4");
		$data["page_title"] = "List Jurnal";
		$data["page_id"] = "6.4.1.2";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/6.4.1.2 LJ.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_7_1_1_LPDT($sumber, $ts){
		$data = base_data("7.1");
		$data["page_title"] = "List Penelitian Dosen Tetap";
		$data["page_id"] = "7.1.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/7.1.1 LPDT.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_7_1_2_LP(){
		$data = base_data("7.1");
		$data["page_title"] = "List Penelitian";
		$data["page_id"] = "7.1.2";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/7.1.2 LP.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_7_1_2_LTAF(){
		$data = base_data("7.1");
		$data["page_title"] = "List Tugas Akhir";
		$data["page_id"] = "7.1.2";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/7.1.2 LTAF.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_7_1_2_LTA($penelitian=''){
		if(!$penelitian){
			return $this->page_7_1_2_LTAF();
		}
		$data = base_data("7.1");
		$data["page_title"] = "List Tugas Akhir";
		$data["page_id"] = "7.1.2";
		array_push($data["breadcrumbs"], _link("List Penelitian", base_url("7/1/2/LP")));
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/7.1.2 LTA.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	public function page_7_2_1_LKPKM($sumber, $ts){
		$data = base_data("7.2");
		$data["page_title"] = "List Kegiatan PKM";
		$data["page_id"] = "7.2.1";
		array_push($data["breadcrumbs"], _link($data["page_title"], "#"));
		$rows = array("asd");
		$data["contents"] = array(
			card("tabel", _content("Tabel", $this->load->view("tables/7.2.1 LKPKM.php", array("rows"=>$rows), true)))
		);
		$this->load->view("page.php", $data);
	}
	
	public function index(){
		$this->example();
	}
}
