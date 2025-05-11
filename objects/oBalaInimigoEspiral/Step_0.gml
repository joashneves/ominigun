/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(IDenemy)) instance_destroy();

// Inicializar uma vez
if (!variable_global_exists("init")) {
    init = true;
    direction = point_direction(x, y, tx, ty);
    angle_spin = 6; // velocidade do giro
}

direction += angle_spin; // gira enquanto se move
speed = 4;






