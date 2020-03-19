<div class="table-responsive  fixed export auto-number">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Laboratorium</th>
				<th class="" rowspan="2">Jenis Peralatan Utama</th>
				<th class="" rowspan="2">Jumlah Unit</th>
				<th class="" colspan="2">Kepemilikan</th>
				<th class="" colspan="2">Kondisi</th>
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
			</tr>
		</thead>
		<tbody>
			<?php 
			$j = 0;
			foreach($groups as $group){
				++$j;
				$i = 0;
				foreach($group["rows"] as $row){
			?>
			<tr>
				<?php if ($i == 0){ ?>
				<td class="" rowspan="<?=count($group["rows"]);?>"><?=$j;?></td>
				<td class="" rowspan="<?=count($group["rows"]);?>"><?=$group["name"];?></td>
				<?php } ?>
				<td class=""><?=$row["jenis_peralatan"];?></td>
				<td class="shrink"><?=$row["jumlah_peralatan"];?> <?=$row["unit"];?></td>
				<td class="shrink text-center"><?=!$row["sewa"]?"V":"";?></td>
				<td class="shrink text-center"><?=$row["sewa"]?"V":"";?></td>
				<td class="shrink text-center"><?=$row["terawat"]?"V":"";?></td>
				<td class="shrink text-center"><?=!$row["terawat"]?"V":"";?></td>
				<td class="shrink "><?=$row["rata_penggunaan"]+0;?></td>
			</tr>
			<?php 
					++$i;
				} 
			}
			?>
		</tbody>
	</table>
</div>