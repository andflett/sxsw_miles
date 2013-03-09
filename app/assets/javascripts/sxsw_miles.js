$(document).ready(function(){
	
	$(".piechart").sparkline('html', 
		{
			height: 50,
			width: 50,
			type: 'pie',
			tooltipFormat: '{{offset:titles}}',
			tooltipValueLookups: {
				titles: {
					0: "Running",
					1: "Walking",
					2: "Biking"
				}
		  },
			sliceColors: ["#a9d3c1","#f59575","#a1b4cb"]
		}
	);
	
});