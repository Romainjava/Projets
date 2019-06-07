$(document).ready(function (e) {
    setImage(1);


});


function setImage(imageActuelle) {
	var nouvelleImage =0;





	if(imageActuelle==43){
		nouvelleImage = 1;
	}else{
		nouvelleImage=imageActuelle+1;
	}



	
	$(".sequenceLogo.sequenceLogoActif").removeClass("sequenceLogoActif");
	$(".sequenceLogo_"+nouvelleImage).addClass("sequenceLogoActif");


	if(nouvelleImage==43){
		setTimeout(setImage, 800, nouvelleImage);    
	}else{
		setTimeout(setImage, 70, nouvelleImage);    
	}








}





