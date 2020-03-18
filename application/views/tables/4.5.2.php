<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Nama Dosen Tetap</th>
				<th class="">Jenjang Pendidikan</th>
				<th class="">Bidang Studi</th>
				<th class="">Perguruan Tinggi</th>
				<th class="">Negara</th>
				<th class="">Tahun Pelaksanaan</th>
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
				<td class="shrink">
				<?php if(empty($row["url_pendidikan"])){ echo $row["pendidikan"]; } else { ?>
					<a href="<?=$row["url_pendidikan"];?>"><?=$row["pendidikan"];?></a>
				<?php } ?>
				</td>
				<td class=""><?=$row["bidang"];?></td>
				<td class=""><?=$row["pt"];?></td>
				<td class=""><?=$row["negara"];?></td>
				<td class="shrink"><?=$row["tahun"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>