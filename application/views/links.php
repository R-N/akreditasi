<ul class="nav flex-column no-border my-0 py-0 hover">
	<?php foreach($items as $item){ ?>
	<li class="nav-item">
		<a class="nav-link" 
			<?php if(empty($item["url"]) || $item["url"] == "#"){ ?>
			href="#"
			<?php } else { ?>
			href="<?=$item["url"];?>" target="_blank"
			<?php } ?>
		>
			<?=$item["text"];?>
		</a>
	</li>
	<?php } ?>
</ul>