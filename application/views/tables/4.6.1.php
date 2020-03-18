<div class="table-responsive datatable export simple auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Jenis Tenaga Kependidikan</th>
				<th class="" colspan="8">Jumlah Tenaga Kependidikan dengan Pendidikan Terakhir</th>
				<th class="" rowspan="2">Unit Kerja</th>
			</tr>
			<tr>
				<th class="">S3</th>
				<th class="">S2</th>
				<th class="">S1</th>
				<th class="">D4</th>
				<th class="">D3</th>
				<th class="">D2</th>
				<th class="">D1</th>
				<th class="">SMA/SMK</th>
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
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class="shrink"></td>
				<td class=""><?=$row["jenis_tk"];?></td>
				<td class="">
					<?php if ($row["S3"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>4/6/1/LTK/<?=$row["id"];?>/S3"><?=$row["S3"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["S2"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>4/6/1/LTK/<?=$row["id"];?>/S2"><?=$row["S2"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["S1"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>4/6/1/LTK/<?=$row["id"];?>/S1"><?=$row["S1"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["D4"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>4/6/1/LTK/<?=$row["id"];?>/D4"><?=$row["D4"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["D3"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>4/6/1/LTK/<?=$row["id"];?>/D3"><?=$row["D3"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["D2"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>4/6/1/LTK/<?=$row["id"];?>/D2"><?=$row["D2"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["D1"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>4/6/1/LTK/<?=$row["id"];?>/D1"><?=$row["D1"];?></a>
					<?php } ?>
				</td>
				<td class="">
					<?php if ($row["S3"] == 0) { echo 0; } else { ?>
					<a href="<?=base_url();?>4/6/1/LTK/<?=$row["id"];?>/SMA,SMK"><?=$row["SMA_SMK"];?></a>
					<?php } ?>
				</td>
				<td class=""><?=$row["unit"];?></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">Total</td>
				<td class="footer-callback" data-operation="sum" data-column="2"></td>
				<td class="footer-callback" data-operation="sum" data-column="3"></td>
				<td class="footer-callback" data-operation="sum" data-column="4"></td>
				<td class="footer-callback" data-operation="sum" data-column="5"></td>
				<td class="footer-callback" data-operation="sum" data-column="6"></td>
				<td class="footer-callback" data-operation="sum" data-column="7"></td>
				<td class="footer-callback" data-operation="sum" data-column="8"></td>
				<td class="footer-callback" data-operation="sum" data-column="9"></td>
			</tr>
		</tfoot>
	</table>
</div>