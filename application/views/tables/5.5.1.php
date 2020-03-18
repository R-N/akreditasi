<div class="table-responsive datatable fixed export auto-number ">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="">No</th>
				<th class="">Nama Dosen Pembimbing</th>
				<th class="">Jumlah Mahasiswa</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""><a href="https://lecturer.uinsby.ac.id/index.php/example/detaildosen/<?=$row["id_lecturer"];?>"><?=$row["nama_dosen"];?></a></td></a></td>
				<td class=""><a href="<?=base_url();?>5/5/1/LTA/<?=$row["id"];?>"><?=$row["jumlah_mhs"];?></a></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>