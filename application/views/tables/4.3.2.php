<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Dosen Tetap</th>
				<th class="" rowspan="2">NIDN</th>
				<th class="" rowspan="2">Tanggal Lahir</th>
				<th class="" rowspan="2">Jabatan Akademik</th>
				<th class="" rowspan="2">Sertifikasi</th>
				<th class="" colspan="3">S1</th>
				<th class="" colspan="3">S2</th>
				<th class="" colspan="3">S3</th>
			</tr>
			<tr>
				<th class="">PT Asal</th>
				<th class="">Bidang Keahlian</th>
				<th class="">Gelar</th>
				<th class="">PT Asal</th>
				<th class="">Bidang Keahlian</th>
				<th class="">Gelar</th>
				<th class="">PT Asal</th>
				<th class="">Bidang Keahlian</th>
				<th class="">Gelar</th>
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
				<th class="">(9)</th>
				<th class="">(10)</th>
				<th class="">(11)</th>
				<th class="">(12)</th>
				<th class="">(13)</th>
				<th class="">(14)</th>
				<th class="">(15)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class="shrink"><a href="https://lecturer.uinsby.ac.id/index.php/example/detaildosen/<?=$row["id_lecturer"];?>"><?=$row["nama"];?></a></td>
				<td class=""><?=$row["nidn"];?></td>
				<td class=""><?=$row["tanggal_lahir"];?></td>
				<td class=""><?=$row["jabatan_akademik"];?></td>
				<td class="">
				<?php if(empty($row["url_sert"])){ echo $row["sertifikasi"]?"Ya":"Tidak"; } else { ?>
					<a href="<?=$row["url_sert"];?>"><?=$row["sertifikasi"]?"Ya":"Tidak";?></a>
				<?php } ?>
				</td>
				<td class=""><?=$row["s1_pt"];?></td>
				<td class=""><?=$row["s1_bidang"];?></td>
				<td class="">
				<?php if(empty($row["url_s1"])){ echo $row["s1_gelar"]; } else { ?>
					<a href="<?=$row["url_s1"];?>"><?=$row["s1_gelar"];?></a>
				<?php } ?>
				</td>
				<td class=""><?=$row["s2_pt"];?></td>
				<td class=""><?=$row["s2_bidang"];?></td>
				<td class="">
				<?php if(empty($row["url_s2"])){ echo $row["s2_gelar"]; } else { ?>
					<a href="<?=$row["url_s2"];?>"><?=$row["s2_gelar"];?></a>
				<?php } ?>
				</td>
				<td class=""><?=$row["s3_pt"];?></td>
				<td class=""><?=$row["s3_bidang"];?></td>
				<td class="">
				<?php if(empty($row["url_s3"])){ echo $row["s3_gelar"]; } else { ?>
					<a href="<?=$row["url_s3"];?>"><?=$row["s3_gelar"];?></a>
				<?php } ?>
				</td>
			<?php } ?>
		</tbody>
	</table>
</div>