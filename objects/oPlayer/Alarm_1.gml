/// @description Insert description here
// You can write your code in this editor

if (instance_exists(IDenemy)){

		for (var i = 0; i < ds_list_size(global.buffsAtivosTempo); i++) {
			var executarScript = ds_list_find_value(global.buffsAtivosTempo,i);
			show_debug_message("mensagem do console : " + (string(ds_list_find_value(global.buffsAtivosTempo, i)))
			+ "\n Tamanho da lista " + string(ds_list_size(global.buffsAtivosTempo)) +
			"\n String objetos : " + string(global.buffsAtivosTempo));
			script_execute(executarScript);
			
		}	
	
}

alarm[1] = 180;