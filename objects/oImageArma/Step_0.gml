// Atualiza posição com recuo, se necessário
var offset = (recuo_timer > 0) ? recuo_forca : 0;

var recuo_x = lengthdir_x(-offset, global.dir);
var recuo_y = lengthdir_y(-offset, global.dir);

x = oPlayer.x + recuo_x;
y = oPlayer.y + recuo_y;
var dir = point_direction(x,y,oCursor.x, oCursor.y)
// Direção e escala
if (dir<= 90 || dir >= 270) {
    image_yscale = 1;
} else {
    image_yscale = -1;
}

sprite_index = oPlayer.aparencia;
image_angle = dir;
image_alpha = oPlayer.player_morto ? 0 : 1;

// Contador de recuo
if (recuo_timer > 0) recuo_timer--;
