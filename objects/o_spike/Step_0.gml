if !sharp
{
	image_speed = 0;
}

if sharp
{
	image_speed = 1;
}

timer = max(timer-1,0);

if timer = 1
{
	sharp = 1;
}