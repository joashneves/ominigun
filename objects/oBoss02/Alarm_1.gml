/// @description
if (global.pause) return;
	var _xx = choose(-64,0,64);
	var _yy = choose(-64,0,64);
	var _tipoAtaque = choose(1,2,3);

switch(_tipoAtaque){
	case 1:
	var inimigo = instance_create_depth(x+_xx,y+_yy,depth-1,oOlho01);
	break;
	
	case 2:
	var enemy = instance_create_layer(oPlayer.x-90,oPlayer.y-90, "Boss", oThornAtack00);
	enemy.sprite_index = sEnemyOlhoBoss01;
	
	var enemy = instance_create_layer(oPlayer.x+90,oPlayer.y-90, "Boss", oThornAtack00);
	enemy.sprite_index = sEnemyOlhoBoss01;
	
	break;
	
	case 3:
	var _bala = instance_create_depth(choose(oPlayer.x-180,oPlayer.x+180),choose(oPlayer.y-180,oPlayer.y+180),0, oBalaBoss03);
	_bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
	_bala.sprite_index = sEnemyOlhoBoss02;
	_bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
	_bala.speed = 2;
	break;
	
	default:
	break;
}