// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBuffsRecursosMoedas(){
	instance_create_depth(oPlayer.x, oPlayer.y, -1, oMoeda)	
	instance_create_depth(oPlayer.x, oPlayer.y, -1, oMoeda)	
	instance_create_depth(oPlayer.x, oPlayer.y, -1, oMoeda)	
}

function scrBuffsRecursosLife(){
	if (oPlayer.vida > 1 and oPlayer.vida < 4){
		instance_create_depth(oPlayer.x, oPlayer.y, -1, oCuraLife)	
	}else {
		instance_create_depth(oPlayer.x, oPlayer.y, -1, oMoeda)	
	}
}

function scrBuffsRecursosArma00(){
	var arma = choose(oTrocaDeArma00, oTrocaDeArma01, oTrocaDeArma02, oTrocaDeArma16)
		instance_create_depth(oPlayer.x, oPlayer.y, -1, arma)		
}
function scrBuffsRecursosArma01(){
	var arma = choose(oTrocaDeArma04, oTrocaDeArma03, oTrocaDeArma05, oTrocaDeArma14)
		instance_create_depth(oPlayer.x, oPlayer.y, -1, arma)	
}
function scrBuffsRecursosArma02(){
	var arma = choose(oTrocaDeArma06, oTrocaDeArma07, oTrocaDeArma08, oTrocaDeArma13)
		instance_create_depth(oPlayer.x, oPlayer.y, -1, arma)	
}
function scrBuffsRecursosArma03(){
	var arma = choose(oTrocaDeArma09, oTrocaDeArma10, oTrocaDeArma11, oTrocaDeArma12)
		instance_create_depth(oPlayer.x, oPlayer.y, -1, arma)	
}