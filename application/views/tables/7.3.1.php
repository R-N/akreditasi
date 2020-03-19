<div class="table-responsive datatable fixed export auto-number">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Instansi</th>
				<th class="" rowspan="2">Jenis Kegiatan </th>
				<th class="" colspan="2">Kurun Waktu Kerjasama</th>
				<th class="" rowspan="2">Manfaat yang Telah Diperoleh </th>
			</tr>
			<tr>
				<th class="">Mulai</th>
				<th class="">Berakhir</th>
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
			$i = 0;
			foreach($rows as $row){
				++$i;
			?>
			<tr>
				<td class=""><?=$i;?></td>
				<td class="">
					<?php if(empty($row["url_instansi"])){ echo $row["nama_instansi"]; } else{ ?>
					<a href="<?=$row["url_instansi"]?>"><?=$row["nama_instansi"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if(empty($row["url_kegiatan"])){ echo $row["jenis_kegiatan"]; } else{ ?>
					<a href="<?=$row["url_kegiatan"]?>"><?=$row["jenis_kegiatan"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if(empty($row["url_kegiatan"])){ echo $row["mulai"]; } else{ ?>
					<a href="<?=$row["url_kegiatan"]?>"><?=$row["mulai"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if(empty($row["url_kegiatan"])){ echo $row["berakhir"]; } else{ ?>
					<a href="<?=$row["url_kegiatan"]?>"><?=$row["berakhir"];?></a>
					<?php } ?>
				</td>
				<td class=""><?=$row["manfaat"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>