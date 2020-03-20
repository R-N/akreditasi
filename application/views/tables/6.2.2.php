<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">Tahun</th>
				<th class="">Judul Penelitian</th>
				<th class="">Sumber dan Jenis Dana</th>
				<th class="">Jumlah Dana (dalam juta)</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			$i = 0;
			foreach($rows as $row){
				++$i;
			?>
			<tr>
				<td class=""><?=$row["tahun"];?></td>
				<td class="">
					<?php if(empty($row["url_penelitian"])){ echo $row["judul_penelitian"]; } else { ?>
					<a href="<?=$row["url_penelitian"];?>"><?=$row["judul_penelitian"];?></a>
					<?php } ?>
				</td>
				<td class=""><?=$row["sumber_dana"];?></td>
				<td class=""><?=$row["jumlah_dana"]+0;?></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3">Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="3">1357.5</td>
			</tr>
		</tfoot>
	</table>
</div>