// Mudar sprites conforme posição na "minhoca"
if(global.pause) return;
if (!instance_exists(baixo)) {
    sprite_index = sBoss04Cauda;
	corpo = "cauda"
}

if (!instance_exists(topo)) {
    sprite_index = sBoss04Cabeca;
	corpo = "cabeca"
}
if(place_meeting(x,y,IDbalas) and dano_timer <= 0){
		life=life-5;
		instance_destroy(instance_place(x,y,IDbalas))
		var id_som = 	audio_play_sound(sndDanoinimigo,2,0);
var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
audio_sound_gain(id_som, vol_efeito, 0);
	levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito 
	}
	if(place_meeting(x,y,IDarmas)){
		life=life-1;
		instance_destroy(instance_place(x,y,IDarmas))
		levou_dano = true;
	dano_timer = 5; // frames de recuo/efeito 

	}
if (life <= 0) {
	
	instance_destroy();

}

	oPlayer.BossMorto = false;