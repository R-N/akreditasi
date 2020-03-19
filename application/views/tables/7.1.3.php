<div class="table-responsive datatable fixed export auto-number">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Judul</th>
				<th class="" rowspan="2">Nama-nama Dosen</th>
				<th class="" rowspan="2">Dihasilkan/Dipublikasikan Pada</th>
				<th class="" rowspan="2">Tahun Penyajian / Publikasi</th>
				<th class="" colspan="3">Banyaknya Dosen</th>
			</tr>
			<tr>
				<th class="">Lokal</th>
				<th class="">Nasional</th>
				<th class="">Internasional</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
				<th class="">(6)</th>
				<th class="">(7)</th>
				<th class="">(8)</th>
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
				<td class="">
					<?php if(empty($row["url_dok"])){ echo $row["judul"]; } else { ?>
					<a href="<?=$row["url_dok"];?>"><?=$row["judul"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<a href="https://lecturer.uinsby.ac.id/index.php/example/detaildosen/<?=$row["id_lecturer"];?>"><?=$row["nama_dosen"];?></a>
				</td>
				<td class="">
					<?php 
					if(empty($row["url_jurnal"])){ 
						if(empty($row["url_dok"])){ 
							echo $row["jurnal"]; 
						} else { ?>
					<a href="<?=$row["url_dok"];?>"><?=$row["jurnal"];?></a>
					<?php 
						}
					} else { ?>
					<a href="<?=$row["url_jurnal"];?>"><?=$row["jurnal"];?></a>
					<?php } ?>
				</td>
				<td class="shrink text-center"><?=$row["tahun"];?></td>
				<td class="shrink text-center"><?=$row["tingkat"]==1?"V":"";?></td>
				<td class="shrink text-center"><?=$row["tingkat"]==2?"V":"";?></td>
				<td class="shrink text-center"><?=$row["tingkat"]==3?"V":"";?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>