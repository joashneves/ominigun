/// @description Insert description here
// You can write your code in this editor

	score=score+oPlayer.rage;
	var chance = random_range(0, 100);
	var item = oMoeda
	if (chance <= 25){
		 item = choose(oTrocaDeArma00, oTrocaDeArma01, oTrocaDeArma02, oTrocaDeArma03, oTrocaDeArma04
		, oTrocaDeArma05, oTrocaDeArma06, oTrocaDeArma07, oTrocaDeArma08, oTrocaDeArma09, oTrocaDeArma10,
		oTrocaDeArma11, oTrocaDeArma12, oTrocaDeArma13, oTrocaDeArma14, oTrocaDeArma16)
		instance_create_depth(x, y,0, item);
	
	}
	instance_create_depth(x, y,0, item);
	
	if(room == Level2) instance_create_depth(x,y,0,oBalaDanoBoss);
	
	gc_collect()