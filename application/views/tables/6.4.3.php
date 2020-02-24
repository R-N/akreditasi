<div class="table-responsive datatable fixed export auto-number">
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
			foreach($rows as $row){
			?>
			<tr>
				<td class=""><?=$row;?></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>