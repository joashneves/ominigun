
surface_set_target(surf_light)
	gpu_set_blendmode_ext(bm_dest_color, bm_zero)
		draw_surface(application_surface, 0,0)
	gpu_set_blendmode(bm_normal)
	
surface_reset_target()


var vw = window_get_width(); //camera_get_view_width(view_camera[0]);
var vh = window_get_height();

// Redimensiona a surface de luz para cobrir a tela corretamente
draw_surface_stretched(surf_light, draw_surf_x, draw_surf_y, vw, vh);
show_debug_message("draw_surf_x : " + string(draw_surf_x) + "draw_surf_y : " + string(draw_surf_y) +
"vh,vw : " + string(vw) + string(vh))

gpu_set_blendmode(bm_normal);