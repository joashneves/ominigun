/// @description Insert description here
// You can write your code in this editor
y = y + sin(timer * frequencia)*amplitude;
timer++;
var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0])
var vh = camera_get_view_height(view_camera[0])

if(place_meeting(x,y,IDbalas)){
	life=life-25;
	instance_destroy(instance_place(x,y,IDbalas))

			var id_som = 	audio_play_sound(sndDanoinimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito

}
if(place_meeting(x,y,IDarmas)){
	life=life-50;
	var id_som = 	audio_play_sound(sndDanoinimigo,2,0);
	var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
	audio_sound_gain(id_som, vol_efeito, 0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito
}

if (life <= 0) {
	
	image_speed = 2
	if(fim_animacao()){
	instance_destroy();
	}
}