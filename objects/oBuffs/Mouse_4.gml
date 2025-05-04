/// @description Insert description here
// You can write your code in this editor

global.pause = false;

switch _tipo{
	case "dano":
		ds_list_add(global.buffsAtivosDano, _script)		
	break
	default:
	
}

instance_destroy(oBuffs)