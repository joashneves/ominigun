// STEP EVENT
if (position_meeting(mouse_x, mouse_y, id)) {
    global.buff_hover = true;
    global.buff_text = _descricao;
    global.buff_obj = id;
} else {
    // Garante que o texto só desaparece se o mouse não estiver mais sobre o mesmo objeto
    if (global.buff_obj == id) {
        global.buff_hover = false;
    }
}
