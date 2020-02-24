<div class="table-responsive datatable export simple auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Jenis Pelayanan kepada Mahasiswa</th>
				<th class="">Bentuk kegiatan, Pelaksanaan dan Hasilnya</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""><?=$row;?></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>