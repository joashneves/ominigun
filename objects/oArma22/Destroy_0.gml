for (var i = 0; i < 12; i++) {
    var angulo = i * 45; // Começa em 0, vai até 315
	
var bala = instance_create_depth(x,y,0,oBala21alvo);
 bala.direction = angulo;
    bala.image_angle = angulo;

}
