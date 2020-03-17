<p><b>Milestones Program Studi SI:</b></p>
<?php foreach($milestones as $m){ ?>
	<p><?=$m["name"];?></p>
	<p>
		<ol>
			<?php foreach($m["items"] as $row){ ?>
			<li><?=$row["text"];?></li>
			<?php } ?>
		</ol>
	</p>
<?php } ?>