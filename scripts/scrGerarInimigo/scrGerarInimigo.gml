// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrGerarInimigo(wave){

for(var _i = 0; _i <= (wave*3)/2; _i++){
    var x_pos = irandom(room_width);
    var y_pos = irandom(room_height);

	enemY = choose(oInimigoBase, oInimigoRun)
	

	instance_create_depth(x_pos, y_pos,0, enemY);
	
    // Redefine o contador de tempo
    timer = 0;
}
}