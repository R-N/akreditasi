<!DOCTYPE html>
<html>

<!--
	$page_id,
	$page_title,
	$breadcrumbs,
	$contents,
	$css,
	$js
-->
<?php
	if(!empty($page_id) && strlen($page_id) > 1) $page_title = $page_id . " " . $page_title;
?>
<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, shrink-to-fit=no">
    <title><?=$page_title;?> - Akreditasi SI UINSA</title>
	<?php $this->view("common_css"); ?>
	<?php 
		if(!empty($css)){
			foreach($css as $file){ 
	?>
				<link rel="stylesheet" href="<?=base_url();?>assets/css<?=$file;?>">
	<?php 	
			}
		}
	?>
</head>


<body id="page-top">
    <div id="wrapper">
		<?php $this->view("sidebar", array("page_id"=>$page_id)); ?>
        <div class="d-flex flex-column" id="content-wrapper">
            <div id="content">
				<?php $this->view("topbar"); ?>
                <div class="container-fluid">
					<?php echo breadcrumbs($breadcrumbs); ?>
                    <div class="row">
                        <div class="col">
                            <h3 class="text-dark mb-4"><?=$page_title;?></h3>
                        </div>
                    </div>
					<?php
						foreach($contents as $content){
							echo $content;
						}
					?>
                </div>
            </div>
			<?php $this->view("footer"); ?>
        </div><a class="border rounded d-inline scroll-to-top" href="#page-top"><i class="fas fa-angle-up"></i></a></div>
		<?php $this->view("common_js"); ?>
		<?php 
			if(!empty($js)){
				foreach($js as $file){ ?>
			<script src="<?=base_url();?>assets/js/<?=$file;?>"></script>
		<?php 	
				}
			}
		?>
</body>

</html>