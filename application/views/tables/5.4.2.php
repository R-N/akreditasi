<div class="table-responsive datatable fixed export auto-number simple ">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Hal</th>
				<th class="">Penjelasan</th>
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
				<td class=""></td>
				<td class="shrink"><?=$row;?></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>