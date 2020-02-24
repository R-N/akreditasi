<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Dosen Tetap</th>
				<th class="" rowspan="2">NIDN</th>
				<th class="" rowspan="2">Tanggal Lahir</th>
				<th class="" rowspan="2">Jabatan Akademik</th>
				<th class="" rowspan="2">Sertifikasi</th>
				<th class="" colspan="3">S1</th>
				<th class="" colspan="3">S2</th>
				<th class="" colspan="3">S3</th>
			</tr>
			<tr>
				<th class="">Gelar</th>
				<th class="">PT Asal</th>
				<th class="">Bidang Keahlian</th>
				<th class="">Gelar</th>
				<th class="">PT Asal</th>
				<th class="">Bidang Keahlian</th>
				<th class="">Gelar</th>
				<th class="">PT Asal</th>
				<th class="">Bidang Keahlian</th>
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
				<th class="">(10)</th>
				<th class="">(11)</th>
				<th class="">(12)</th>
				<th class="">(13)</th>
				<th class="">(14)</th>
				<th class="">(15)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class="shrink"><a href="#"><?=$row;?></a></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""><a href="#">v</a></td>
				<td class=""><a href="#">ST</a></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""><a href="#">ST</a></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""><a href="#">ST</a></td>
				<td class=""></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>