if (distance_to_object(oPlayer) < range)
{
	var bala = instance_create_depth(x,y,0,oBalaInimigo);
	bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
	bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
	bala.speed = 6;
	bala.image_blend = c_red;
}