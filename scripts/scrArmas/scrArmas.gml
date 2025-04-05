// Criação do tiro, e o lançamento da Arma

#region // Tier 1 de armas
// Joga a arma atual do player
function scrJogaArma(arma){
	
	var atirarArma = instance_create_depth(x,y,0,arma);
	atirarArma.image_angle =point_direction(x,y, mouse_x, mouse_y);
	atirarArma.direction = point_direction(x,y, mouse_x, mouse_y);
	atirarArma.speed = 13;
	
}
// PistolaBasica
function scrArmas00(){
	
	audio_play_sound(sndTiroArma00,4,false)
	var bala = instance_create_depth(x,y,0,oBala00);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 7;
}
// 12
function scrArmas01(){
	
	for(var i = 0 ; i < 3; i += 1;) {
	var bala = instance_create_depth(x,y,0,oBala01);
	bala.image_angle = point_direction(x,y, random_range(mouse_x-32, mouse_x+32), mouse_y);
	bala.direction = point_direction(x,y, mouse_x+23*i, mouse_y+23*i);
	bala.speed = 5;
	}
	
}
// Sniper
function scrArmas02(){
	audio_play_sound(sndTiroArma02,4,false)
	var bala = instance_create_depth(x,y,0,oBala02);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 18;
		var bala = instance_create_depth(x,y,0,oBala02);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 18;
		var bala = instance_create_depth(x,y,0,oBala02);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 18;
		var bala = instance_create_depth(x,y,0,oBala02);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 18;
}
#endregion

#region // Tier 2 de armas
// Pistola Tier 2
function scrArmas03(){
	audio_play_sound(sndTiroArma03,4,false)
	var bala = instance_create_depth(x,y,0,oBala03);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 12;
}
// Metralhadora
function scrArmas04(){
	audio_play_sound(sndTiroArma04,4,false)
	var bala = instance_create_depth(x,y,0,oBala03);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 8;
}
//RPg
function scrArmas05(){
	audio_play_sound(sndTiroArma05,4,false)
	var bala = instance_create_depth(x,y,0,oBala05);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 6;
}
#endregion

#region // Tier 3 de armas, armas zuadas
//Mouse
function scrArmas06(){
	audio_play_sound(sndTiroArma06,4,false)
	var bala = instance_create_depth(mouse_x, mouse_y,0,oBala06);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(mouse_x, mouse_y,oPlayer.x,oPlayer.y);
	bala.speed = 12;
}
//Arpa
function scrArmas07(){
	var bala = instance_create_depth(x,y,0,oBala07);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, irandom_range(mouse_x-64,mouse_x+64), irandom_range(mouse_y-64,mouse_y+64));
	bala.speed = 4;
}
// Inimigo
function scrArmas08(){
	audio_play_sound(sndTiroArma08,4,false)
	var bala = instance_create_depth(x,y,0,oBala08);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 8;
}
#endregion	

#region // Armas cyberpunk
function scrArmas09(){
	var bala = instance_create_depth(x,y,0,oBala09);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed =0.5;	
}


//Pistola cyberpunk
function scrArmas10(){
	var bala = instance_create_depth(x,y,0,oBala10);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed =18;	
	
}
#endregion

// boomerang
function scrArmas11(){
	var bala = instance_create_depth(x,y,0,oBala11);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 12;	
	
}
	
#region // armas especiais

function scrArmas12(){
	var bala = instance_create_depth(x,y,0,oBala12);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 12;	
}

#endregion

#region // armas Lança Chamas

function scrArmas13(){
	
		var bala = instance_create_depth(x,y,0,oBala13);
		bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
		bala.direction = point_direction(x,y, random_range(mouse_x-32, mouse_x+32),  random_range(mouse_y-32, mouse_y+32));
		bala.speed = 1;	

}

#endregion

#region // Armas magia de gelo

function scrArmas14(){
	var bala = instance_create_depth(mouse_x,mouse_y,0,oBala14);
	bala.image_angle = point_direction(mouse_x,mouse_y, x, y);
	
}

#endregion

#region // Armas Controle robozinho

function scrArmas15(){
	var robozinho = instance_create_depth(x,y,0,oBot);
	
}

#endregion

#region // Armas Controle robozinho

function scrArmas16(){
	
	var bala = instance_create_depth(x,y,0,oBala16);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 7;
	
}

#endregion

#region // Armas Controle robozinho

function scrArmas17(){
	
	var bala = instance_create_depth(x,y,0,oBala17);
	bala.image_angle = point_direction(x,y, mouse_x, mouse_y);
	bala.direction = point_direction(x,y, mouse_x, mouse_y);
	bala.speed = 7;
	
}

#endregion