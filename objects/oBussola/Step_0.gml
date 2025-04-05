/// @description Insert description here
// You can write your code in this editor

x = oPlayer.x;
y = oPlayer.y;

if(instance_exists(oBossInvocar00) && room == Level1){
image_angle = point_direction(x,y,oBossInvocar00.x, oBossInvocar00.y);	
}
else if(instance_exists(oBossInvocar01) && room == Level2){
	image_angle = point_direction(x,y,oBossInvocar01.x, oBossInvocar01.y);	
}else if(instance_exists(oPortaRoom)){
	image_angle = point_direction(x,y,oPortaRoom.x, oPortaRoom.y);	
}
else{
	image_alpha = 0;	
}