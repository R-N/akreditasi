<?php 

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_Guest extends CI_Model {
	public function __construct()
	{
		parent::__construct();

		$sql =  "SET lc_time_names = 'id_ID';";
		$query = $this->db->query($sql);
	}

	function fetch_table($table_name, $orderby = '', $ordertype="ASC"){
		$sql =  "SELECT * FROM {$table_name}";
		if($orderby){
			$sql = "{$sql} ORDER BY {$orderby} {$ordertype}";
		}
		$query = $this->db->query($sql);
		return $query->result_array();
	}

	function fetch_list($parent){
		$sql =  "SELECT * FROM lists l, ids WHERE l.parent=? AND ids.id=l.parent ORDER BY l.no ASC;";
		$query = $this->db->query($sql, array($parent));
		return $query->result_array();
	}
	function fetch_dokumen($parent){
		$sql =  "SELECT * FROM dokumen_pendukung dp, ids WHERE dp.parent=? AND ids.id=dp.parent ORDER BY dp.id;";
		$query = $this->db->query($sql, array($parent));
		return $query->result_array();
	}
	function fetch_paragraf($parent){
		$sql =  "SELECT * FROM paragraf p, ids WHERE p.parent=? AND ids.id=p.parent ORDER BY p.id;";
		$query = $this->db->query($sql, array($parent));
		return $query->result_array();
	}
	function get_paragraf($parent){
		$sql =  "SELECT * FROM paragraf p, ids WHERE p.parent=? AND ids.id=p.parent ORDER BY p.id;";
		$query = $this->db->query($sql, array($parent));
		if($query->num_rows() == 0) return null;
		return $query->row_array();
	}
}