<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Judul Pustaka</th>
				<th class="">Jumlah Copy</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""><a href="#"><?=$row;?></a></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>