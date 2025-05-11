
//show_debug_message("Tempo tempo : " + string(corpo));

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0])
var vh = camera_get_view_height(view_camera[0])

if (!global.pause) {
    if (instance_exists(topo)) {
        // Segue o topo normalmente
        var dist = point_distance(x, y, topo.x, topo.y);
        if (dist > 8) {
            dir = point_direction(x, y, topo.x, topo.y);
            direction = dir;
            speed = vel;
            image_angle = dir;
        }
		// Mecanica que puxa a cabeça
    } else if (instance_exists(oPlayer)) {
        
        // Senão, se move aleatoriamente perto do player
		vel = 2;
		
		if(point_in_rectangle(x,y,vx,vy,vx+vw,vy+vh)) {
			if(!alarm[1]) alarm[1] = 190;	
		}else{
        dir = point_direction(x,y,oPlayer.x, oPlayer.y); // +- 45 graus
		}
        direction = dir;
        speed = vel;
        image_angle = dir;
    }

    // Ataques por segmento
    switch(corpo){
        case "corpo":
            if (++municao >= municaoMax) {
                var bala = instance_create_depth(x, y, 0, oThornAtack00);
                var shot_dir = point_direction(x, y, oPlayer.x, oPlayer.y);
                bala.image_angle = shot_dir;
                bala.direction = shot_dir;
                bala.speed = 5;
                municao = 0;
            }
        break;

        case "cauda":
            municaoMax = 90;
            if (++municao >= municaoMax) {
                instance_create_depth(x, y, 0, oFogoBoss);
                municao = 0;
            }
        break;

        case "cabeca":
		
		if (distance_to_object(oPlayer) < 12)
		{
			var bala = instance_create_depth(x,y,0,oBalaInimigo);
			bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
			bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
			bala.speed = 6;
			bala.image_blend = c_red;
		}
		municaoMax = 120;
            if (++municao >= municaoMax) {
                
			for (var i = 0; i < 8; i++) {
			    var angulo = i * 45; // Começa em 0, vai até 315
			    var bala = instance_create_depth(x, y, -1, oThornAtack00);
			    bala.direction = angulo;
			    bala.image_angle = angulo;
			    bala.speed = 9;
			}
				municao = 0;
            }
			
        break;
    }
}

// Reativa o alarme
alarm[0] = 10*tempo;
	