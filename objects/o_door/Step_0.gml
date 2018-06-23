if (open = true)													//If door is triggered to open
{
	if (y > (start_y - open_height))		//If door is lower then max height
	{
		y = y - move_speed;											//Move door up by move speed
	}
	
	if (y <= (start_y - open_height))		//If door is at or above max height
	{
		y = start_y - open_height;									//Move door to max height
	}
}

if (open = false)													// if door is triggered to close
{
	if ( y < start_y)												//If door is higher then start
	{
		y = y + move_speed;											//Move down by move speed
	}
	
	if ( y >= start_y)												//If door is at or below start
	{
		y = start_y;												//Set door to start 
	}
}