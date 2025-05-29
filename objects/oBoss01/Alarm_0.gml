/// @description Insert description here
// You can write your code in this editor
	estado = choose("ataque","defesa");

	if (instance_number(oBulletOlhoBoss02) < 6){
		
	if (estado == "ataque") {
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss04);
	enemy.direction = point_direction(x,y,x,y-90);
	enemy.image_angle = point_direction(x,y,x,y-90);
	enemy.speed = 2;
	
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss01);
	enemy.direction = point_direction(x,y,x,y+90);
	enemy.image_angle = point_direction(x,y,x,y+90);
	enemy.speed = 2;
	

	} else if (estado == "defesa"){
	var xx = random_range(0,90);
	var yy = random_range(0,90);
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss02);
	enemy.direction = point_direction(x,y,x-xx,y-yy);
	enemy.image_angle = point_direction(x,y,x,y);
	enemy.speed =3;
	
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss02);
	enemy.direction = point_direction(x,y,x+xx,y+yy);
	enemy.image_angle = point_direction(x,y,x,y);
	enemy.speed = 3;
	
		var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss02);
	enemy.direction = point_direction(x,y,x-xx,y+yy);
	enemy.image_angle = point_direction(x,y,x,y);
	enemy.speed = 3;
	
	var enemy = instance_create_layer(x,y, "Boss", oEnemyOlhoBoss02);
	enemy.direction = point_direction(x,y,x+xx,y-yy);
	enemy.image_angle = point_direction(x,y,x,y);
	enemy.speed = 3;
	
	}
		
	} else {
		lasers = true
	}
	

if(!alarm[0]) alarm[0] = random_range(90,210);
