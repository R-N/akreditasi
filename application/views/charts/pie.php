
<div class="chart-area"><canvas id="chart-<?=$id;?>"></canvas></div>
<script src="<?=base_url();?>assets/js/chart.min.js"></script>
<script src="<?=base_url();?>assets/js/bs-charts.js"></script>
<script>
	
	$(document).ready(function(){
		var chartData = {
		  "type": "doughnut",
		  "data": {
			"labels": <?=json_encode(array_map(function($o){ return $o["name"]; }, $data));?>,
			"datasets": [
			  {
				<?php if(!empty($label)){ ?>"label": "<?=$label;?>",<?php } ?>
				"backgroundColor": [
				  "#4e73df",
				  "#1cc88a",
				  "#36b9cc",
				  "#d38e3c",
				  "#c94242"
				],
				"borderColor": [
				  "#ffffff",
				  "#ffffff",
				  "#ffffff",
				  "#ffffff",
				  "#ffffff"
				],
				"data": <?=json_encode(array_map(function($o){ return $o["value"]; }, $data));?>
			  }
			]
		  },
		  "options": {
			"maintainAspectRatio": false,
			  "tooltips": {
				"callbacks": {
				  "label": function(tooltipItem, data) {
					var dataset = data.datasets[tooltipItem.datasetIndex];
					var meta = dataset._meta[Object.keys(dataset._meta)[0]];
					var total = meta.total;
					var currentValue = dataset.data[tooltipItem.index];
					var percentage = parseFloat((currentValue/total*100).toFixed(1));
					return currentValue + ' (' + percentage + '%)';
				  },
				  "title": function(tooltipItem, data) {
					return data.labels[tooltipItem[0].index];
				  }
				}
			  },
			"legend": {
			  "display": true,
			  "position": "bottom"
			},
			"title": {}
		  }
		};
		var chart = new Chart($("#chart-<?=$id;?>"), chartData);
	});
</script>