/// @description 

if(entrando and instance_exists(oPlayer)){
	oPlayer.image_xscale = tamanhoPlayer;
	oPlayer.image_yscale = tamanhoPlayer;
	oPlayer.image_angle = angle;
		
	tamanhoPlayer--;
}
if(oPlayer.BossMorto){
	if (instance_exists(luz)) {
	luz.image_alpha = 2; // enfraquece a luz
	}
}

image_angle = angle;

angle--;