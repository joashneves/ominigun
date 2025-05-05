/// @description Insert description here
// You can write your code in this editor

	

if (!gamepad_is_connected(0)){
x = mouse_x;
y = mouse_y;
}
else {
	if (distance_to_object(oPlayer) > 10){
		mp_linear_step_object(oPlayer.x, oPlayer.y, speed, oPlayer);
		sprite_index = sMouse;
		
	}
	else {
		sprite_index = -1;	
	}
}