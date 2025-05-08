// Mudar sprites conforme posição na "minhoca"
if (!instance_exists(baixo)) {
    sprite_index = sBoss04Cauda;
}

if (!instance_exists(topo)) {
    sprite_index = sBoss04Cabeca;
}
if(place_meeting(x,y,IDbalas)){
		life=life-5;
		instance_destroy(instance_place(x,y,IDbalas))
	}
	if(place_meeting(x,y,IDarmas)){
		life=life-5;
	}
if (life <= 0) {
	
	instance_destroy();

}
