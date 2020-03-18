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
				<td class=""><?=$row["smt"];?></td>
				<td class=""><?=$row["kode_mk"];?></td>
				<td class=""><?=$row["nama_mk"];?></td>
				<td class=""><?=$row["sks"];?></td>
				<td class="text-center shrink"><?=$row["mk_inti"]?"V":"";?></td>
				<td class="text-center shrink"><?=!$row["mk_inti"]?"V":"";?></td>
				<td class="text-center shrink"><?=$row["tugas"]?"V":"";?></td>
				<td class="text-center shrink">
					<?php if(empty($row["url_desk"])){ echo $row["desk"]?"V":""; } else { ?>
					<a href="#"><?=$row["desk"]?"V":"";?></a>
					<?php } ?>
				</td>
				<td class="text-center shrink">
					<?php if(empty($row["url_sil"])){ echo $row["sil"]?"V":""; } else { ?>
					<a href="#"><?=$row["sil"]?"V":"";?></a>
					<?php } ?>
				</td>
				<td class="text-center shrink">
					<?php if(empty($row["url_sap"])){ echo $row["sap"]?"V":""; } else { ?>
					<a href="#"><?=$row["sap"]?"V":"";?></a>
					<?php } ?>
				</td>
				<td class=""><?=$row["unit"];?></td>
			</tr>
			<?php } ?>
		</tbody>
		<tfoot>
			<tr>
				<td colspan="3">Jumlah</td>
				<td class="footer-callback" data-operation="sum" data-column="3">157</td>
				<td>130</td>
				<td>27</td>
			</tr>
		</tfoot>
	</table>
</div>