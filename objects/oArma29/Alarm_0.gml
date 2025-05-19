/// @description Insert description here
// You can write your code in this editor

var brushe = instance_create_depth(x, y, 0, oBala29);
brushe.image_blend = choose(c_white, c_aqua, c_red, c_green, c_blue, c_black, c_yellow)
brushe.image_index = irandom_range(0,5)
brushe.image_angle = random_range(0,360)
alarm[0] = 5;