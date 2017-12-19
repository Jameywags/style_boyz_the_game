
if (place_meeting(x, y, o_player))
{
	show_text = 1;
}
else
{
	show_text = 0;
}

if (show_text == 1)
{
scr_text_box
		(
		"Hello! Welcome to the testing level.",
		0.5, camera_get_view_x(view_camera[0]) + 32,
		camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 96
		);
}