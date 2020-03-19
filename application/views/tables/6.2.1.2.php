<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Jenis Penggunaan</th>
				<th class="" colspan="3">Penggunaan</th>
			</tr>
			<tr>
				<th class="">TS-2</th>
				<th class="">TS-1</th>
				<th class="">TS</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			$i = 0;
			foreach($rows as $row){
				++$i;
			?>
			<tr>
				<td class=""><?=$i;?></td>
				<td class="shrink"><?=$row["jenis_penggunaan"];?></td>
				<td class=""><?=$row["penggunaan_ts_2"]+0;?></td>
				<td class=""><?=$row["penggunaan_ts_1"]+0;?></td>
				<td class=""><?=$row["penggunaan_ts"]+0;?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>