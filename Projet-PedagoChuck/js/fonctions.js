$(window).load(function (e) {
	centrer();

	////////////////////////////
	if ($(document).width() < 800 || $(document).height() < 400 || isMobile == true) {
		$("#imgCit2").attr('src', 'images/txtb1.jpg');
		$("#imgCit1").attr('src', 'images/txtb2.jpg');
	} else {
		$("#imgCit2").attr('src', 'images/txtb2.jpg');
		$("#imgCit1").attr('src', 'images/txtb1.jpg');
	}
	////////////////////////////





});
$(window).resize(function (e) {
	centrer();





	////////////////////////////
	if ($(document).width() < 800 || $(document).height() < 400 || isMobile == true) {
		$("#imgCit2").attr('src', 'images/txtb1.jpg');
		$("#imgCit1").attr('src', 'images/txtb2.jpg');
	} else {
		$("#imgCit2").attr('src', 'images/txtb2.jpg');
		$("#imgCit1").attr('src', 'images/txtb1.jpg');
	}
	////////////////////////////


});


function centrer() {
	var hauteurP2 = $('#page_2 .conteneurTexte').height();
	var hauteurP3 = $('#page_3 .conteneurTexte').height();
	var tailleFenetre = $(document).height();



	$('#page_2 .conteneurTexte').css("top", (tailleFenetre - hauteurP2 - 30) / 2 + "px");
	$('#page_3 .conteneurTexte').css("top", (tailleFenetre - hauteurP3 - 30) / 2 + "px");

}


$(document).ready(function () {
	$("#videoBackGround").on(
		"timeupdate",
		function (event) {
			if (this.currentTime > 1) {
				$("#videoBackGround").off('timeupdate');
				$("#videoBackGround").fadeTo(400, 1);
			}
		});
});


//fonction qui charge la video auto pour remplacer 
var iframe = document.querySelector('iframe');
var player = new Vimeo.Player(iframe);

$(document).ready(function () {
	player.play();
});



