// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
	
globalvar posLista;
posLista = 0;

function listaDeArmas(arma){

ds_list_add(slotArma,arma)

posLista++;
var executarScript = ds_list_find_value(slotArma,posLista)

// Mostra o que tem na lista e quais itens tem
	show_debug_message("Lista de itens: ")
	for (var i = 0; i < ds_list_size(slotArma); i++) {
	    show_debug_message(string(ds_list_find_value(slotArma, i)));
	}

script_execute(executarScript);

}

