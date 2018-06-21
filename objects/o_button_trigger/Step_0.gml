if (place_meeting(x, y, o_player))
{
	pressed = true;
}

if !(place_meeting(x, y, o_player))
{
	pressed = false;
}

if (pressed = true)
{
	sprite_index = s_button_trigger_on;
}

if (pressed = false)
{
	sprite_index = s_button_trigger_off;
}