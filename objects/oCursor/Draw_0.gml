if(speed > 10 and gamepad_is_connected(0)){
    draw_self();
}else if (!gamepad_is_connected(0)){
draw_self();	
}