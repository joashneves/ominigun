/// @description Insert description here
// You can write your code in this editor

	score=score+oPlayer.rage;
	
	instance_create_depth(x, y,0, oMoeda);
	
	if(room == Level2) instance_create_depth(x,y,0,oBalaDanoBoss);
	
	gc_collect()