<div class="table-responsive datatable fixed export auto-number ">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Nama Dosen Pembimbing Akademik</th>
				<th class="">Jumlah Mahasiswa Bimbingan</th>
				<th class="">Rata-rata Banyaknya Pertemuan/mhs/semester</th>
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
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class="shrink"><a href="#"><?=$row;?></a></td>
				<td class=""><a href="<?=base_url();?>5/4/1/LM/1">0</a></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>