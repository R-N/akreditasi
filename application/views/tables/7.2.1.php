<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Sumber Dana Kegiatan Pelayanan/Pengabdian kepada Masyarakat</th>
				<th class="">TS-2</th>
				<th class="">TS-1</th>
				<th class="">TS</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""><?=$row;?></td>
				<td class=""><a href="<?=base_url();?>7/2/1/LKPKM/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>7/2/1/LKPKM/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>7/2/1/LKPKM/1/1">0</a></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>