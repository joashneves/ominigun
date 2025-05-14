/// @description Insert description here
// You can write your code in this editor
if(!instance_exists(oBoss))instance_destroy();

	if (municao++ >= municaoTotal) {

	    var px = oPlayer.x;
	    var py = oPlayer.y;

	    // Escolhe uma posição aleatória fora da tela
	    var angulo = irandom_range(0, 359);
	    var distancia = 1000; // distância além da tela
	    var spawn_x = px + lengthdir_x(distancia, angulo);
	    var spawn_y = py + lengthdir_y(distancia, angulo);

	    var bala = instance_create_depth(spawn_x, spawn_y, 0, oBalaInimigoSniper);
	    bala.direction = point_direction(spawn_x, spawn_y, px, py);
	    bala.image_angle = bala.direction;
	    bala.speed = 7;

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