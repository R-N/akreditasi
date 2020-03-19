<div class="table-responsive datatable fixed export auto-number">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Jenis Data</th>
				<th class="" colspan="4">Sistem Pengolahan Data</th>
			</tr>
			<tr>
				<th class="">Secara Manual </th>
				<th class="">Dengan Komputer Tanpa Jaringan</th>
				<th class="">Dengan Komputer Jaringan Lokal</th>
				<th class="">Dengan Komputer Jaringan Luas</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
				<th class="">(6)</th>
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
				<td class="">
					<?php if(empty($row["url"])){ echo $row["jenis_data"]; } else { ?>
					<a href="<?=$row["url"];?>"><?=$row["jenis_data"];?></a>
					<?php } ?>
				</td>
				<td class="shrink text-center"><?=$row["pengolahan_data"]==1?"V":"";?></td>
				<td class="shrink text-center"><?=$row["pengolahan_data"]==2?"V":"";?></td>
				<td class="shrink text-center"><?=$row["pengolahan_data"]==3?"V":"";?></td>
				<td class="shrink text-center"><?=$row["pengolahan_data"]==4?"V":"";?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>