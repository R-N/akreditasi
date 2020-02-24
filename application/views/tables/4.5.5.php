<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Dosen</th>
				<th class="" rowspan="2">Nama Organisasi Keilmuan atau Organisasi Profesi</th>
				<th class="" colspan="2">Kurun Waktu</th>
				<th class="" colspan="3">Tingkat</th>
			</tr>
			<tr>
				<th class="">Tahun Awal</th>
				<th class="">Tahun Akhir</th>
				<th class="">Internasional</th>
				<th class="">Nasional</th>
				<th class="">Lokal</th>
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
				<td class=""></td>
				<td class="shrink"><a href="#"><?=$row;?></a></td>
				<td class=""><a href="#">Kegiatan</a></td>
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