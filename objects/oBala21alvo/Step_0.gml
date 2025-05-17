if (fim_animacao()) {
    instance_create_depth(x, y, 0, oRaio);
    // Calcula a posição deslocada em 32 pixels na direção atual
    var dx = lengthdir_x(32, direction);
    var dy = lengthdir_y(32, direction);

    // Cria o alvo nessa posição deslocada
    var alvo = instance_create_depth(x + dx, y + dy, 0, oBala21alvo);
    alvo.direction = direction;


    instance_destroy();
}
