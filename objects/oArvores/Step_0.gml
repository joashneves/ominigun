/// @description Insert description here
// You can write your code in this editor

if(y < oPlayer.y){
			depth = oPlayer.depth+1;	
			
}else if(y > oPlayer.y){
			depth = oPlayer.depth-1;	
		
}
if(place_meeting(x,y,oPlayer ) ||place_meeting(x,y,IDenemy )){
	if(aphal <= 0) aphal = 0;
	aphal=0.5;
}else{
	if(aphal >= 1) aphal = 1;
	aphal=1;
}
image_alpha = aphal;







