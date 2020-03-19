<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Sumber Dana Kegiatan Pelayanan/Pengabdian kepada Masyarakat</th>
				<th class="">TS-2</th>
				<th class="">TS-1</th>
				<th class="">TS</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""><?=$row["sumber_dana"];?></td>
				<td class="">
					<?php if($row["ts_2"]==0){ echo 0; } else { ?>
					<a href="<?=base_url();?>7/2/1/LKPKM/<?=$row["id"];?>/2"><?=$row["ts_2"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if($row["ts_1"]==0){ echo 0; } else { ?>
					<a href="<?=base_url();?>7/2/1/LKPKM/<?=$row["id"];?>/1"><?=$row["ts_1"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if($row["ts"]==0){ echo 0; } else { ?>
					<a href="<?=base_url();?>7/2/1/LKPKM/<?=$row["id"];?>/0"><?=$row["ts"];?></a>
					<?php } ?>
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>