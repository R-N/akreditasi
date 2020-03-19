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
			$i = 0;
			foreach($rows as $row){
				++$i;
			?>
			<tr>
				<td class="shrink"><?=$i;?></td>
				<td class="">
					<?php if(empty($row["url_sumber"])){ echo $row["sumber"]; } else { ?>
					<a href="<?=$row["url_sumber"];?>"><?=$row["sumber"];?></a>
					<?php } ?>
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>