var offset = (recuo_timer > 0) ? recuo_forca : 0;
var recuo_x = lengthdir_x(-offset, global.dir);
var recuo_y = lengthdir_y(-offset, global.dir);

var dir = point_direction(x, y, oCursor.x, oCursor.y);

if (instance_exists(oPlayer)) {
    // Calcula a direção lateral com base no ângulo
    var dif = angle_difference(dir, 0); // diferença entre dir e 0 (direita)

    var is_right = (dif > -90 && dif < 90); // cursor está à direita do jogador
	
    var lateral_offset = is_right ? 12 : -12;

    x = oPlayer.x + recuo_x + lateral_offset;
    y = oPlayer.y + recuo_y;

    image_yscale = is_right ? 1 : -1;

    sprite_index = oPlayer.aparencia;
    image_angle = dir;

    image_alpha = oPlayer.player_morto ? 0 : 1;
    if (instance_exists(oPortaRoom)) {
        image_alpha = oPortaRoom.entrando ? 0 : 1;
    }
}

if (recuo_timer > 0) recuo_timer--;
