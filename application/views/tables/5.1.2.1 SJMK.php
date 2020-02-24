<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Sub Jenis Mata Kuliah</th>
				<th class="">SKS</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""><?=$row;?></td>
				<td class=""><a href="<?=base_url();?>5/1/2/1/MK/1">0</a></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>