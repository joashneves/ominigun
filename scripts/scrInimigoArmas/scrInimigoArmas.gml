// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrInimigoArmas(){

}

function scrInimigoPistola(){
		var bala = instance_create_depth(x,y,0,oBalaInimigoBase);
		bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.direction = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.speed = 6;
		bala.image_blend = c_red;
		municao=0;

		var id_som = 		audio_play_sound(sndTiroInimigo,2,0);
		var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
		audio_sound_gain(id_som, vol_efeito, 0);
}

function scrInimigoespingarda(){
	
	for(var i = 0 ; i < 3; i += 1;) {
		var bala = instance_create_depth(x,y,0,oBalaInimigoBase);
		bala.image_angle = point_direction(x,y,oPlayer.x, oPlayer.y);
		bala.direction = point_direction(x,y,oPlayer.x+23*i, oPlayer.y+23*i);
		bala.speed = 6;
		bala.image_blend = c_red;
	}
		municao=0;
			var id_som = 		audio_play_sound(sndTiroInimigo,2,0);
		var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
		audio_sound_gain(id_som, vol_efeito, 0);
}

function scrInimigoLaser(){
	
  var quantidade = irandom_range(4, 8); // Entre 4 e 8 tiros

    for (var i = 0; i < quantidade; i++) {
        // Direção com imprecisão (±32 pixels em X e Y)
        var desvioX = random_range(oPlayer.x-32,oPlayer.x+ 32);
        var desvioY = random_range(oPlayer.y-32, oPlayer.y+32);
        var dir = point_direction(x, y,  desvioX,  desvioY);

        var bala = instance_create_depth(x, y, -3, oBalaInimigoBase);
        bala.direction = dir;
        bala.image_angle = dir;
        bala.speed = random_range(10, 14); // Velocidade levemente variável
        bala.image_blend = c_purple;
    }
	
		municao=0;
			var id_som = 		audio_play_sound(sndTiroInimigo,2,0);
		var vol_efeito = oDataSuperCarrie.vol_geral * oDataSuperCarrie.vol_ambiente;
		audio_sound_gain(id_som, vol_efeito, 0);
}