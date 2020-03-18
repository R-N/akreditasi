<div class="table-responsive datatable fixed export auto-number ">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Semester</th>
				<th class="">Kode MK</th>
				<th class="">Nama Mata Kuliah</th>
				<th class="">Bobot sks</th>
				<th class="">Bobot Tugas</th>
				<th class="">Unit/Jur/Fak Penyelenggara</th>
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
				<td class=""><?=$row["smt"];?></td>
				<td class=""><?=$row["kode_mk"];?></td>
				<td class=""><?=$row["nama_mk"];?></td>
				<td class=""><?=$row["sks"];?></td>
				<td class=""><?=$row["tugas"]?"V":"";?></td>
				<td class=""><?=$row["unit"];?></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3">Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="3"></td>
			</tr>
		</tfoot>
	</table>
</div>