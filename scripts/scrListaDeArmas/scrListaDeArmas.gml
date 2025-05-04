// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
	
globalvar posLista;
posLista = 0;

function listaDeArmas(arma){

ds_list_add(slotArma,arma)

posLista++;
var executarScript = ds_list_find_value(slotArma,posLista)

script_execute(executarScript);

}

