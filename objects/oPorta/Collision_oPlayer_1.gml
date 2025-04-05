/// @description Insert description here
// You can write your code in this editor

if(!instance_exists(IDenemy) && encostou)
{
		if(targetPorta == targetPorta && !position_meeting(olevel.x,olevel.y,targetPorta)){
		other.targetPorta = targetPorta;
		olevel.x = targetPorta.x;
		olevel.y = targetPorta.y;
		
		}
		else if(targetPorta == targetPorta){
			other.targetPortaBack = targetPortaBack;
					olevel.x = targetPortaBack.x;
					olevel.y = targetPortaBack.y;
		}
		
if(x >= oPlayer.x &&sprite_height > 32){
	oPlayer.x = x + spd;	
}else if (x <= oPlayer.x && sprite_height > 32){
	oPlayer.x = x - spd;
} else if (y > oPlayer.y&& sprite_width > 32){
	oPlayer.y = y + spd;
}else if (y < oPlayer.y&& sprite_width > 32){
	oPlayer.y = y - spd;
}

}

encostou = false;

if(!alarm[0]) alarm[0] = 1;
