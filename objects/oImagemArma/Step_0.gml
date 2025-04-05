
x = IDenemy.x;
y = IDenemy.y;

if(x < mouse_x) image_yscale = 1;
if(x > mouse_x) image_yscale = -1;

sprite_index = IDenemy.aparencia;

image_angle = point_direction(x,y, mouse_x, mouse_y);

if(!instance_exists(IDenemy)){
instance_destroy(self);
}