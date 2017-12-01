if (global.game_over)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_textbox);
	draw_set_color(c_white);
	draw_set_alpha(1);
	if(gameOverBox == noone){
		gameOverBox = instance_create_layer((camera_get_view_width(view_camera[0])/2) + camera_get_view_x(view_camera[0]) - 200,
											(camera_get_view_height(view_camera[0])/2) + camera_get_view_y(view_camera[0]) - 50,
											"Text",
											o_textbox);
		gameOverBox.text = "Game Over";
	}
}
