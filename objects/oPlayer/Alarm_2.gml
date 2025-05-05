/// @description Recursos

if (rage == rageMax and instance_exists(IDenemy)){
	var num_itens = ds_list_size(global.buffsAtivosRecurso)
	var num_choose = choose(0, (num_itens-1));
	show_debug_message("Itens de recurso : " + string(global.buffsAtivosRecurso) + "\n tamanho " + string(ds_list_size(global.buffsAtivosTempo))
	+ "\n Num intens : " + string(num_itens) + " Num_choose "+ string(num_choose) )
	if (num_itens != 0){
	var executarScript = ds_list_find_value(global.buffsAtivosRecurso, num_choose);
	show_debug_message("Itens de recurso Script: " + string(executarScript) )
	if(executarScript != undefined){
		script_execute(executarScript);
	}
	}
}	

alarm[2] = 380+(rageMax - rage)