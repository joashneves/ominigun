randomize()

vspeed = random_range(-0.4,0);
hspeed = random_range(-0.1,0.1);
image_xscale = random_range(0.4,1);
image_yscale = image_xscale;

lifeSpan = random_range(0.35,0.7) * room_speed*6;
lifeSpanMax = lifeSpan;
fade = 0;

cinza = #B5B2D6;
branco = #ffffff;
branco_quase = #D6DBE7;
preto = #140000;

image_blend = choose(cinza, branco, branco_quase, preto);