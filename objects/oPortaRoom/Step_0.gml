/// @description 

if(entrando and instance_exists(oPlayer)){
	oPlayer.image_xscale = tamanhoPlayer;
	oPlayer.image_yscale = tamanhoPlayer;
	oPlayer.image_angle = angle;
		
	tamanhoPlayer--;
}


image_angle = angle;

angle--;