/// @description Debug mode e a vida do personagem
var camera_x = view_wport;
var camera_y = view_hport;
draw_set_colour(c_white);

#region // Debug
		draw_set_font(fnt_ui);
		
if(debug_mode){
		var tirosNaTela = instance_number(oBalaInimigo);
		draw_text(32, 64+28,"Tempo de Recarga: " + string(recarga));
		draw_text(32, 64+52,"Tempo Total de Recarga: " + string(recargaTotal));
		draw_text(32, 64+68,"Tempo Tiros na tela: " + string(tirosNaTela));
		draw_text(32, 64+(68*2),"Moeda: " + string(moeda));
		draw_text(12 , 120*4,"Mouse: " + string(global.dir));
		draw_text(1052,64, "Rage : " + string(rage));
		draw_text(32,64+(68*3), "Level : " + string(global.dificuldade));
		draw_text(32,64+(68*4), "Boss : " + string(BossMorto));
}
draw_text(600,48, "Fps : " + string(fps));

// Converte o tempo de microssegundos para segundos
var segundos = current_time / 1000;
var minutos = current_time /  60000;
var horas = current_time /  3600000;

	// Exibe o tempo atual no console ou onde for apropriado
draw_text(600,94,string(horas) + ":" + string(minutos)+ ":" + string(segundos) + "S");

#endregion

// Arma HUD
//draw_sprite(aparencia,0,64,64)
if(!fim_de_jogo){

// Arma basicas
if(aparencia != sArma00){
draw_text(64, 78,"Munição: " + string(municao) );
}
	// Lista das sprites da arma que trocou
	// Compila tudo na tela
	var tamanho = ds_list_size(listaSprites); 

	for (lista = tamanho - 1; lista >= 0; lista--) {
	    draw_sprite(listaSprites[|lista], 0, 64, 64+((tamanho - lista) * 16));
	}
	 draw_sprite(sMoeda,0,125,52);
	 draw_text(155,54,  string(moeda)+"X");
// Vida de pontuação 

for(i = 0; i < vida; i++){
	draw_sprite(sVida, 0, i * 32, 0);
}

draw_text(600,32, "Pontuação : " + string(score));

// Rage 
var barraDeRage = (rage/rageMax)  * 100;
draw_healthbar(780,100,790,500,barraDeRage, c_black, c_blue, c_red, 3, false, true);

}else if(fim_de_jogo){
	draw_text(300,300, "Voce Conseguiu : " + string(score) + " Pontos");
	draw_text(300,200, "O jogo Acaba por enquanto... Obrigado por jogar");	
}
if(levou_dano){
	draw_set_colour(#1c1c1c);
	draw_rectangle(0,0,camera_x,camera_y,false);
	levou_dano = false;
}

if(player_morto){
	draw_set_colour(c_black);
	draw_rectangle(0,0,camera_x,camera_y,false);
	draw_sprite(sprite_index, image_index,camera_x/2,camera_y/2);
}
// wave
if(instance_exists(geradorDeWave)){
	var _wave = geradorDeWave.wave;
	var _quantidade_inimigo = instance_number(IDenemy);
	draw_text(600,61,"Wave: " + string(_wave) );
	draw_text(600,73,"Inimigos: " + string(_quantidade_inimigo) );
}
