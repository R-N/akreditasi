<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Nama Kegiatan dan Waktu Penyelenggaraan</th>
				<th class="">Tingkat</th>
				<th class="">Prestasi yang Dicapai</th>
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
				<td class="">Nama Kegiatan</td>
				<td class=""></td>
				<td class=""><a href="#"><?=$row;?></a></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>