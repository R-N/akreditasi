<div class="table-responsive datatable fixed export ">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Jenis Seleksi</th>
				<th class="">Jumlah</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""><?=$row;?></td>
				<td class=""><a href="<?=$url;?>/1">0</a></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td>Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="1"></td>
			</tr>
		</tfoot>
	</table>
</div>