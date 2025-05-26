// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
	
globalvar posLista;
posLista = 0;

function listaDeArmas(arma){
show_debug_message("arma adicionado : " + string(arma) + string(slotArma))
ds_list_add(slotArma,arma) 

posLista++;
var executarScript = ds_list_find_value(slotArma,posLista)
//if(executarScript == undefined) executarScript = scrTrocadeArmaPistolaBasica;
script_execute(executarScript);

}

