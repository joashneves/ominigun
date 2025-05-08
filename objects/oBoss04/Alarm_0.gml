if (!global.pause) {
    if (instance_exists(topo)) {
        var dist = point_distance(x, y, topo.x, topo.y);
        
        if (dist > 8) {
            var dir = point_direction(x, y, topo.x, topo.y);
            direction = dir;
            speed = vel
            image_angle = dir;
        }
    } else {
        if (instance_exists(oPlayer)) {
            var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
            direction = dir;
            speed = vel
            image_angle = dir;
        }
    }
	if(municao++ >= municaoMax){
	var bala = instance_create_depth(x,y,0,oThornAtack00);
	bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
	bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
	bala.speed = 5;
	
	municao=0;
	
}

}



// Reinicia o alarme para repetir
alarm[0] = 10;
