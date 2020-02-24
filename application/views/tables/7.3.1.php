<div class="table-responsive datatable fixed export auto-number">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Instansi</th>
				<th class="" rowspan="2">Jenis Kegiatan </th>
				<th class="" colspan="2">Kurun Waktu Kerjasama</th>
				<th class="" rowspan="2">Manfaat yang Telah Diperoleh </th>
			</tr>
			<tr>
				<th class="">Mulai</th>
				<th class="">Berakhir</th>
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
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""><?=$row;?></td>
				<td class=""><a href="#">Kegiatan</a></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>