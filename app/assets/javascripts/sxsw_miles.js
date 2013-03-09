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
			sliceColors: ["#bad6ca","#f59575","#7da0cb"]
		}
	);
	
});