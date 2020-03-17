<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Umpan Balik Dari</th>
				<th class="">Isi Umpan Balik</th>
				<th class="">Tindak Lanjut</th>
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
				<td class=""><?=$row["dari"];?></td>
				<td class=""><?=$row["isi"];?></td>
				<td class=""><?=$row["tindak_lanjut"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>