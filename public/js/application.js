$(document).ready(function() {
  bindListeners();
});


var bindListeners = function(){
	$(".btn").on('click', displaySolvedGame)
}

var displaySolvedGame = function(e){
	e.preventDefault();
	var action = $(this).attr('href')
	console.log(action)
	$.get(action)
	.done(function(response){
		var array = jQuery.parseJSON(response);
		console.log(array);
		var delayTime = 0;
		for (var i = 0; i < array.length; i++) {
			$('#' + array[i][0]).html(array[i][1]).hide().css("color", "#337ab7").delay(delayTime).fadeIn('slow');
			delayTime += 200
		}
	})
}
