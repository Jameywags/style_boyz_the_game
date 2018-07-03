if (state = states.start_to_green)
{
	hsp = 2;
	state = states.green;
}

if (state = states.green_to_yellow)
{
	hsp = 2.3;
	state = states.yellow;
}

if (state = states.yellow_to_red)
{
	hsp = 2.7;
	state = states.red;
}

if (state = states.red_to_explode)
{
	state = states.explode;
}