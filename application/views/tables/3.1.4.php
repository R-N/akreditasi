<div class="table-responsive datatable export simple">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">Tahun Akademik</th>
				<th class="" colspan="7">Jumlah Mahasiswa Reguler per Angkatan pada Tahun</th>
				<th class="" rowspan="2">Jumlah Lulusan s.d. TS (dari Mahasiswa Reguler)</th>
			</tr>
			<tr>
				<th class="">TS-6</th>
				<th class="">TS-5</th>
				<th class="">TS-4</th>
				<th class="">TS-3</th>
				<th class="">TS-2</th>
				<th class="">TS-1</th>
				<th class="">TS</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
				<th class="">(6)</th>
				<th class="">(7)</th>
				<th class="">(8)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			$i = 0;
			foreach($rows as $row){
			?>
			<tr>
				<td class=""><?=$row;?></td>
				<?php
					for($j = 0; $j < 7; ++$j){
						if($j >= $i){
				?>
							<td class=""><a href="<?=base_url();?>3/1/4/LM/6/6">0</a></td>
				<?php
						}else{
				?>
							<td class=""></td>
				<?php
						}
					}
					if ($i < 4){
				?>
					<td class="">0</td>
				<?php
					}
				?>
			</tr>
			<?php 
				++$i;
			} 
			?>
		</tbody>
	</table>
</div>