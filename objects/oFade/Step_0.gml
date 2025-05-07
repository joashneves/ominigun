if (state == 0) {
	timer++;
	// change_room
	if(timer >= duration ){	
		room_goto(targetRoom)
		state = 1;
	}
}
else if(state == 1){
	timer --;
	if (timer <= 0) {
		instance_destroy()
	};
	
}
// set alpha
alpha = timer / duration;