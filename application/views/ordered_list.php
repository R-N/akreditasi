<?php if(!empty($caption)){ ?><p><b><?=$caption;?></b></p><?php } ?>
<p>
	<ol>
		<?php foreach($items as $row){ ?>
		<li><?=$row["text"];?></li>
		<?php } ?>
	</ol>
</p>