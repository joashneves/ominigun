/// @description Insert description here
// You can write your code in this editor
if (global.pause) return;

if(!instance_exists(IDBossFinal)){
	sprite_index = sBossDeath;
	if(fim_animacao()) instance_destroy();	
}

#region // Ataques
if(municao++ > municaoMax){
	var atack =irandom_range(0, 9);
	show_debug_message(string(atack))
	switch(atack){
		case 0:
		scrBossFinalAtacks00()
		break;
		case 1:
		scrBossFinalAtacks01()
		break;
		case 2:
		scrBossFinalAtacks02()
		break;
		case 3:
		scrBossFinalAtacks03()
		break;
		case 4:
		scrBossFinalAtacks04()
		break;
		case 5:
		scrBossFinalAtacks05()
		break;
		case 6:
		scrBossFinalAtacks06()
		break;
		case 7:
		scrBossFinalAtacks07()
		break;
		case 8:
		scrBossFinalAtacks08()
		break;
		default:
		scrBossFinalAtacksDefault()
		break;
	}
	municao = 0;
	municaoMax = random_range(60, 200)
}
#endregion

#region // Movimento
var alvo_x = oBossFinalTarget.x;
var alvo_y = oBossFinalTarget.y;
var movimento = oBossFinalTarget.movimento;
switch (movimento) {
    // Parado
    case 0:
		speed = 3;
		direction = point_direction(x,y,oBossFinalTarget.x,oBossFinalTarget.y);
        // Nada, só acompanha visualmente
    break;
    // Seguindo lentamente
    case 1:
		speed = 8;
		direction = point_direction(x,y,oBossFinalTarget.x,oBossFinalTarget.y);
    break;
    // Dash
    case 2:
      if (!alarm[3]) {
            var dirDash = point_direction(x, y, oBossFinalTarget.x, oBossFinalTarget.y);
            direction = dirDash;
            speed = 6; // velocidade do dash
            alarm[3] = random_range(60, 180); // recarga do dash
        }
    break;

    // Se teletransporta para dentro do player (ou alvo)
    case 3:
        x = alvo_x;
        y = alvo_y;
        movimento = 0; // volta ao modo parado
    break;
}
#endregion