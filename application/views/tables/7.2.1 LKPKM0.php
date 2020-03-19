<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Tahun</th>
				<th class="">Judul Kegiatan Pelayanan/Pengabdian kepada Masyarakat</th>
				<th class="">Sumber dan Jenis Dana</th>
				<!--
				<th class="">Judul</th>
				<th class="">Peran</th>
				<th class="">Tahun</th>
				<th class="">NIP</th>
				<th class="">Nama</th>
				-->
			</tr>
		</thead>
		<tbody>
			<?php 
			$i = 0;
			foreach($rows as $row){
				++$i;
			?>
			<tr>
				<td class=""><?=$i;?></td>
				<td class=""><?=$row["tahun"];?></td>
				<td class="">
					<?php if(empty($row["url"])){ echo $row["judul"]; } else { ?>
					<a href="<?=$row["url"];?>"><?=$row["judul"];?></a>
					<?php } ?>
				</td>
				<td class=""><?=$row["short_sumber"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>