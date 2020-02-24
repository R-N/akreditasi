<!--
	$card_id,
	$sections[
		$section{
			$title
			$contents[
				$content
			]
		}
	],
	$accordion,
	$half
-->
<?php
	$i = 0;
	$card_id = $card_id . "-card";
?>
<div class="row mb-4">
	<div class="<?=(!empty($half) && half) ? "col-6" : "col";?>">
		<div class="card shadow" id="<?=$card_id;?>">
			<?php 
			foreach($sections as $section) { 
				++$i;
				$section_id = "item-".$i;
				$section_id_full = $card_id . " ." . $section_id;
			?>
			<div class="card-header py-3 clickable" href="#<?=$section_id_full;?>" data-toggle="collapse" aria-expanded="<?=$i==1?"true":"false";?>" aria-controls="<?=$section_id_full;?>" role="button">
				<p class="text-primary m-0 font-weight-bold"><?=$section["title"];?></p>
			</div>
			<div class="card-body collapse <?=$i==1?"show":"";?> <?=$section_id;?>"  <?php if(!empty($accordion) && $accordion){ ?>data-parent="#<?=$card_id;?>" <?php } ?>>
				<?php foreach($section["contents"] as $content){ ?>
				<div class="row">
					<div class="col">
						<?php echo $content ?>
					</div>
				</div>
				<?php } ?>
			</div>
			<?php } ?>
		</div>
	</div>
</div>