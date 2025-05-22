
var arma = instance_create_depth(x, y - 664, 0, oBulletBossFinal); // 64px acima da tela
arma.image_angle = 270;
arma.speed = 16;
arma.direction = 270;

instance_create_depth(x, oPlayer.y - 128, 0, oSequenciaBossAtack01);
instance_create_depth(x, oPlayer.y + 128, 0, oSequenciaBossAtack01);
instance_create_depth(x, oPlayer.y , 0, oSequenciaBossAtack01);