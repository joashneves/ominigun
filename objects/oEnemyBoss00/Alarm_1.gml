/// @description Insert description here
// You can write your code in this editor

var bala = instance_create_layer(x, y, "Boss", oBulletOlhoBoss02);
bala.direction = point_direction(x, y, oPlayer.x, oPlayer.y);
bala.image_angle =  point_direction(x, y, oPlayer.x, oPlayer.y);
bala.speed = random_range(10, 14); // Velocidade levemente variável
bala.image_blend = c_purple;