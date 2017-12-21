//scr_text_box("Text", speed, x, y);

txt = instance_create_depth(argument2,argument3, 0, o_text_box);
with (txt)
{
	padding = 16			//Room around the text box so it isn't right against the edge.
	maxlength = camera_get_view_width(view_camera[0]);		//Max leangth of text allowed
	text = argument0;			//The text itself
	spd = argument1;			//Speed of font
	font = fnt_text_box;		//Font
	
	text_length = string_length(text);
	font_size = font_get_size(font);
	
	draw_set_font(font);
	
	text_width = string_width_ext(text, font_size + (font_size/2), maxlength);
	text_height = string_height_ext(text, font_size + (font_size/2), maxlength);
	
	box_width = camera_get_view_width(view_camera[0]) - 128;
	box_height = text_height + (padding *2);
}

return txt