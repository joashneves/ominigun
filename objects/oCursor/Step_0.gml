sprite_index =  oDataSuperCarrie.sprite_mouse;
cursor_sprite = -1;
if (global.pause){
	cursor_sprite = oDataSuperCarrie.sprite_mouse;
	return;
}
var mira_distancia = 100;
var deadzone = 0.2;

// Detectar movimento do mouse
var mouse_moved = (mouse_x != last_mouse_x) || (mouse_y != last_mouse_y);
last_mouse_x = mouse_x;
last_mouse_y = mouse_y;

var use_mouse = mouse_moved;

if (gamepad_is_connected(0) && !use_mouse) {
    var haxis = gamepad_axis_value(0, gp_axisrh);
    var vaxis = gamepad_axis_value(0, gp_axisrv);
    var dist = point_distance(0, 0, haxis, vaxis);

    if (dist > deadzone) {
        var ang = point_direction(0, 0, haxis, vaxis);
        x = oPlayer.x + lengthdir_x(mira_distancia, ang);
        y = oPlayer.y + lengthdir_y(mira_distancia, ang);
    }
} else {
    // Mouse tem prioridade
    x = mouse_x;
    y = mouse_y;
}
