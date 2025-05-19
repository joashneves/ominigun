// STEP EVENT
var idioma = string(oDataSuperCarrie.idioma);
var t = traducao_geral[$idioma];
if (is_undefined(t)) t = traducao_geral.BR;

var desc_id = _descricao;
var descricao = t.buffs[$ desc_id];
if (is_undefined(descricao)) descricao = desc_id; // fallback

if (position_meeting(mouse_x, mouse_y, id)) {
    global.buff_hover = true;
	global.buff_text = descricao;
    global.buff_obj = id;
} else {
    // Garante que o texto só desaparece se o mouse não estiver mais sobre o mesmo objeto
    if (global.buff_obj == id) {
        global.buff_hover = false;
    }
}
