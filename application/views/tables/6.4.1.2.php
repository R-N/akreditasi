<div class="table-responsive datatable fixed export simple">
	<table class="table  table-hover">
		<thead>
			<tr>
				<th class="">Jenis</th>
				<th class="">No</th>
				<th class="">Nama Jurnal</th>
				<th class="">Rincian Nomor dan Tahun</th>
				<th class="">Jumlah</th>
			</tr>
			<tr>
				<th class=""></th>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($groups as $group){
				$i = 0;
				foreach($group["rows"] as $row){
			?>
			<tr>
				<?php if ($i == 0){ ?>
				<td class="shrink" rowspan="<?=count($group["rows"]);?>"><?=$group["name"];?></td>
				<?php } ?>
				<td class=""></td>
				<td class=""><?=$row;?></td>
				<td class=""></td>
				<td class=""><a href="<?=base_url();?>6/4/1/2/LJ/1">0</a></td>
			</tr>
			<?php 
					++$i;
				} 
			}
			?>
		</tbody>
	</table>
</div>