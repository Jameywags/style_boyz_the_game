if (global.pause)
{
	draw_set_color(c_black);
	draw_set_alpha(0.5);
	draw_rectangle(0, 0, room_width, room_height, 0);
	draw_set_halign(fa_center);
	draw_set_font(fnt_pause);
	draw_set_color(c_white);
	draw_set_alpha(1);
	draw_text((camera_get_view_width(view_camera[0])/2) + camera_get_view_x(view_camera[0]), (camera_get_view_height(view_camera[0]) * (1/4)) + camera_get_view_y(view_camera[0]), "Game Paused");
	draw_set_color(c_black);
	
	draw_set_halign(fa_left);
	draw_set_valign(fa_middle);
	draw_set_font(fnt_options);
	draw_set_color(c_white);

	var m;
	for (m =0; m < array_length_1d(menu_pause); m+= 1)
	{
		draw_text(((camera_get_view_width(view_camera[0])/2) + camera_get_view_x(view_camera[0])) - 16, ((camera_get_view_height(view_camera[0]) * (1/2)) + camera_get_view_y(view_camera[0])) + (m * space),string(menu_pause[m]))
	}

	draw_sprite(sprite_index, 0, ((camera_get_view_width(view_camera[0])/2) + camera_get_view_x(view_camera[0])) - 32, ((camera_get_view_height(view_camera[0]) * (1/2)) + camera_get_view_y(view_camera[0])) + mpos * space);
}