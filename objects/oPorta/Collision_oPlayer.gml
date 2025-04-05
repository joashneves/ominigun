/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(IDenemy) && encostou)
{
		
if(x >= oPlayer.x &&sprite_height > 64){
	olevel.x = x + 416;
	oPlayer.x = x + spd;	
}else if (x <= oPlayer.x && sprite_height > 64){
	olevel.x = x - 376;
	oPlayer.x = x - spd;
} else if (y > oPlayer.y&& sprite_width > 64){
	olevel.y = y+ 380;
	oPlayer.y = y + spd;
}else if (y < oPlayer.y&& sprite_width > 64){
	olevel.y = y - 220;
	oPlayer.y = y - spd;
}

}

encostou = false;

if(!alarm[0]) alarm[0] = 1;
