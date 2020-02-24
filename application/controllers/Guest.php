<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Guest extends CI_Controller {

	public function __construct()
	{
		parent::__construct();


		//$this->load->library('grocery_CRUD');
		setlocale(LC_ALL, 'id_ID');
	}


	public function index()
	{
		$contents = array(
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
		$data = array(
			"page_id"=>"0",
			"page_title"=>"Example",
			"breadcrumbs"=>array(
				_link("Example", base_url())
			),
			"contents"=>$contents
		);
			
		$this->load->view("page.php", $data);
	}
	
}
