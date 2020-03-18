<div class="table-responsive datatable fixed export auto-number" data-pagelength="3">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Kode MK</th>
				<th class="" rowspan="2">Nama MK</th>
				<th class="" rowspan="2">MK Baru/ Lama/ Hapus </th>
				<th class="" colspan="3">Perubahan Pada</th>
				<th class="" rowspan="2">Alasan Peninjauan </th>
				<th class="" rowspan="2">Atas usulan/Masukan dari </th>
				<th class="" rowspan="2">Berlaku mulai Sem./Th. </th>
			</tr>
			<tr>
				<th class="">Silabus/ SAP</th>
				<th class="">Buku Ajar</th>
				<th class="">Beban SKS</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
				<th class="">(6)</th>
				<th class=""></th>
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
				<td class=""><?=$row["kode_mk"];?></td>
				<td class=""><?=$row["nama_mk"];?></td>
				<td class=""><?=$row["status_mk"];?></td>
				<td class="">
					<?php if(empty($row["url_silabus"])){ echo $row["perubahan_silabus"]?"V":""; } else { ?>
					<a href="<?=$row["url_silabus"];?>"><?=$row["perubahan_silabus"]?"V":"";?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if(empty($row["url_buku"])){ echo $row["perubahan_buku"]?"V":""; } else { ?>
					<a href="<?=$row["url_buku"];?>"><?=$row["perubahan_buku"]?"V":"";?></a>
					<?php } ?>
				</td>
				<td class=""><?=$row["perubahan_sks"]?"V":"";?></td>
				<td class=""><?=$row["alasan_peninjauan"];?></td>
				<td class=""><?=$row["atas_usulan"];?></td>
				<td class=""><?=$row["berlaku"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>