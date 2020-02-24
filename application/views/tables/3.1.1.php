<div class="table-responsive datatable export simple">
	<table class="table table-striped table-hover">
		<thead>
			<tr>
				<th class="" rowspan="2">Tahun Akademik</th>
				<th class="" rowspan="2">Daya Tampung</th>
				<th class="" colspan="2">Jumlah Calon Mahasiswa</th>
				<th class="" colspan="2">Jumlah Mahasiswa Baru</th>
				<th class="" colspan="2">Jumlah Total Mahasiswa</th>
				<th class="" colspan="2">Jumlah Lulusan</th>
				<th class="" colspan="3">IPK Lulusan noruler</th>
				<th class="" colspan="3">Persen Lulusan noruler dgn IPK:</th>
			</tr>
			<tr>
				<th class="">Ikut Seleksi</th>
				<th class="">Lulus Seleksi</th>
				<th class="">noruler Bukan Transfer</th>
				<th class="">Transfer</th>
				<th class="">noruler Bukan Transfer</th>
				<th class="">Transfer</th>
				<th class="">noruler Bukan Transfer</th>
				<th class="">Transfer</th>
				<th class="">Min</th>
				<th class="">Rat</th>
				<th class="">Mak</th>
				<th class="">&lt;2.75</th>
				<th class="">2.75-3.50</th>
				<th class="">&gt;3.50</th>
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
				<th class="">(12)</th>
				<th class="">(13)</th>
				<th class="">(14)</th>
				<th class="">(15)</th>
				<th class="">(16)</th>
			</tr>
		</thead>
		<tbody>
			<?php 
			foreach($rows as $row){
			?>
			<tr>
				<td class=""><?=$row;?></td>
				<td class="">0</td>
				<td class=""><a href="<?=base_url();?>3/1/1/LIS/nor/1">0</a></td>
				<td class=""><a href="<?=base_url();?>3/1/1/LIS/trf/1">0</a></td>
				<td class=""><a href="<?=base_url();?>3/1/1/MB/nor/1">0</a></td>
				<td class=""><a href="<?=base_url();?>3/1/1/MB/trf/1">0</a></td>
				<td class=""><a href="<?=base_url();?>3/1/1/LM/nor/1">0</a></td>
				<td class=""><a href="<?=base_url();?>3/1/1/LM/trf/1">0</a></td>
				<td class=""><a href="<?=base_url();?>3/1/1/LL/nor/1">0</a></td>
				<td class=""><a href="<?=base_url();?>3/1/1/LL/trf/1">0</a></td>
				<td class="">0</td>
				<td class="">0</td>
				<td class="">0</td>
				<td class="">0</td>
				<td class="">0</td>
				<td class="">0</td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td>Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="1"></td>
				<td class="footer-callback" data-operation="sum" data-column="2"></td>
				<td class="footer-callback" data-operation="sum" data-column="3"></td>
				<td class="footer-callback" data-operation="sum" data-column="4"></td>
				<td class="footer-callback" data-operation="sum" data-column="5"></td>
				<td class="footer-callback" data-operation="sum" data-column="6"></td>
				<td class="footer-callback" data-operation="sum" data-column="7"></td>
				<td class="footer-callback" data-operation="sum" data-column="8"></td>
				<td class="footer-callback" data-operation="sum" data-column="9"></td>
			</tr>
		</tfoot>
	</table>
</div>