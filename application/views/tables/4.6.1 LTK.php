<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">NIP</th>
				<th class="">Nama</th>
				<th class="">Jabatan</th>
				<th class="">Status</th>
				<th class="">Unit</th>
				<th class="">Lampiran</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""></td>
				<td class=""><a href="#"><?=$row;?></a></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""><a href="#">Lampiran</a></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>