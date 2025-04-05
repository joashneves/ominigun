/// @description Insert description here
// You can write your code in this editor
estado = choose("ataque","defesa");



	if (instance_number(oEnemyOlhoBoss02) < 6){
	if (estado == "ataque") {
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss01);
	enemy.direction = point_direction(x,y,x,y-90);
	enemy.image_angle = point_direction(x,y,x,y-90);
	enemy.speed = 4;
	
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss01);
	enemy.direction = point_direction(x,y,x,y+90);
	enemy.image_angle = point_direction(x,y,x,y+90);
	enemy.speed = 4;
	

	} else if (estado == "defesa"){
	var xx = random_range(0,90);
	var yy = random_range(0,90);
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss02);
	enemy.direction = point_direction(x,y,x-xx,y-yy);
	enemy.image_angle = point_direction(x,y,x,y);
	enemy.speed =7;
	
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss02);
	enemy.direction = point_direction(x,y,x+xx,y+yy);
	enemy.image_angle = point_direction(x,y,x,y);
	enemy.speed = 7;
	
		var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss02);
	enemy.direction = point_direction(x,y,x-xx,y+yy);
	enemy.image_angle = point_direction(x,y,x,y);
	enemy.speed = 7;
	
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss02);
	enemy.direction = point_direction(x,y,x+xx,y-yy);
	enemy.image_angle = point_direction(x,y,x,y);
	enemy.speed = 7;
	
	}
	image_alpha = 1;	
	} else {
	image_alpha = 0;	
	var bala = instance_create_layer(x,y, "Boss", oBalaBoss);
	bala.direction = point_direction(x,y,x+90,y-90);
	bala.image_angle = point_direction(x,y,x,y);
	bala.speed = 5;
	bala.image_blend = c_purple;
	
	var bala = instance_create_layer(x,y, "Boss", oBalaBoss);
	bala.direction = point_direction(x,y,x-90,y+90);
	bala.image_angle = point_direction(x,y,x,y);
	bala.speed = 5;
	bala.image_blend = c_purple;
	}
	

if(!alarm[0]) alarm[0] = random_range(90,210);
