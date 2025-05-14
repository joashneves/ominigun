/// @description Insert description here
// You can write your code in this editor
if(global.pause) return;

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0])
var vh = camera_get_view_height(view_camera[0])

if(point_in_rectangle(x,y,vx,vy,vx+vw,vy+vh)) instance_destroy();







