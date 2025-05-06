if global.pause return;

if gamepad_is_connected(0) {
var haxis = gamepad_axis_value(0, gp_axisrh);
var vaxis = gamepad_axis_value(0, gp_axisrv);
direction = point_direction(0,0,haxis, vaxis);
speed = point_distance(0 ,0, haxis, vaxis) * 50;
//show_debug_message("mensagem : " + string(oPlayer.x) + "," + string(oPlayer.y) + " : " + string(haxis) + "," + string(vaxis) + " = " + string(oPlayer.x + haxis) + "," + string(oPlayer.y + vaxis))
gamepad_set_axis_deadzone(0, 0.20); 
}
else{
x = mouse_x;
y = mouse_y;
}