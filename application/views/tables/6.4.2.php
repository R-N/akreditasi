<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Sumber Pustaka</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class="shrink">1</td>
				<td class=""><?=$row;?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>