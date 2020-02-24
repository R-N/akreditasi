<ul class="nav flex-column no-border my-0 py-0 hover">
	<?php foreach($items as $item){ ?>
	<li class="nav-item">
		<a class="nav-link" href="<?=$item["url"];?>">
			<?=$item["text"];?>
		</a>
	</li>
	<?php } ?>
</ul>