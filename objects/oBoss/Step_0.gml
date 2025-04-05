/// @description Insert description here
// You can write your code in this editor



if(municao++ >= municaoMax){
			var bala = instance_create_depth(x,y,0,oBalaBoss);
			bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
			bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
			bala.speed = 1;
	
			municao=0;
	
}

if(instance_number(oOlho) <= 2)vuneravel = true;
if(instance_number(oOlho) > 2)vuneravel = false;

if(vuneravel){
	mask_index = sBoss00;
	image_alpha = 1;
	if(place_meeting(x,y,IDbalas)){
		life=life-5;
		instance_destroy(instance_place(x,y,IDbalas))
	}
	if(place_meeting(x,y,IDarmas)){
		image_alpha = 0.1;
	}

} else{
	mask_index = -1;
	image_alpha = 0.2;
}

if (life <= 0) {
	
	instance_destroy();

}
