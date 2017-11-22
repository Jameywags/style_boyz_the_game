if (point_distance(start_x,start_y,x,y)) > bullet_range			//if range from start position to current position is greater then bullet_range 
{
	instance_destroy();											//Destroy bullet
}