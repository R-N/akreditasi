<div class="table-responsive datatable export simple">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">Tahun Akademik</th>
				<th class="" rowspan="2">Daya Tampung</th>
				<th class="" colspan="2">Jumlah Calon Mahasiswa</th>
				<th class="" colspan="2">Jumlah Mahasiswa Baru</th>
				<th class="" colspan="2">Jumlah Total Mahasiswa</th>
			</tr>
			<tr>
				<th class="">Ikut Seleksi</th>
				<th class="">Lulus Seleksi</th>
				<th class="">Non- Reguler</th>
				<th class="">Transfer</th>
				<th class="">Non- Reguler</th>
				<th class="">Transfer</th>
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
			foreach($rows as $row){
			?>
			<tr>
				<td class="">TS<?php  $t = $row["tahun"]-$ts; echo $t == 0 ? "" : "{$t}"; ?></td>
				<td class=""><?=$row["daya_tampung"];?></td>
				<td class="">
					<?php if ($row["calon_ikut"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>3/1/2/IS/0/<?=$row["tahun"];?>"><?=$row["calon_ikut"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["calon_lulus"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>3/1/2/IS/1/<?=$row["tahun"];?>"><?=$row["calon_lulus"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["maba_reg"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>3/1/2/MB/0/<?=$row["tahun"];?>"><?=$row["maba_reg"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["maba_trf"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>3/1/2/MB/1/<?=$row["tahun"];?>"><?=$row["maba_trf"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["mhs_reg"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>3/1/2/LM/0/<?=$row["tahun"];?>"><?=$row["mhs_reg"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["mhs_trf"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>3/1/2/LM/1/<?=$row["tahun"];?>"><?=$row["mhs_trf"];?></a>
					<?php } ?>
				</td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td>Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="1"></td>
				<td class="footer-callback" data-operation="sum" data-column="2"></td>
				<td class="footer-callback" data-operation="sum" data-column="3"></td>
				<td class="footer-callback" data-operation="sum" data-column="4"></td>
				<td class="footer-callback" data-operation="sum" data-column="5"></td>
				<td class="footer-callback" data-operation="sum" data-column="6"></td>
				<td class="footer-callback" data-operation="sum" data-column="7"></td>
			</tr>
		</tfoot>
	</table>
</div>