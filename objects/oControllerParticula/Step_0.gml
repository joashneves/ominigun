if(instance_exists(oPlayer)){
while(instance_number(oParticula) < oPlayer.rage){
	instance_create_depth(oPlayer.x+random_range(-16,16), oPlayer.y+random_range(-16,16),-10,oParticula);
}
}