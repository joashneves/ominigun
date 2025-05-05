	var bala = instance_create_depth(x,y,0,oBala00);
	audio_play_sound(sndTiroArma14_0,5,false)
	bala.image_angle = point_direction(x,y, oCursor.x, oCursor.y);
	bala.direction = point_direction(x,y, oCursor.x, oCursor.y);
	bala.speed = 7;
	
	alarm[1] = 30;