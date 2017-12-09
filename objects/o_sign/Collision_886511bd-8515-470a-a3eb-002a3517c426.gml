key_read = keyboard_check_pressed(ord("X"));

if (reading == 0)
{
	if (key_read)
	{
		scr_text_box
		(
		"Hello! Welcome to the testing level.",
		0.5, camera_get_view_x(view_camera[0]) + 32,
		camera_get_view_y(view_camera[0]) + camera_get_view_height(view_camera[0]) - 96
		);
		reading = 1;
	}
}

else
{
	if (key_read)
	{
		with (o_text_box) instance_destroy();
		reading = 0;
	}
}