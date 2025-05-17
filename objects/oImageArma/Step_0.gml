// Atualiza posição com recuo, se necessário
var offset = (recuo_timer > 0) ? recuo_forca : 0;

var recuo_x = lengthdir_x(-offset, global.dir);
var recuo_y = lengthdir_y(-offset, global.dir);

// Direção do player
var dir = point_direction(x, y, oCursor.x, oCursor.y);

// Define offset horizontal extra com base na direção
var lateral_offset = (dir <= 90 || dir >= 270) ? -16 : 16;

x = oPlayer.x + recuo_x + lateral_offset;
y = oPlayer.y + recuo_y;

// Direção e escala
if (dir <= 90 || dir >= 270) {
    image_yscale = 1;
} else {
    image_yscale = -1;
}

sprite_index = oPlayer.aparencia;
image_angle = dir;
image_alpha = oPlayer.player_morto ? 0 : 1;

if (instance_exists(oPortaRoom)){
image_alpha = oPortaRoom.entrando  ? 0 : 1;	
}

// Contador de recuo
if (recuo_timer > 0) recuo_timer--;
