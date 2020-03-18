<?php 

if ( ! defined('BASEPATH')) exit('No direct script access allowed');

class M_Guest extends CI_Model {
	public function __construct()
	{
		parent::__construct();

		$sql =  "SET lc_time_names = 'id_ID';";
		$query = $this->db->query($sql);
	}
	
	function fetch_mhs_angkatan_tahun($angkatan, $ts){
		$limit =  $ts - $angkatan + 1;
		$sql = "SELECT * FROM tabel_3_1_4_0 WHERE angkatan=? AND tahun>=? ORDER BY tahun LIMIT {$limit}";
		$query = $this->db->query($sql, array($angkatan, $angkatan));
		return $query->result_array();
	}

	function fetch_table($table_name, $orderby = 'id', $ordertype="ASC"){
		$sql =  "SELECT * FROM {$table_name}";
		if($orderby){
			$sql = "{$sql} ORDER BY {$orderby} {$ordertype}";
		}
		$query = $this->db->query($sql);
		return $query->result_array();
	}

	function fetch_table_dosen($table_name, $lect_column='nama', $lect_column_2=null, $orderby = 'id', $ordertype="ASC"){
		if(empty($lect_column_2)) $lect_column_2 = $lect_column;
		$sql =  "
			SELECT t.*, d.id_lecturer FROM {$table_name} t
			LEFT JOIN dosen d
			ON t.{$lect_column}=d.{$lect_column_2} 
				OR t.{$lect_column} LIKE CONCAT(\"%\",d.{$lect_column_2},\"%\") 
				OR d.{$lect_column_2} LIKE CONCAT(\"%\",t.{$lect_column},\"%\")
			ORDER BY t.{$orderby} {$ordertype}";
		$query = $this->db->query($sql);
		return $query->result_array();
	}
	
	function fetch_table_pakar($table_name, $pakar_column='nama', $pakar_column_2=null, $orderby = 'id', $ordertype="ASC"){
		return $this->fetch_table($table_name, $orderby, $ordertype);
	}
	function fetch_tabel_4_3_3($table_name="tabel_4_3_3", $orderby = 'id', $ordertype="ASC"){
		$lect_column = "nama";
		$sql =  "
			SELECT t.*, d.id_lecturer,
				(t.sks_ps_sendiri + t.sks_ps_lain + t.sks_pt_lain
					+ t.sks_penelitian + t.sks_pengabdian 
					+ t.sks_man_sendiri + t.sks_man_lain
				) AS jumlah_sks
			FROM {$table_name} t
			LEFT JOIN dosen d
			ON t.{$lect_column}=d.{$lect_column} 
				OR t.{$lect_column} LIKE CONCAT(\"%\",d.{$lect_column},\"%\") 
				OR d.{$lect_column} LIKE CONCAT(\"%\",t.{$lect_column},\"%\")
			ORDER BY t.{$orderby} {$ordertype}";
		$query = $this->db->query($sql);
		return $query->result_array();
	}
	
	function get_tabel_4_6_1_stats(){
		$sql = "
			SELECT SUM(S3) AS S3, SUM(S2) AS S2, SUM(S1) AS S1,
				SUM(D4) AS D4, SUM(D3) AS D3, SUM(D2) AS D2, SUM(D1) AS D1,
				SUM(SMA_SMK) AS SMA_SMK
			FROM tabel_4_6_1";
		$query = $this->db->query($sql);
		$result = $query->row_array();
		$jenjang = array("S3", "S2", "S1", "D4", "D3", "D2", "D1", "SMA_SMK");
		$ret = array();
		foreach($jenjang as $j){
			if($result[$j] == 0) continue;
			array_push($ret, array(
				"name"=>$j, 
				"value"=>$result[$j]
			));
		}
		return $ret;
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