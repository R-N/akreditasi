<div class="table-responsive datatable export simple auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Layanan</th>
				<th class="" colspan="4">Tanggapan Mahasiswa</th>
				<th class="" rowspan="2">Rata2 Nilai</th>
			</tr>
			<tr>
				<th class="">Sangat Baik (Nilai 4)</th>
				<th class="">Baik (Nilai 3)</th>
				<th class="">Cukup (Nilai 2)</th>
				<th class="">Kurang (Nilai 1)</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
				<th class="">(6)</th>
				<th class="">(7)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""><?=$row["layanan"];?></td>
				<td class=""><?=$row["sangat_baik"];?></td>
				<td class=""><?=$row["baik"];?></td>
				<td class=""><?=$row["cukup"];?></td>
				<td class=""><?=$row["kurang"];?></td>
				<td class=""><?=$row["rata"];?></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan=6>Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="6" data-format="0.##"></td>
			</tr>
		</tfoot>
	</table>
</div>