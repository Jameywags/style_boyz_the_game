//Update destination
if (instance_exists(follow))
{
	x_to = follow.x;
	y_to = follow.y;
}

//Update object position
x += (x_to - x) / 25;
y += (y_to - y) / 25;

//Setting camera limits
x = clamp(x,view_w_half,room_width-view_w_half); 
y = clamp(y,view_h_half,room_height-view_h_half);





//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);