
//Detect trigger
if (place_meeting(x, y, o_player))
{
	triggered = true;
}

if !(place_meeting(x, y, o_player))
{
	triggered = false;
}





//When triggered
if (triggered = true) 
{
	sprite_index = trigger_on;
}

if ( triggered = false)
{
	sprite_index = trigger_off;
}