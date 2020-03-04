<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">NIM</th>
				<th class="">Nama Mhs</th>
				<th class="">Tahun</th>
				<th class="">Judul TA</th>
				<th class="">Pembimbing</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""><?=$row;?></td>
				<td class=""><a href="#">Pembimbing</a></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>