
surface_set_target(surf_light)
	gpu_set_blendmode_ext(bm_dest_color, bm_zero)
		draw_surface(application_surface, 0,0)
	gpu_set_blendmode(bm_normal)
	
surface_reset_target()


var vx = camera_get_view_x(view_camera[0]);
var vy = camera_get_view_y(view_camera[0]);
var vw = camera_get_view_width(view_camera[0]);
var vh = camera_get_view_height(view_camera[0]);
draw_surface(surf_light, 0, 0);
gpu_set_blendmode(bm_normal);