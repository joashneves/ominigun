/// @description Insert description here
// You can write your code in this editor

x = oBoss02.x+264;
y = oBoss02.y-216;

#region // Ataque

if(carregando++ >= carregandoMax){
tirinho = true;
sprite_index = sEyeAtack00;
if (fim_animacao()) {
tirinho = false;
carregando = random_range(0,1000);
sprite_index = sEye00;
}
}


#endregion

if(place_meeting(x,y,IDbalas)){
	life=life-25;

	instance_destroy(instance_place(x,y,IDbalas));
	audio_play_sound(sndDanoinimigo,2,0);
}
if(place_meeting(x,y,IDarmas)){
	life=life-5;
	audio_play_sound(sndDanoinimigo,2,0);
}

if (life <= 0) {
	
	instance_destroy();

}

