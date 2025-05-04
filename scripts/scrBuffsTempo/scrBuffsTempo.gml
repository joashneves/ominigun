// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBuffsTempoCriaRobo(){
	instance_create_depth(x,y,0,oBot);
}

function scrBuffsTempoCriaPortal(){
	instance_create_depth(x,y,0,oBala14);
}

function scrBuffsTempoCriaBazuca(){
	var bala = instance_create_depth(x,y,0,oBala05);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 6;
}