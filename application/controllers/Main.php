<?php if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class Main extends CI_Controller {

	public function __construct()
	{
		parent::__construct();


		//$this->load->library('grocery_CRUD');
		setlocale(LC_ALL, 'id_ID');
	}

	public function _example_output($output = null)
	{
		$this->load->view('general.html',(array)$output);
	}

	public function index()
	{
		$this->load->view("welcome_message.php");
	}
	
}
