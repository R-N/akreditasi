<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Dosen Tetap</th>
				<th class="" rowspan="2">Jenis Kegiatan</th>
				<th class="" rowspan="2">Tempat</th>
				<th class="" rowspan="2">Tahun</th>
				<th class="" colspan="2">Sebagai</th>
			</tr>
			<tr>
				<th class="">Penyaji</th>
				<th class="">Peserta</th>
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
				<td class="shrink"></td>
				<td class="shrink"><a href="https://lecturer.uinsby.ac.id/index.php/example/detaildosen/<?=$row["id_lecturer"];?>"><?=$row["nama_dosen"];?></a></td>
				<td class="">
				<?php if(empty($row["url_kegiatan"])){ echo $row["kegiatan"]; } else { ?>
					<a href="<?=$row["url_kegiatan"];?>"><?=$row["kegiatan"];?></a>
				<?php } ?>
				</td>
				<td class=""><?=$row["tempat"];?></td>
				<td class="shrink"><?=$row["tahun"];?></td>
				<td class="shrink text-center"><?=$row["penyaji"]?"V":"";?></td>
				<td class="shrink text-center"><?=$row["penyaji"]?"":"V";?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>