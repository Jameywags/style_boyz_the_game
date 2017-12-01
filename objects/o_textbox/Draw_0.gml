/// @description Game Over Dialog

//draw textbox
draw_sprite(s_box,0,x_pos,y_pos);

//draw text
draw_set_font(fnt_textbox)
draw_set_halign(fa_center);
draw_text_ext(x_pos + 200 ,y_pos + 50, text, stringHeight, boxWidth);