<div class="table-responsive  fixed export simple">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="">Jenis</th>
				<th class="">No</th>
				<th class="">Nama Jurnal</th>
				<th class="">Rincian Nomor dan Tahun</th>
				<th class="">Jumlah</th>
			</tr>
			<tr>
				<th class=""></th>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			$j = 0;
			foreach($groups as $group){
				$i = 0;
				foreach($group["rows"] as $row){
					++$j;
			?>
			<tr>
				<?php if ($i == 0){ ?>
				<td class="" rowspan="<?=count($group["rows"]);?>"><?=$group["name"];?></td>
				<?php } ?>
				<td class="shrink"><?=$j;?></td>
				<td class="">
					<a href="<?=$row["url_jurnal"];?>"><?=$row["jurnal"];?></a>
				</td>
				<td class="">
					<?php foreach($row["rows"] as $r){ ?>
					<div>
						<?php if(empty($r["url_jurnal"])) { echo $r["nomor_tahun"]; } else { ?>
						<a href="<?=$r["url_jurnal"];?>"><?=$r["nomor_tahun"];?></a>
						<?php } ?>
					</div>
					<?php } ?>
				</td>
				<td class="shrink"><?=$row["jumlah"];?></td>
			</tr>
			<?php 
					++$i;
				} 
			}
			?>
		</tbody>
	</table>
</div>