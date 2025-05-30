/// @description movimento a ação
if(fim_de_jogo) room_goto(fim_de_jogo_room);
if(global.pause) return;

tempo_de_jogo+=1;

#region // Teclas
up_press = keyboard_check(ord("W")) ||keyboard_check(vk_up) || gamepad_button_check(0, gp_padu);
down_press = keyboard_check(ord("S"))||keyboard_check(vk_down) ||  gamepad_button_check(0, gp_padd);
right_press = keyboard_check(ord("A"))||keyboard_check(vk_left) ||  gamepad_button_check(0, gp_padl);
left_press = keyboard_check(ord("D"))||keyboard_check(vk_right) ||  gamepad_button_check(0, gp_padr);
click_do_mouse_left = mouse_check_button(mb_left) ||  gamepad_button_check(0, gp_shoulderrb);
click_do_mouse_right = mouse_check_button(mb_right) ||  gamepad_button_check(0, gp_shoulderlb);
esc = keyboard_check_pressed(vk_escape);

if(esc and nenhuma_instance_existe([IDenemy, oBoss, oBoss02, oBoss04])) instance_create_depth(0,0,-10,oConfiguracoes);

if gamepad_is_connected(0){
	gamepad_set_axis_deadzone(0, 0.15);
	axiosLH = gamepad_axis_value(0, gp_axislh)
	axiosLV = gamepad_axis_value(0, gp_axislv)
	axiosRH = gamepad_axis_value(0, gp_axisrh)
	axiosRV = gamepad_axis_value(0, gp_axisrv)

}

#endregion

