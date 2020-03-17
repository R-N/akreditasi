<?php if(!empty($caption)){ ?><p><b><?=$caption;?></b></p><?php } ?>
<p>
	<ul>
		<?php foreach($items as $row){ ?>
		<li><?=$row["text"];?></li>
		<?php } ?>
	</ul>
</p>