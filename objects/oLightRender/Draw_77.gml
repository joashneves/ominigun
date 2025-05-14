
surface_set_target(surf_light)
	gpu_set_blendmode_ext(bm_dest_color, bm_zero)
		draw_surface(application_surface, 0,0)
	gpu_set_blendmode(bm_normal)
	
surface_reset_target()


var vw = display_get_gui_width();
var vh = camera_get_view_height(view_camera[0]);

// Redimensiona a surface de luz para cobrir a tela corretamente

//   draw_surface(surf_light, 2,	0);


//show_debug_message("draw_surf_x : " + string(draw_surf_x) + "draw_surf_y : " + string(draw_surf_y) + "vh,vw : " + string(vw) + "," + string(vh))

gpu_set_blendmode(bm_normal);