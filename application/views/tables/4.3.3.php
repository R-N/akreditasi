<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Dosen Tetap</th>
				<th class="" colspan="3">sks Pengajaran Pada</th>
				<th class="" rowspan="2">sks Penelitian </th>
				<th class="" rowspan="2">sks Pengabdian pad Masy</th>
				<th class="" colspan="2">sks Manajemen</th>
				<th class="" rowspan="2">Jumlah sks</th>
			</tr>
			<tr>
				<th class="">PS Sendiri</th>
				<th class="">PS Lain, PT Sendiri</th>
				<th class="">PT Lain</th>
				<th class="">PT Sendiri</th>
				<th class="">PT Lain</th>
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
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class="shrink"><a href="#"><?=$row;?></a></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="2">Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="2"></td>
				<td class="footer-callback" data-operation="sum" data-column="3"></td>
				<td class="footer-callback" data-operation="sum" data-column="4"></td>
				<td class="footer-callback" data-operation="sum" data-column="5"></td>
				<td class="footer-callback" data-operation="sum" data-column="6"></td>
				<td class="footer-callback" data-operation="sum" data-column="7"></td>
				<td class="footer-callback" data-operation="sum" data-column="8"></td>
				<td class="footer-callback" data-operation="sum" data-column="9"></td>
			</tr>
			<tr>
				<td colspan="2">Rata-rata (TODO)</td>
				<td class="footer-callback" data-operation="avg" data-column="2"></td>
				<td class="footer-callback" data-operation="avg" data-column="3"></td>
				<td class="footer-callback" data-operation="avg" data-column="4"></td>
				<td class="footer-callback" data-operation="avg" data-column="5"></td>
				<td class="footer-callback" data-operation="avg" data-column="6"></td>
				<td class="footer-callback" data-operation="avg" data-column="7"></td>
				<td class="footer-callback" data-operation="avg" data-column="8"></td>
				<td class="footer-callback" data-operation="avg" data-column="9"></td>
			</tr>
		</tfoot>
	</table>
</div>