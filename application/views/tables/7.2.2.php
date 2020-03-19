<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Tahun</th>
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
				<td class="shrink"><?=$row["tahun"];?></td>
				<td class="">
					<?php if(empty($row["url"])){ echo $row["kegiatan"]; } else { ?>
					<a href="<?=$row["url"];?>"><?=$row["kegiatan"];?></a>
					<?php } ?>
				</td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>