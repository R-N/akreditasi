<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Kode</th>
				<th class="">Uraian</th>
			</tr>
		</thead>
		<tbody>
			<?php foreach($rows as $row){?>
			<tr>
				<td class=""><?=$row["kode"];?></td>
				<td class=""><?=$row["uraian"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>