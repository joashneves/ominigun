depth = 5;
draw_self();

draw_set_font(fnt_loja);

if (place_meeting(x, y, oPlayer)) {
	// Texto "Press E"
	draw_text(x - 16, y - 64, "Press E");

	// Sprite da moeda + preço
	draw_sprite(sMoeda, 0, x - 16, y - 80); // moeda um pouco acima do "Press E"
	draw_text(x + 4, y - 94, string("X : " + string(preco))); // valor ao lado da moeda
}

// Exibe o item à venda
draw_sprite(sprite_index, image_index, x, y);
var _sprite = object_get_sprite(venda);
draw_sprite(_sprite, 0, x, y);
