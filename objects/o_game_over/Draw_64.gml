draw_set_color(c_black);
draw_set_alpha(0.5);
draw_rectangle(0, 0, room_width, room_height, 0);
draw_set_halign(fa_center);
draw_set_font(fnt_pause);
draw_set_color(c_white);
draw_set_alpha(1);
draw_text((camera_get_view_width(view_camera[0])/2), (camera_get_view_height(view_camera[0])/2) - 100, "GAME OVER");
draw_text((camera_get_view_width(view_camera[0])/2), (camera_get_view_height(view_camera[0])/2) + 200, "Press 'R' to restart...");