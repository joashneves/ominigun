// Criação do tiro, e o lançamento da Arma

#region // Tier 1 de armas
// Joga a arma atual do player
function scrJogaArma(arma){
	camera_shake(6, 20);
	var atirarArma = instance_create_depth(x,y,0,arma);
	atirarArma.image_angle = global.dir;
	atirarArma.direction = point_direction(x,y, oCursor.x, oCursor.y);
	atirarArma.speed = 13;
	
}
// PistolaBasica
function scrArmas00(){
	camera_shake(2, 10);
	var crsr = instance_exists(oCursor)
	show_debug_message("texto serio: " + " ocurso.x "+string(oCursor.x)+ " oCursor.y " + string(oCursor.y))
	audio_play_sound(sndTiroArma00,4,false)
	var bala = instance_create_depth(x,y,0,oBala00);
	bala.image_angle = global.dir;
	bala.direction =point_direction(x,y, oCursor.x, oCursor.y );
	bala.speed = 7;
}
// 12
function scrArmas01(){
	camera_shake(12, 10);
	for(var i = 0 ; i < 3; i += 1;) {
	var bala = instance_create_depth(x,y,0,oBala01);
	bala.image_angle = global.dir;
	bala.direction = global.dir+(4*i);
	bala.speed = 5;
	}
	
}
// Sniper
function scrArmas02(){
	camera_shake(10, 10);
	audio_play_sound(sndTiroArma02,4,false)
	var bala = instance_create_depth(x,y,0,oBala02);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 18;
		var bala = instance_create_depth(x,y,0,oBala02);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 18;
		var bala = instance_create_depth(x,y,0,oBala02);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 18;
		var bala = instance_create_depth(x,y,0,oBala02);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 18;
}
#endregion

#region // Tier 2 de armas
// Pistola Tier 2
function scrArmas03(){
	camera_shake(3, 10);
	audio_play_sound(sndTiroArma03,4,false)
	var bala = instance_create_depth(x,y,0,oBala03);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 12;
}
// Metralhadora
function scrArmas04(){
	camera_shake(1, 5);
	audio_play_sound(sndTiroArma04,4,false)
	var bala = instance_create_depth(x,y,0,oBala03);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 8;
}
//RPg
function scrArmas05(){
	camera_shake(12, 10);
	audio_play_sound(sndTiroArma05,4,false)
	var bala = instance_create_depth(x,y,0,oBala05);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 6;
}
#endregion

#region // Tier 3 de armas, armas zuadas
//Mouse
function scrArmas06(){
	camera_shake(1, 5);
	audio_play_sound(sndTiroArma06,4,false)
	var bala = instance_create_depth(oCursor.x, oCursor.y,0,oBala06);
	bala.image_angle = global.dir;
	bala.direction = point_direction(oCursor.x, oCursor.y,oPlayer.x,oPlayer.y);
	bala.speed = 12;
}
//Arpa
function scrArmas07(){
	camera_shake(1, 5);
	var bala = instance_create_depth(x,y,0,oBala07);
	bala.image_angle = point_direction(x,y, oCursor.x, oCursor.y);
	bala.direction = point_direction(x,y, irandom_range(oCursor.x-64,oCursor.x+64), irandom_range(oCursor.y-64,oCursor.y+64));
	bala.speed = 4;
}
// Inimigo
function scrArmas08(){
	camera_shake(6, 10);
	audio_play_sound(sndTiroArma08,4,false)
	var bala = instance_create_depth(x,y,0,oBala08);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 8;
}
#endregion	

#region // Armas cyberpunk
function scrArmas09(){
	camera_shake(1, 5);
	var bala = instance_create_depth(x,y,0,oBala09);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed =0.5;	
}


//Pistola cyberpunk
function scrArmas10(){
	camera_shake(3, 5);
	var bala = instance_create_depth(x,y,0,oBala10);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed =18;	
	
}
#endregion

// boomerang
function scrArmas11(){
	camera_shake(6, 10);
	var bala = instance_create_depth(x,y,0,oBala11);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 12;	
	
}
	
#region // armas especiais

function scrArmas12(){
	camera_shake(6, 10);
	var bala = instance_create_depth(x,y,0,oBala12);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 12;	
}

#endregion

#region // armas Lança Chamas

function scrArmas13(){
		camera_shake(1, 5);
		var bala = instance_create_depth(x,y,0,oBala13);
		bala.image_angle = global.dir;
		bala.direction = point_direction(x,y, random_range(oCursor.x-32, oCursor.x+32),  random_range(oCursor.y-32, oCursor.y+32));
		bala.speed = 1;	

}

#endregion

#region // Armas magia de gelo

function scrArmas14(){
	camera_shake(6, 10);
	var bala = instance_create_depth(oCursor.x,oCursor.y,0,oBala14);
	bala.image_angle = point_direction(mouse_x,mouse_y, x, y);
	
}

#endregion

#region // Armas Controle robozinho

function scrArmas15(){
	camera_shake(3, 10);
	var robozinho = instance_create_depth(x,y,0,oBot);
}

#endregion

#region // Armas Controle robozinho

function scrArmas16(){
	
	camera_shake(6, 10);
	 var quantidade = irandom_range(4, 8); // Entre 4 e 8 tiros

    for (var i = 0; i < quantidade; i++) {
        // Direção com imprecisão (±32 pixels em X e Y)
        var desvioX = random_range(oCursor.x-32,oCursor.x+ 32);
        var desvioY = random_range(oCursor.y-32, oCursor.y+32);
        var dir = point_direction(x, y,  desvioX,  desvioY);

        var bala = instance_create_depth(x, y, 0, oBala16);
        bala.direction = dir;
        bala.image_angle = dir;
        bala.speed = random_range(10, 14); // Velocidade levemente variável
    }
	
}

#endregion

#region // Armas Controle robozinho

function scrArmas17(){
	camera_shake(3, 10);
	var bala = instance_create_depth(x,y,0,oBala17);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 7;
	
}

function scrArmas18(){
	camera_shake(6, 10);
	var bala = instance_create_depth(x,y,0,oBala18);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 9;
	
}

// Espada
function scrArmas19(){
	camera_shake(3, 5);
	var bala = instance_create_depth(x,y,0,oBala19);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 9;
	
}


#endregion