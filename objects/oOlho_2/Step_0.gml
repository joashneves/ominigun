/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(oBoss))instance_destroy();

if (municao++ >= municaoTotal) {
    for (var i = 0; i < 12; i++) {
        var angulo = i * 30; // 360° / 12 = 30°
        var bala = instance_create_depth(x, y, 0, oBalaInimigo01);
        bala.image_angle = angulo;
        bala.direction = angulo;
        bala.speed = 4;
    }
    municao = 0;
}

	if(place_meeting(x,y,IDbalas)){
		life=life-25;
		instance_destroy(instance_place(x,y,IDbalas))
	}
	if(place_meeting(x,y,IDarmas)){
		life=life-50;
	}
	if(lanca >= 1 && instance_exists(oArma12)){
		var _lanca = instance_create_depth(x,y,0,oBala12);
		_lanca.direction = point_direction(x,y,oArma12.x,oArma12.y);
		_lanca.image_angle = point_direction(x,y,oArma12.x,oArma12.y);
		_lanca.speed = 16;
		
		lanca--;
	}

	if(life <= 0) instance_destroy();