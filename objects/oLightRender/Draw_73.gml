var _w = camera_get_view_width(view_camera[0]);
var _h = camera_get_view_height(view_camera[0]);

if (!surface_exists(surf_light) || surface_get_width(surf_light) != _w || surface_get_height(surf_light) != _h) {
    if (surface_exists(surf_light)) surface_free(surf_light); // Libera surface antiga
    surf_light = surface_create(_w, _h, surface_rgba16float);
}


surface_set_target(surf_light);
draw_clear(ambient_light);
camera_apply(view_camera[0]);

gpu_set_blendmode(bm_add);

	with(oLight){
		//draw_self()	
		var _int = floor(image_alpha)
		repeat(_int){
			draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, 1 )
		}
		var _frac = frac(image_alpha)
		draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, _frac)
	}
 //draw_sprite_ext(sLight, 0, oCursor.x,  oCursor.y, 4, 4, 0, c_white, 1); // Luz 2x maior


gpu_set_blendmode(bm_normal);
surface_reset_target();
