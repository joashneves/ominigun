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
if(place_meeting(x,y,IDbalas)){
		life=life-5;
		instance_destroy(instance_place(x,y,IDbalas))
	}
	if(place_meeting(x,y,IDarmas)){
		life=life-5;
				instance_destroy(instance_place(x,y,IDarmas))

	}
if (life <= 0) {
	
	instance_destroy();

}

	oPlayer.BossMorto = false;