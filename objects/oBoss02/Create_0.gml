/// @description Insert description here
// You can write your code in this editor

//image_xscale = 2;
//image_yscale = 2;

var total = 8;
var angle_step = 360 / total;

var eyes = oEye00;

municao = 12;
municaoMax = 128;

// movimento
if (!instance_exists(oBossFinalTarget)) {
    instance_create_depth(x, y, 0, oBossFinalTarget);
}
direction = point_direction(0,0,oBossFinalTarget.x,oBossFinalTarget.y);


for (var i = 0; i < total; i++) {
    var eye = instance_create_layer(x, y, "Boss", eyes);
    eye.angle_offset = i * angle_step;
}
