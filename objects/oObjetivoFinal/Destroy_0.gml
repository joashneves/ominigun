
		for (var i = 0; i < ds_list_size(slotArma); i++) {
		    show_debug_message("apagando = " +string(ds_list_find_value(slotArma, i)));
			ds_list_delete(slotArma,i)
	}
	

global.pause = true;
//instance_destroy(oDataCarrie);
//instance_destroy(oPlayer);

//ds_list_destroy(slotArma);
//ds_list_destroy()
//ds_list_destroy(listaSprites)
//var armaAtual = scrTrocadeArmaPistolaBasica;
//listaDeArmas(armaAtual)
instance_create_depth(x,y,0,oCreditosMenu);