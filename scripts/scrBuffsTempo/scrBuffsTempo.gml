// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrBuffsTempoCriaRobo(nv = 1){
	for (var i = 0; i < nv; i++;){
		if(instance_number(oBot) < 5){
	instance_create_depth(x,y,0,oBot);
		}
	}
}

function scrBuffsTempoCriaPortal(nv = 1){
	for (var i = 0; i < nv; i++;){
	instance_create_depth(x,y,0,oBala14);
	}
}

function scrBuffsTempoCriaBazuca(nv = 1){
	for (var i = 0; i < nv; i++;){
	var bala = instance_create_depth(x,y,0,oBala05);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 6;
	}
}
function scrBuffsTempoCriaArpa(){
	for (var i = 0; i <= 2; i++;){
	var bala = instance_create_depth(x,y,0,oBala07);
	bala.image_angle = global.dir;
	bala.direction = global.dir;
	bala.speed = 4;
	}
}