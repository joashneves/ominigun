function scrMovPerseguirFicarEmCima() {
    var dir = point_direction(x, y, oPlayer.x+64, oPlayer.y);
    direction = dir;
		            image_angle = 0;
	speed = 3; 
}

function scrMovAleatorio() {
    var _y = random_range(1, 360); 
    var _x = random_range(1, 360); 
    var dir = point_direction(x, y, _x, _y);
	direction = dir;
		            image_angle = 0;
	speed = 3; 
	
}

function scrFicarProximo() {

    // Corre até o jogador
    var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
	            image_angle = 0;
	direction = dir;
	speed = 1.3; // velocidade do dash
		
}

function scrDashMovimentoBoss(){
            var dirDash = point_direction(x, y, oPlayer.x, oPlayer.y);
            direction = dirDash;
            image_angle = dirDash;
            speed = 6; // velocidade do dash	
}