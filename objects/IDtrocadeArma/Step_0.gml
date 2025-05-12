if(global.pause) return;
// Move
y = y + sin(timer * frequencia)*amplitude;
timer++;

if (instance_exists(oPlayer)) {

var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0])
var vh = camera_get_view_height(view_camera[0])

if(!point_in_rectangle(x,y,vx,vy,vx+vw,vy+vh))
{
	x = oPlayer.x;
	y = oPlayer.y;
}


if (point_distance(x,y, oPlayer.x, oPlayer.y) < 32){
	x = oPlayer.x
	y = oPlayer.y
}
}