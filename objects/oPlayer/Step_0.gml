/// @description movimento a ação

if(fim_de_jogo) room_goto(fim_de_jogo_room);
if(pause) return;

#region // Teclas
up_press = keyboard_check(ord("W")) ||keyboard_check(vk_up);
down_press = keyboard_check(ord("S"))||keyboard_check(vk_down);
right_press = keyboard_check(ord("A"))||keyboard_check(vk_left);
left_press = keyboard_check(ord("D"))||keyboard_check(vk_right);
click_do_mouse_left = mouse_check_button(mb_left);
click_do_mouse_right = mouse_check_button(mb_right);
#endregion

if(!player_morto){
#region // movimentação
// 0         =           1       -             0          *       3
vspd = ( left_press - right_press)*spd;
hspd = (down_press - up_press)*spd;

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

#region // mecanica de Drone
if(arma == oArma10){

}
#endregion

#endregion

#region // mecanica da arma

recarga+=multiplicadorDeRecarga;
if (click_do_mouse_left && (recarga >= recargaTotal)){
		script_execute(bala);
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
}

#endregion

#region // dano

// leva dano da arma
if(place_meeting(x,y,oBalaInimigo)){
		instance_destroy(oBalaInimigo);
		vida--;
		rage = 1;
		levou_dano = true
		audio_play_sound(sndDano,1,0);
}
// leva dano do kamikaze
if(place_meeting(x,y,oInimigo04)){
		instance_destroy(oInimigo04);
		vida--;
		rage = 1;
		levou_dano = true
		audio_play_sound(sndDano,1,0);
}
if(vida > 4 ){
	vida = 5;
}
if(debug_mode) {
	vida = 5;
	rage = rageMax;
	moeda = 10;
}

if (vida <= 0){
	player_morto = true;
	sprite_index = sPlayerMorte;
}

#endregion
}else {
		for (var i = 0; i < ds_list_size(slotArma); i++) {
		    show_debug_message("apagando = " +string(ds_list_find_value(slotArma, i)));
			ds_list_delete(slotArma,i)
	}
	if(fim_animacao(sPlayerMorte)){

	posLista=0;
	vida = 5
	player_morto = false;
	room_goto(GameOver)
	}
	score = 0;
	

}

