if(global.pause) return;
if (instance_exists(oPlayer)) {
mp_potential_step_object(oPlayer.x, oPlayer.y, 3, oPlayer);

if (point_distance(x,y, oPlayer.x, oPlayer.y) < 32){
	x = oPlayer.x
	y = oPlayer.y
}
}