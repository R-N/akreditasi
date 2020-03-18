<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Dosen Tetap</th>
				<th class="" rowspan="2">Kode Mata Kuliah</th>
				<th class="" rowspan="2">Nama Mata Kuliah</th>
				<th class="" rowspan="2">Jumlah sks</th>
				<th class="" colspan="3">Jumlah Pertemuan</th>
			</tr>
			<tr>
				<th class="">Direncanakan</th>
				<th class="">Dilaksanakan</th>
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
				<td class="shrink"><a href="https://lecturer.uinsby.ac.id/index.php/example/detaildosen/<?=$row["id_lecturer"];?>"><?=$row["nama_dosen"];?></a></td>
				<td class=""><?=$row["kode_mk"];?></td>
				<td class=""><?=$row["nama_mk"];?></td>
				<td class=""><?=$row["sks"];?></td>
				<td class=""><?=$row["pertemuan_direncanakan"];?></td>
				<td class=""><?=$row["pertemuan_dilaksanakan"];?></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="5">Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="5"></td>
				<td class="footer-callback" data-operation="sum" data-column="6"></td>
			</tr>
		</tfoot>
	</table>
</div>