var pageActive = 1;
var isMobile= false;
var changementEnCours = false;

function changerPage(dir){
	
	if(isMobile == false){	
	if(changementEnCours == false){

					setTimeout(function(){
						changementEnCours = false;
						},1000);

		changementEnCours = true;
		/* limites haut-bas */
		var distanceBas = $('#basPageZero').offset().top-$(window).height();

		if(pageActive==0 && dir == 1 && distanceBas>0){
			return false;
		}else if(pageActive==0 && dir == -1){
			return false;
		}else if(pageActive==3 && dir == 1){
			return false;
		}else{
			pageActive+=dir;
		}
	
		/* show-hide fleches */
		if(pageActive==0){
			$('#fleche_prev img').fadeOut();
			$('#fleche_suiv img').fadeIn();
			
						setTimeout(function(){
							$('#page_0').scrollTop($('#inPageZero').outerHeight()-16);
						},500);

			
			
		}else if(pageActive==3){
			$('#fleche_suiv img').fadeOut();
			$('#fleche_prev img').fadeIn();
		}else if(pageActive==2){
			$('#fleche_prev img').fadeIn();
			$('#fleche_suiv img').fadeIn();
		}else if(pageActive==1){
			$('#fleche_prev img').fadeOut();
			$('#fleche_suiv img').fadeOut();
		}
	
			$('#panneauTransition').addClass('animationPanneau');
	
			setTimeout(function(){
				$('.page.active').removeClass('active');
				$('#page_'+pageActive).addClass('active');
				$('#panneauTransition').addClass('reverseAnnimationPanneau');
				centrer();
				setTimeout(function(){
					$('#panneauTransition').removeClass('animationPanneau');
					$('#panneauTransition').removeClass('reverseAnnimationPanneau');
				},400);

			}, 400);
	}

	}else if(isMobile == true && dir == 1){ // si sur mobile et swipe vers le haut
		var lavideo = document.getElementById('videoBackGround');
		lavideo.play();
		$('#panneauTransition').addClass('animationPanneau');
	
			setTimeout(function(){
				$('#panneauTransition').addClass('reverseAnnimationPanneau');
				$('#page_mobile').toggle();
				isMobile = false;
				setTimeout(function(){
					$('#panneauTransition').removeClass('animationPanneau');
					$('#panneauTransition').removeClass('reverseAnnimationPanneau');
				},400);

			}, 400);

	
	}


}




$(document).ready(function(e) {
	
	$('#page_0').on('scroll', function() {

//alert($('#basPageZero').offset().top-$(window).height());
		if($('#basPageZero').offset().top-$(window).height() < -14){
			changerPage(1);
		}
	});
	
	$("#page_1, #page_2, #page_3, #page_4, #page_mobile").swipe({
		swipeUp:function(event, direction, distance, duration, fingerCount) {
			changerPage(1);
		},
		swipeDown:function(event, direction, distance, duration, fingerCount) {
			changerPage(-1);		
		}
	});

    $('#conteneurPrincipal').mousewheel(function(event) {
        if(event.deltaY /120 > 0) {
			changerPage(-1);
        }else{
			changerPage(1);
        }
    });


	$('#fleche_prev img, #pourquoiChuck').click(function(e) {
			changerPage(-1);
	});


	$('#fleche_suiv img, #nousConnaitre').click(function(e) {
			changerPage(1);
	});
	
	
});



