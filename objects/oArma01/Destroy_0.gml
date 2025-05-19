/// @description Insert description here
// You can write your code in this editor
	for(var i = 0 ; i < 3; i += 1;) {
	var bala = instance_create_depth(x,y,0,oBala01);
	bala.image_angle = point_direction(x,y, random_range(mouse_x-32, mouse_x+32), mouse_y);
	bala.direction = point_direction(x,y, mouse_x+23*i, mouse_y+23*i);
	bala.speed = 5;
	}
	

var id_som = audio_play_sound(sndArma01Destruida,5,false)	
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
