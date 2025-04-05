	/// @description IA 

// Atribui o valor gerado às variáveis de movimento horizontal e vertical
vspd = random_valueV * spd;
hspd = random_valueH * spd;

// Executa o comando de movimento e colisão
move_and_collide(vspd, hspd, oBloco);

if( municao++ >= municaoTotal){
		var bala = instance_create_depth(x,y,0,oThornAtack01);
		bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.speed = 6;
		municao=0;
}

//	if(place_meeting(x,y,oBala12))lanca++;
if(place_meeting(x,y,IDbalas)){
	life=life-25;
	if(oBala12)lanca += 1;
	instance_destroy(instance_place(x,y,IDbalas))
	audio_play_sound(sndDanoinimigo,2,0);
}
if(place_meeting(x,y,IDarmas)){
	life=life-50;
	audio_play_sound(sndDanoinimigo,2,0);
}

if (life <= 0) {
	
	instance_destroy();

}

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0])
var vh = camera_get_view_height(view_camera[0])

if(!point_in_rectangle(x,y,vx,vy,vx+vw,vy+vh))
{
	x = oBoss02.x;
	y = oBoss02.y-180;
}
