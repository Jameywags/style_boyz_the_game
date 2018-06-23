if (place_meeting(x, y, o_player) || place_meeting(x, y, o_box))
{
	pressed = true;
}

if !(place_meeting(x, y, o_player) || place_meeting(x, y, o_box))
{
	pressed = false;
}

if (pressed = true)
{
	sprite_index = s_button_trigger_on;
	o_door.open = true;
}

if (pressed = false)
{
	sprite_index = s_button_trigger_off;
	o_door.open = false;
}