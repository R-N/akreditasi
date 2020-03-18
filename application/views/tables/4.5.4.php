<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Dosen</th>
				<th class="" rowspan="2">Prestasi yang Dicapai</th>
				<th class="" rowspan="2">Tahun Pencapaian</th>
				<th class="" colspan="3">Tingkat</th>
			</tr>
			<tr>
				<th class="">Internasional</th>
				<th class="">Nasional</th>
				<th class="">Lokal</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
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
				<td class="shrink"></td>
				<td class="shrink"><a href="https://lecturer.uinsby.ac.id/index.php/example/detaildosen/<?=$row["id_lecturer"];?>"><?=$row["nama_dosen"];?></a></td>
				<td class="">
				<?php if(empty($row["url_prestasi"])){ echo $row["prestasi"]; } else { ?>
					<a href="<?=$row["url_prestasi"];?>"><?=$row["prestasi"];?></a>
				<?php } ?>
				</td>
				<td class="shrink"><?=$row["tahun"];?></td>
				<td class="shrink text-center"><?=$row["tingkat"]=="Internasional"?"V":"";?></td>
				<td class="shrink text-center"><?=$row["tingkat"]=="Nasional"?"V":"";?></td>
				<td class="shrink text-center"><?=$row["tingkat"]=="Lokal"?"V":"";?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>