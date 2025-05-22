var dir = choose(1, 2)

if(dir == 1){
        // ESQUERDA
        bala = instance_create_depth(x - 800, y, 0, oBulletBossFinal);
		bala.image_angle = 0;
        bala.direction = 0;
        bala.speed = 7;

}else if(dir == 2){

        // DIREITA
        bala = instance_create_depth(x + 800, y, 0, oBulletBossFinal);
		bala.image_angle = 180;
        bala.direction = 180;
        bala.speed = 7;
}