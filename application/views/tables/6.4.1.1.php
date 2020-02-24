<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Jenis Pustaka</th>
				<th class="">Jumlah Judul</th>
				<th class="">Jumlah Copy</th>
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
				<td class="shrink"><?=$row;?></td>
				<td class=""><a href="<?=base_url();?>6/4/1/1/LP/1">0</a></td>
				<td class="">0</td>
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