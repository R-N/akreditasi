
<div class="chart-area"><canvas id="chart-<?=$id;?>"></canvas></div>
<script src="http://localhost/raja-laundry/assets/js/chart.min.js"></script>
<script src="http://localhost/raja-laundry/assets/js/bs-charts.js"></script>
<script>
	$(document).ready(function(){
		var chartData = {
		  "type": "bar",
		  "data": {
			"labels": <?=json_encode(array_map(create_function('$o', 'return $o["name"];'), $data));?>,
			"datasets": [
			  {
				<?php if(!empty($label)){ ?>"label": "<?=$label;?>",<?php } ?>
				"backgroundColor": "#0041ff",
				"borderColor": "rgba(78, 115, 223, 1)",
				"data": <?=json_encode(array_map(create_function('$o', 'return $o["value"];'), $data));?>
			  }
			]
		  },
		  "options": {
			"maintainAspectRatio": false,
			"legend": {
			  "display": false
			},
			"scales": {
			  "xAxes": [
				{
				  "ticks": {
					"beginAtZero": true
				  }
				}
			  ],
			  "yAxes": [
				{
				  "ticks": {
					"beginAtZero": true
				  }
				}
			  ]
			}
		  }
		};
		var chart = new Chart($("#chart-<?=$id;?>"), chartData);
	});
</script>