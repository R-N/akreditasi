<div class="table-responsive datatable fixed export simple">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">Sumber Dana</th>
				<th class="" rowspan="2">Jenis Dana</th>
				<th class="" colspan="3">Jumlah Dana</th>
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
			foreach($groups as $group){
				$i = 0;
				foreach($group["rows"] as $row){
			?>
			<tr>
				<?php if ($i == 0){ ?>
				<td class="shrink" rowspan="<?=count($group["rows"]);?>"><?=$group["name"];?></td>
				<?php } ?>
				<td class=""><?=$row;?></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
			</tr>
			<?php 
					++$i;
				} 
			}
			?>
		</tbody>
	</table>
</div>