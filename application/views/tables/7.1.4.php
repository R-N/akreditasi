<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Karya</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class="shrink"></td>
				<td class="">
					<?php if(empty($row["url"])){ echo $row["karya"]; } else { ?>
					<a href="<?=$row["url"];?>"><?=$row["karya"];?></a>
					<?php } ?>
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>