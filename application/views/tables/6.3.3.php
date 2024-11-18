<div class="table-responsive datatable fixed export auto-number">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Jenis Prasarana</th>
				<th class="" rowspan="2">Jumlah Unit</th>
				<th class="" rowspan="2">Total Luas</th>
				<th class="" colspan="2">Kepemilikan</th>
				<th class="" colspan="2">Kondisi</th>
				<th class="" rowspan="2">Unit Pengelola</th>
			</tr>
			<tr>
				<th class="">SD</th>
				<th class="">SW</th>
				<th class="">Terawat</th>
				<th class="">Tidak Terawat</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
				<th class="">(6)</th>
				<th class="">(7)</th>
				<th class="">(8)</th>
				<th class="">(9)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			$i = 0;
			foreach($rows as $row){
				++$i;
			?>
			<tr>
				<td class="shrink"><?=$i;?></td>
				<td class="">
					<?php if(!$row["image"]){ echo $row["jenis"]; } else { ?>
					<div><a href="#col-6-3-3-<?=$row["id"];?>" data-toggle="collapse"><?=$row["jenis"];?></a></div>
					<?php echo image(base_url("assets/img/6.3.3.{$row["id"]}.jpg"), true, "col-6-3-3-{$row["id"]}"); ?>
					<?php } ?>
				</td>
				<td class="shrink">
					<?php if($row["jumlah"]<=1){ echo $row["jumlah"]; } else { ?>
					<a href="<?=base_url();?>6/3/3/LP/<?=$row["id"];?>"><?=$row["jumlah"];?></a>
					<?php } ?>
				</td>
				<td class="shrink">
					<?php 
						$row["luas"]+=0;
						if($row["luas"]==0) echo "";
						else echo "" . $row["luas"];
					?>
				</td>
				<td class="shrink text-center"><?=!$row["sewa"]?"V":"";?></td>
				<td class="shrink text-center"><?=$row["sewa"]?"V":"";?></td>
				<td class="shrink text-center"><?=$row["terawat"]?"V":"";?></td>
				<td class="shrink text-center"><?=!$row["terawat"]?"V":"";?></td>
				<td class=""><?=$row["unit"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>