if(!player_morto){
#region // movimentação
// 0         =           1       -             0          *       3

vspd = ( left_press - right_press)*spd;
hspd = (down_press - up_press)*spd;

if (axiosLH != 0 || axiosLV != 0 ){
	hspd = axiosLV * spd;
	vspd = axiosLH * spd;	
	
}
if( axiosRH != 0 || axiosRV != 0){
	//axiosRH = -axiosRH;
	//axiosRV = -axiosRV;
	
	global.dir = (point_direction(x,y, x + axiosRH, y + axiosRV))
	
}
if !gamepad_is_connected(0){
	global.dir = (point_direction(x,y, mouse_x, mouse_y))
	cursor.x = mouse_x;
	cursor.y = mouse_y;
}
var moving = (vspd != 0 || hspd != 0);
if(oCursor.x > x){
	image_xscale = 1
}else{
	image_xscale = -1
}
if (rage >= rageMax) {
    sprite_index = moving ? sPlayerWalk01 : sPlayerIdle01_2; // com raiva
	image_speed = 2
} else {
    sprite_index = moving ? sPlayerWalk00 : sPlayerIdle00_2; // normal
	image_speed = 2
}
move_and_collide(vspd, hspd, oBloco);

#endregion

#region// Mecanica de Rage e Extras

var tirosNaTela = instance_number(IDbalas);
var inimigosNaTela = instance_number(IDenemy);
var tirosDeInigimosNaTela = instance_number(oBalaInimigo)

multiplicadorDeRecarga= 0.5 + rage/rageMax ;

if(rage > rageMax){
	rage = rageMax;
}
#endregion

#region // mecanica da arma

recarga+=multiplicadorDeRecarga;
if (click_do_mouse_left && (recarga >= recargaTotal)){
		script_execute(bala);
		oImageArma.recuo_timer = 3; // frames de recuo
		recarga=0;
			municao--;
	 
	rage+= ((tirosNaTela+inimigosNaTela+tirosDeInigimosNaTela)*recargaTotal)/rageMax;
}
 else if (click_do_mouse_right && !instance_exists(arma)) {
	municao=0;
}

#endregion

#region // trocar de arma

if(municao <= 0 && posLista > 0 && !click_do_mouse_right){
	scrJogaArma(arma)
	posLista--;
	var armaSparaTroca = ds_list_find_value(slotArma, posLista);
	script_execute(armaSparaTroca)
		if(ds_list_empty(slotArma)) {
			scrTrocadeArmaPistolaBasica();
		} else{
			ds_list_delete(slotArma,posLista+1);
			ds_list_delete(listaSprites,posLista+1);
		}
		
		if (ds_list_size(global.buffsAtivosTiro) != 0){
			var num_itensTiro = ds_list_size(global.buffsAtivosTiro)
			var num_choose = choose(0, (num_itensTiro-1));
			show_debug_message("Itens de recurso de tiro : " + string(global.buffsAtivosTiro) + "\n tamanho " + string(ds_list_size(global.buffsAtivosTiro))
			+ "\n Num intens : " + string(num_itensTiro) + " Num_choose "+ string(num_choose) )
				if (num_itensTiro != 0){
				var executarScriptTiro = ds_list_find_value(global.buffsAtivosTiro, num_choose);
				show_debug_message("Itens de recurso Script: " + string(executarScriptTiro) )
				if(executarScriptTiro != undefined){
					script_execute(executarScriptTiro);
				}
				}
			}	

}

#endregion

#region // dano

// leva dano da arma
if(place_meeting(x,y,oBalaInimigo)){
		instance_destroy(oBalaInimigo);
		vida--;
		rage = 1;
		levou_dano = true
		camera_shake(6, 20);

		var id_som = 		audio_play_sound(sndDano,1,0);
		var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
		audio_sound_gain(id_som, vol_efeito, 0);
		gamepad_set_vibration(0, 0.5, 0.5);
		for (var i = 0; i < ds_list_size(global.buffsAtivosDano); i++) {
			var executarScript = ds_list_find_value(global.buffsAtivosDano,i);
			show_debug_message("mensagem do console : " + (string(ds_list_find_value(global.buffsAtivosDano, i)))
			+ "\n Tamanho da lista " + string(ds_list_size(global.buffsAtivosDano)) +
			"\n String objetos : " + string(global.buffsAtivosDano));
			script_execute(executarScript);
			
		}

}
// leva dano do kamikaze
if(place_meeting(x,y,oInimigo04)){
		instance_destroy(oInimigo04);
		vida--;
		rage = 1;
		levou_dano = true
		var id_som = 		audio_play_sound(sndDano,1,0);
		var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
		audio_sound_gain(id_som, vol_efeito, 0);
		camera_shake(6, 20);
		gamepad_set_vibration(0, 0.5, 0.5);
	for (var i = 0; i < ds_list_size(global.buffsAtivosDano); i++) {
		var executarScript = ds_list_find_value(global.buffsAtivosDano,i);
		show_debug_message("mensagem do console : " + (string(ds_list_find_value(global.buffsAtivosDano, i)))
		+ "\n Tamanho da lista " + string(ds_list_size(global.buffsAtivosDano)) +
		"\n String objetos : " + string(global.buffsAtivosDano));
		script_execute(executarScript);
	}
}
if(levou_dano){
	if (!alarm[0]) alarm[0] = room_speed / 2;
}
if(vida > 4 ){
	vida = 5;
}
if(debug_mode) {
	vida = 5;
	rage = rageMax;
	//moeda = 100;
}

if (vida <= 0){
	player_morto = true;
	sprite_index = sPlayerMorte;
	image_index = 0
	image_speed = 1
}

}else {
		for (var i = 0; i < ds_list_size(slotArma); i++) {
		    show_debug_message("apagando = " +string(ds_list_find_value(slotArma, i)));
			ds_list_delete(slotArma,i)
	}
	if(fim_animacao(sPlayerMorte)){

	posLista=0;
	vida = 5
	player_morto = false;
	
	oDataSuperCarrie.mortes_player=oDataSuperCarrie.mortes_player+1;
	show_debug_message("Mortes : " + string(oDataSuperCarrie.mortes_player));
	salvaJogo()
	room_goto(GameOver)
	}
	score = 0;
//Buff
}
#endregion

