var randSet = function( n ){
	var arr = new Array( n );
	for( var i=0; i<n; i=i+1 ){
		arr[i] = Math.random();
	}
	return arr;
};

var makeGraph = function( id, w, h, dataset ){
	var sv = d3.select("#"+id).append("svg").attr("width", w).attr("height", h);
	sv.selectAll("d").data(dataset).enter()
		.append("line")
		.attr("x1", function(d){return d*w+"px"} )
		.attr("y1", "0px" )
		.attr("x2", function(d, i){return 50*i+"px"} )
		.attr("y2", function(d){return h+"px"} )
		.style("stroke", "#ff0000")
		.style("stroke-width", "3");
};

var WIDTH = 1000;
var HEIGHT = 500;
var MARGINS = { top: 20, right: 20, bottom: 20, left: 50};
var xScale = d3.scale.linear().range([MARGINS.left, WIDTH - MARGINS.right]).domain([2000, 2010]);
var yScale = d3.scale.linear().range([HEIGHT - MARGINS.top, MARGINS.bottom]).domain([134, 215]);
var xAxis = d3.svg.axis().scale(xScale);
var yAxis = d3.svg.axis().scale(yScale).orient("left");
var lineGen = d3.svg.line()
	.x(function(d) { return xScale(d.year); })
	.y(function(d) { return yScale(d.sale); })
	.interpolate("basis");

