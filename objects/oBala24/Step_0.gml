// Inherit the parent event
event_inherited();

var alvo = instance_nearest(x, y, IDenemy);

if (alvo != noone) {
	var dist = point_distance(x, y, alvo.x, alvo.y);

	if (dist < 80) {
		direction = point_direction(x, y, alvo.x, alvo.y);
		speed = 1;
	} else {
		if (!alarm[0]) alarm[0] = 10;
	}
} else {
	if (!alarm[0]) alarm[0] = 10;
}
