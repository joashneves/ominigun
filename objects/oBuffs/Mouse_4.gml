/// @description Insert description here
// You can write your code in this editor

global.pause = false;
ds_map_add(global.cartasSprites, _script, sprite_index);
switch _tipo{
	case "dano":
		ds_list_add(global.buffsAtivosDano, _script)		
		
	break
	case "tempo":
		ds_list_add(global.buffsAtivosTempo, _script)
	break
	case "recurso":
		ds_list_add(global.buffsAtivosRecurso, _script)
	break
	case "arma":
		ds_list_add(global.buffsAtivosTiro, _script)
	break
	default:
	
}


cursor_sprite = -1;
instance_destroy(oBuffs)