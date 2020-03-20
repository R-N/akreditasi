<p class="text-justify">Perangkat software yang digunakan untuk proses pembelajaran di kelas dan di laboratorium, meliputi (a) power point, (b) MS word, (c) Excel, (d) NetBeans, (h) Packet Tracer (i) Web dan Database Server (Apache, MySql, Oracle). Perangkat-perangkat software tersebut membantu dosen dan mahasiswa dalam menunjang proses pembelajaran, diantaranya membuat tampilan/slide untuk memudahkan dalam penjelasan materi, melakukan penghitungan statistik bahasa, membuat media pembelajaran, dan lain-lain</p>
<div class="table-responsive datatable fixed export auto-number">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">No</th>
				<th class="" rowspan="2">Nama Software</th>
				<th class="" colspan="3">Lisensi</th>
			</tr>
			<tr>
				<th class="">Telah terlisensi</th>
				<th class="">Belum terlisensi</th>
				<th class="">Freeware</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			$i = 0;
			foreach($rows as $row){
				++$i;
			?>
			<tr>
				<td class=""><?=$i;?></td>
				<td class=""><?=$row["software"];?></td>
				<td class="shrink text-center"><?=$row["lisensi"]==1?"V":"";?></td>
				<td class="shrink text-center"><?=$row["lisensi"]==2?"V":"";?></td>
				<td class="shrink text-center"><?=$row["lisensi"]==3?"V":"";?></td>
			</tr>
			<?php } ?>
		</tbody>
	</table>
</div>