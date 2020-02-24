<nav class="navbar navbar-dark align-items-start sidebar sidebar-dark accordion bg-gradient-primary p-0">
	<div class="container-fluid d-flex flex-column p-0">
		<a class="navbar-brand d-flex justify-content-center align-items-center sidebar-brand m-0" href="#">
			<div class="sidebar-brand-icon rotate-n-15"><i class="fas fa-laugh-wink"></i></div>
			<div class="sidebar-brand-text mx-3">
				<span>AKREDITASI<br>SI UINSA</span>
			</div>
		</a>
		<hr class="sidebar-divider my-0">
		<ul class="nav navbar-nav text-light" id="accordionSidebar">
			<?php
			$j = 0;
			foreach($sidebar_items as $arr1){
				$len = count($arr1);
				if($len == 1){
					$item = $arr1[0];
			?>
					<li class="nav-item" role="presentation">
						<a class="nav-link active" href="<?=$item["url"];?>">
							<span class="badge badge-light mr-1 px-2"><?=$item["id"];?></span>
							<span><?=$item["text"];?></span>
						</a>
					</li>
			<?php
				}else{
					$i = 0;
					foreach($arr1 as $item){
						if($i == 0){
			?>
						<li class="nav-item" role="presentation">
							<a class="nav-link active" href="#collapse-<?=$j;?>" data-toggle="collapse">
								<span class="badge badge-light mr-1 px-2"><?=$item["id"];?></span>
								<span><?=$item["text"];?></span>
							</a>
						</li>
						<li class="nav-item collapse" role="presentation" id="collapse-<?=$j;?>" data-parent="#accordionSidebar">
			<?php
						}else{
			?>
							<a class="nav-link" href="<?=$item["url"];?>" data-toggle="">
								<span class="badge badge-light mr-1 px-1"><?=$item["id"];?></span>
								<span><?=$item["text"];?></span>
							</a>
			<?php
						}
						++$i;
					}
			?>
						</li>
			<?php
				}
				++$j;
			}
			?>
		</ul>
		<div class="text-center d-none d-md-inline">
			<button class="btn rounded-circle border-0" id="sidebarToggle" type="button"></button>
		</div>
	</div>
</nav>