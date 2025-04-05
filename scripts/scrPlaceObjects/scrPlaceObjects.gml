// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function scrPlaceObjects(){
var tileset = layer_tilemap_get_id("Instances"); // Nome da camada do tile set
var tileWidth = tilemap_get_tile_width(tileset);
var tileHeight = tilemap_get_tile_height(tileset);
var tilemapWidth = tilemap_get_width(tileset);
var tilemapHeight = tilemap_get_height(tileset);

var layerID = layer_get_id("Instances"); // ID da camada do tile set


var a = layer_get_all_elements(layerID);
for (var i = 0; i < array_length(a); i++;)
{
	var _elemento = layer_get_element_type(a[i]);
    if _elemento == layerelementtype_tilemap
    {
		var layerelement = a[i];
         var inst = layer_sprite_get_x(layerelement);
         var _inst = layer_sprite_get_y(layerelement);
        layer_sprite_destroy(a[i])
		instance_create_layer(_elemento.x,_elemento.y,layerID,oInimigo00);
    }
}

// Remover o tile set para que ele não seja mais renderizado
//layer_tilemap_destroy(layerID);
}