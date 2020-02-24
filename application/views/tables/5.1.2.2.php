<div class="table-responsive datatable fixed export">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">Smt</th>
				<th class="" rowspan="2">Kode MK</th>
				<th class="" rowspan="2">Nama Mata Kuliah</th>
				<th class="" rowspan="2">Bobot sks</th>
				<th class="" colspan="2">sks MK dalam Kurikulum</th>
				<th class="" rowspan="2">Bobot Tugas</th>
				<th class="" colspan="3">Kelengkapan</th>
				<th class="" rowspan="2">Unit/ Jur/ Fak Penyelenggara</th>
			</tr>
			<tr>
				<th class="">Inti</th>
				<th class="">Institusional</th>
				<th class="">Deskripsi</th>
				<th class="">Silabus</th>
				<th class="">SAP</th>
			</tr>
			<tr>
				<th class="">(1)</th>
				<th class="">(2)</th>
				<th class="">(3)</th>
				<th class="">(4)</th>
				<th class="">(5)</th>
				<th class="">(6)</th>
				<th class="">(7)</th>
				<th class="">(8)</th>
				<th class="">(9)</th>
				<th class="">(10)</th>
				<th class="">(11)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""></td>
				<td class=""></td>
				<td class="shrink"><?=$row;?></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""></td>
				<td class=""><a href="#">v</a></td>
				<td class=""><a href="#">v</a></td>
				<td class=""><a href="#">v</a></td>
				<td class=""></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>