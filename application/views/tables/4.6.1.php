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
				<td class="">0</td>
				<td class=""><?=$row;?></td>
				<td class=""><a href="<?=base_url();?>4/6/1/LTK/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>4/6/1/LTK/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>4/6/1/LTK/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>4/6/1/LTK/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>4/6/1/LTK/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>4/6/1/LTK/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>4/6/1/LTK/1/1">0</a></td>
				<td class=""><a href="<?=base_url();?>4/6/1/LTK/1/1">0</a></td>
				<td class="">0</td>
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
				<td class="footer-callback" data-operation="sum" data-column="10"></td>
			</tr>
		</tfoot>
	</table>
</div>