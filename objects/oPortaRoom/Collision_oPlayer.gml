/// @description Indo la
if (!oPlayer.BossMorto)return;
var _Controller = gamepad_button_check(0, gp_face1) || gamepad_button_check(0, gp_face2)  || gamepad_button_check(0, gp_face3)  || gamepad_button_check(0, gp_face4)  ;
var _E =  keyboard_check(ord("E")) ||  _Controller

if(_E){
		entrando = true
		global.pause = true
		other.targetEntrada = targetEntrada;
		//room_goto(tagetRoom)
		FadeToRoom(tagetRoom, 60, c_black)
}



