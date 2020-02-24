<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">No. MK</th>
				<th class="" rowspan="2">Nama MK</th>
				<th class="" rowspan="2">MK Baru/ Lama/ Hapus </th>
				<th class="" colspan="2">Perubahan Pada</th>
				<th class="" rowspan="2">Alasan Peninjauan </th>
				<th class="" rowspan="2">Atas usulan/Masukan dari </th>
				<th class="" rowspan="2">Berlaku mulai Sem./Th. </th>
			</tr>
			<tr>
				<th class="">Silabus/ SAP</th>
				<th class="">Buku Ajar</th>
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
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""></td>
				<td class="shrink"><?=$row;?></td>
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