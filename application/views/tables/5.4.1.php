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
				<td class="shrink"></td>
				<td class=""><a href="https://lecturer.uinsby.ac.id/index.php/example/detaildosen/<?=$row["id_lecturer"];?>"><?=$row["nama_pembimbing"];?></a></td></a></td>
				<td class="shrink"><a href="<?=base_url();?>5/4/1/LM/<?=$row["id"];?>"><?=$row["jumlah_mhs"];?></a></td>
				<td class="shrink"><?=$row["rata_pertemuan"]+0;?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>