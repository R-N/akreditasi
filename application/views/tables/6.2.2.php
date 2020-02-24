<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Tahun</th>
				<th class="">Judul Penelitian</th>
				<th class="">Sumber dan Jenis Dana</th>
				<th class="">Jumlah Dana (dalam juta)</th>
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
				<td class="shrink"><a href="#"><?=$row;?></a></td>
				<td class=""></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3">Jumlah (TODO)</td>
				<td class="footer-callback" data-operation="sum" data-column="3"></td>
			</tr>
		</tfoot>
	</table>
</div>