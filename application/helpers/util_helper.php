<?php



function validate_url($url){
	if($url) return true;
	return false;
}

function is_assoc(array $arr)
{
    if (array() === $arr) return false;
    return array_keys($arr) !== range(0, count($arr) - 1);
}

function card($id, $sections, $accordion=false, $half=false){
	if(is_assoc($sections)){
		$sections = array($sections);
	}
	foreach($sections as $section){
		if(empty($section["contents"]) || is_assoc($section["contents"])){
			if(!empty($section["contents"])){
				$section["contents"] = array($section["contents"]);
			}else if(!empty($section["content"])){
				$section["contents"] = array($section["content"]);
			}else{
				$section["contents"] = array();
			}
		}
	}
	return get_instance()->load->view("card", array(
		"card_id"=>$id,
		"sections"=>$sections,
		"accordion"=>$accordion
	), true);
}
function _content($title, $content){
	return _section($title, array($content));
}
function _section($title, $contents){
	return array(
		"title"=>$title,
		"contents"=>$contents
	);
}
function _link($text, $url="#"){
	return array(
		"text"=>$text,
		"url"=>$url
	);
}

function _links($items){
	return get_instance()->load->view("links", array("items"=>$items), true);
}
function _fragment($id, $data=array()){
	return get_instance()->load->view(
		"fragments/{$id}.php",
		$data,
		true
	);
}
function fragment($id, $title, $data=array()){
	$content = _fragment($id, $data);
	return _content($title, $content);
}
function menu($id, $title, $items, $half=false){
	$content = _links($items);
	$content = _content($title, $content);
	return card($id, $content, false, $half);
}
function paragraph($id, $title, $content){
	$content = get_instance()->load->view("paragraph", array("content"=>$content), true);
	$content = _content($title, $content);
	return card($id, $content);
}
function accordion($id, $sections){
	return card($id, $sections, true);
}
function breadcrumbs($items){
	return get_instance()->load->view("breadcrumbs", array("items"=>$items), true);
}

global $pages;
$pages = array(
	array(
		"Dokumen Akreditasi"
	),
	array(
		"Standar 1",
		"Visi Misi dan Tujuan",
		"Sosialisasi"
	),
	array(
		"Standar 2",
		"Sistem Tata Pamong",
		"Kepemimpinan",
		"Sistem Pengelolaan",
		"Penjaminan Mutu",
		"Umpan Balik",
		"Keberlanjutan"
	),
	array(
		"Standar 3",
		"Profil Mahasiswa dan Lulusan",
		"Layanan Kepada Mahasiswa",
		"Evaluasi Lulusan",
		"Himpunan Alumni"
	),
	array(
		"Standar 4",
		"Sistem Seleksi dan Pengembangan",
		"Monitoring dan Evaluasi",
		"Dosen Tetap",
		"Dosen Tidak Tetap",
		"Upaya Peningkatan Sumber Daya Manusia",
		"Tenaga Kependidikan"
	),
	array(
		"Standar 5",
		"Kurikulum",
		"Peninjauan Kurikulum",
		"Proses Pembelajaran",
		"Sistem Pembimbingan Akademik",
		"Pembimbingan Tugas Akhir/ Skripsi",
		"Upaya Perbaikan Pembelajaran",
		"Upaya Peningkatan Suasana Akademik"
	),
	array(
		"Standar 6",
		"Pengelolaan Dana",
		"Perolehan dan Alokasi Dana",
		"Prasarana",
		"Sarana Pelaksanaan Kegiatan Akademik",
		"Sistem Informasi"
	),
	array(
		"Standar 7",
		"Penelitian Dosen Tetap",
		"Kegiatan Pelayananan/ Pengabdian kepada Masyarakat",
		"Kegiatan Kerjasama dengan Instansi Lain"
	)
);

 function _get_link($arg1=null, $arg2=null, $arg3=null){
	if($arg1 == null) return _link("Beranda", base_url());
	global $pages;
	$arr1 = $pages[$arg1];
	$val2 = $arr1[$arg2 ? $arg2 : 0];
	if(is_array($val2)){
		$val2 = $val2[$arg3 ? $arg3 : 0];
	}
	$url = base_url($arg1);
	if($arg2) $url = $url . "/" . $arg2;
	if($arg3) $url = $url . "/" . $arg3;
	return _link($val2, $url);
}

function split_page_id($page_id=null){
	return preg_split("/[\s\. ]+/", $page_id);
}
	
 function get_link($page_id=null){
	if(!is_string($page_id)) return _get_link($page_id);
	$arr = split_page_id($page_id);
	$link = _get_link(...$arr);
	$link["id"] = $page_id;
	return $link;
}

function auto_breadcrumbs($page_id=null){
	if($page_id == null) return array(get_link());
	if(!is_string($page_id)){
		return array(
			get_link(),
			get_link($page_id)
		);
	}
	$arr = split_page_id($page_id);
	$ret = array(
		get_link()
	);
	$len = count($arr);
	$id = "";
	$first = true;
	foreach($arr as $item){
		if($first){
			$id = $item;
			$first = false;
		}else{
			$id = $id . "." . $item;
		}
		
		array_push($ret, get_link($id));
	}
	return $ret;
}

 function sidebar_item($id, $text, $url=null){
	if(is_array($text)) return sidebar_item($id, $text["text"], $text["url"]);
	return array(
		"id"=>$id,
		"text"=>$text,
		"url"=>$url
	);
}

 function get_sidebar_items(){
	global $pages;
	$i = 0;
	$items = array();
	foreach($pages as $arr1){
		$j = 0;
		array_push($items, array());
		foreach($arr1 as $val2){
			$val3 = $val2;
			if(is_array($val2))
				$val3 = $val2[0];
			$id = "".$i;
			$url = base_url($i);
			if($j){
				$id = $id . "." . $j;
				$url = $url . "/" . $j;
			}
			$item = sidebar_item($id, $val3, $url);
			array_push($items[$i], $item);
			++$j;
		}
		++$i;
	}
	return $items;
}

function get_standar_menu($standar){
	global $pages;
	$items = array();
	$j = 0;
	foreach($pages[$standar] as $val2){
		if($j == 0){
			++$j;
			continue;
		}
		$val3 = $val2;
		if(is_array($val2))
			$val3 = $val2[0];
		$url = base_url($standar);
		if($j){
			$url = $url . "/" . $j;
		}
		$item = _link($val3, $url);
		array_push($items, $item);
		++$j;
	}
	return $items;
}

function base_data($page_id){
	return array(
		"page_id"=>$page_id,
		"page_title"=>get_link($page_id)["text"],
		"sidebar_items"=>get_sidebar_items(),
		"breadcrumbs"=>auto_breadcrumbs($page_id)
	);
}