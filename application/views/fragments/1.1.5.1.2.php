<p class="text-justify"><b>Milestones Program Studi SI:</b></p>
<?php foreach($milestones as $m){ ?>
	<p class="text-justify"><?=$m["name"];?></p>
	<p class="text-justify">
		<ol>
			<?php foreach($m["items"] as $row){ ?>
			<li class="text-justify"><?=$row["text"];?></li>
			<?php } ?>
		</ol>
	</p>
<?php } ?>