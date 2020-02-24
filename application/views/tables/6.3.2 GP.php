<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Gedung</th>
				<th class="">Nama</th>
				<th class="">Kapasitas</th>
				<th class="">Luas (m2)</th>
				<th class="">Milik</th>
				<th class="">Kondisi</th>
				<th class="">Utilisasi (Jam/minggu)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""></td>
				<td class=""><?=$row;?></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>