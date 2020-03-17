<?php 

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_Guest extends CI_Model {
	public function __construct()
	{
		parent::__construct();

		$sql =  "SET lc_time_names = 'id_ID';";
		$query = $this->db->query($sql);
	}

	function fetch_table($table_name, $orderby = 'id', $ordertype="ASC"){
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
	function fetch_child_ids($parent){
		$sql =  "SELECT * FROM ids WHERE ids.parent=? ORDER BY ids.id ASC;";
		$query = $this->db->query($sql, array($parent));
		return $query->result_array();
	}
	function fetch_dokumen($parent){
		$sql =  "SELECT dp.name, dp.url FROM dokumen_pendukung dp, ids WHERE dp.parent=? AND ids.id=dp.parent ORDER BY dp.no;";
		$query = $this->db->query($sql, array($parent));
		return $query->result_array();
	}
	function get_string($parent){
		$sql =  "SELECT * FROM strings p, ids WHERE p.parent=? AND ids.id=p.parent;";
		$query = $this->db->query($sql, array($parent));
		if($query->num_rows() == 0) return null;
		return $query->row_array();
	}
	function fetch_values($parent){
		$sql =  "SELECT l.name, l.value FROM `values` l, ids WHERE l.parent=? AND ids.id=l.parent ORDER BY l.no ASC;";
		$query = $this->db->query($sql, array($parent));
		return $query->result_array();
	}
	function fetch_milestones($id){
		$milestones = $this->fetch_child_ids($id);
		$i = 0;
		foreach($milestones as $m){
			$items = array();
			$items = $this->fetch_list($milestones[$i]["id"]);
			$milestones[$i]["items"] = $items;
			++$i;
		}
		return $milestones;
	}
}