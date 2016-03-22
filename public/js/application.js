$(document).ready(function() {
  bindListeners();
});


var bindListeners = function(){
	$("#solve-btn").on('click', displaySolvedGame)
}

var replaceButtonHref = function(action) {
	var idNumber = parseInt(action.slice(-1));
		idNumber += 1;
		var idString = idNumber.toString();
		var new_href = action.substring(0, action.length-1) + idString;
		$("#solve-btn").attr("href", new_href)
		$("#solve-btn").html("Solve Another Game")
}

var displaySolvedGame = function(e){
	e.preventDefault();
	console.log(e)
	var action = $(this).attr('href');
	console.log(action)
	$.get(action)
	.done(function(response){
		console.log(response);
		var array = jQuery.parseJSON(response);
		var delayTime = 0;
		var color1 = 40;
		var color2 = 220;
		var color3 = 206;
		for (var i = 0; i < array.length; i++) {
			$('#' + array[i][0]).html(array[i][1]).hide().css("color", "rgb(" + color1 + ", " + color2 + ", " + color3 +")").delay(delayTime).fadeIn('slow');
			delayTime += 200;
			color1 += 1;
			color2 -= 3;
			color3 -= 1;
		}
		//display solve another game button
		// replaceButtonHref(action);

	})
}

