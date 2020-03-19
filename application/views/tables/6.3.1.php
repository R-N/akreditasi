<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Ruang Kerja Dosen</th>
				<th class="">Jumlah Ruang</th>
				<th class="">Jumlah Luas (m2)</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class="">
					<?php if($row["jumlah"] <= 0){ echo $row["ruang"]; } else { ?>
					<a href="<?=base_url();?>6/3/1/LR/<?=$row["id"];?>"><?=$row["ruang"];?></a>
					<?php } ?>
				</td>
				<td class="shrink">
					<?php if($row["jumlah"] <= 0){ echo $row["jumlah"]; } else { ?>
					<a href="<?=base_url();?>6/3/1/LR/<?=$row["id"];?>"><?=$row["jumlah"];?></a>
					<?php } ?>
				</td>
				<td class="shrink"><?=$row["luas"]+0;?></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="2"></td>
			</tr>
		</tfoot>
	</table>
</div>