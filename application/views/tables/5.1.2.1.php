<div class="table-responsive datatable fixed export auto-number simple">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Jenis Mata Kuliah</th>
				<th class="">SKS</th>
				<th class="">Keterangan</th>
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
				<td class=""></td>
				<td class="shrink"><?=$row;?></td>
				<td class=""><a href="<?=base_url();?>5/1/2/1/SJMK/1">0</a></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">Total</td>
				<td class="footer-callback" data-operation="sum" data-column="2"></td>
			</tr>
		</tfoot>
	</table>
</div>