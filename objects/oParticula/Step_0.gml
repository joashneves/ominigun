fade += 1;

lifeSpan -= 1;

if(lifeSpan < 0) instance_destroy();

var fadeMatch = sqr(fade/lifeSpanMax) / fade;
image_alpha -= fadeMatch*2;

image_angle += random_range(-2,2);