function scrMovPerseguir(_spd, _range) {
    var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
    var dist = point_distance(x, y, oPlayer.x, oPlayer.y);

    if (dist > _range) {
        vspd = lengthdir_y(_spd, dir);
        hspd = lengthdir_x(_spd, dir);
    } else {
        vspd = 0;
        hspd = 0;
    }

    move_and_collide(vspd, hspd, oBloco);
}

function scrMovAleatorio(_spd) {
    var dir = random(360); // direção aleatória
    var mag = random_range(0.2, 0.5); // fator de lentidão

    vspd = lengthdir_y(_spd * mag, dir);
    hspd = lengthdir_x(_spd * mag, dir);

    move_and_collide(vspd, hspd, oBloco);
}

function scrFicarProximo(_spd, _distAlvo) {
    var dist = point_distance(x, y, oPlayer.x, oPlayer.y);

    if (dist > _distAlvo) {
        // Corre até o jogador
        var dir = point_direction(x, y, oPlayer.x, oPlayer.y);
        vspd = lengthdir_y(_spd, dir);
        hspd = lengthdir_x(_spd, dir);
    } else {
        // Gira em volta do jogador
        angle_offset += 2; // velocidade angular
        angle_offset = angle_offset mod 360;

        var px = oPlayer.x + lengthdir_x(_distAlvo, angle_offset);
        var py = oPlayer.y + lengthdir_y(_distAlvo, angle_offset);

        var dir = point_direction(x, y, px, py);
        vspd = lengthdir_y(_spd * 0.75, dir); // gira um pouco mais lento
        hspd = lengthdir_x(_spd * 0.75, dir);
    }

    move_and_collide(vspd, hspd, oBloco);
}
