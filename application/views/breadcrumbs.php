<div class="row">
	<div class="col">
		<ol class="breadcrumb">
			<?php
			$i = 0;
			$len = count($items);
			foreach($items as $item){
				++$i;
				if($i == $len){ ?>
					<li class="breadcrumb-item active" aria-current="page">
						<span><?=$item["text"];?></span>
					</li>
				<?php }else{ ?>
					<li class="breadcrumb-item">
						<a href="<?=$item["url"];?>">
							<span><?=$item["text"];?></span>
						</a>
					</li>
				<?php
				}
			}
			?>
		</ol>
	</div>
</div>