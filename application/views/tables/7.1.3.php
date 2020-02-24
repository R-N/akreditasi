<div class="table-responsive datatable fixed export auto-number">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Judul</th>
				<th class="" rowspan="2">Nama-nama Dosen</th>
				<th class="" rowspan="2">Dihasilkan/Dipublikasikan Pada</th>
				<th class="" rowspan="2">Tahun Penyajian / Publikasi</th>
				<th class="" colspan="3">Banyaknya Dosen</th>
			</tr>
			<tr>
				<th class="">Lokal</th>
				<th class="">Nasional</th>
				<th class="">Internasional</th>
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
				<td class=""><a href="#"><?=$row;?></a></td>
				<td class=""><a href="#">Dosen</a></td>
				<td class=""><a href="#">Jurnal</a></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>