// Create the text box
if( text_id < 0 ) {
	text_id = scr_text_box(display_text,
		0.5, 
		camera_get_view_x(view_camera[0]) + 32,
		camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 96);
}


