<p>Upaya sosialisasi visi, misi dan tujuan program studi Sistem Informasi
dilakukan melalui:</p>
<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Upaya</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""><?=$row["text"];?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>