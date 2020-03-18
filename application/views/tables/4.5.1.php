<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Nama Tenaga Ahli/Pakar</th>
				<th class="">Instansi/Jabatan</th>
				<th class="">Nama dan Judul Kegiatan</th>
				<th class="">Tahun Pelaksanaan</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class="shrink">
				<?php if(true){ echo $row["nama_pakar"]; } else { ?>
					<a href="#"><?=$row;?></a>
				<?php } ?>
				</td>
				<td class=""><?=$row["instansi_jabatan"];?></td>
				<td class=""><?=$row["kegiatan"];?></td>
				<td class=""><?=$row["tahun"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>