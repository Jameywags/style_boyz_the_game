//Update destination
if (instance_exists(follow))
{
	x_to = follow.x;
	y_to = follow.y;
	
	if ((follow).object_index == o_player_D)
	{
		x = x_to;
		y = y_to
	}
}

//Update object position
x += (x_to - x) / 25;
y += (y_to - y) / 25;

//Setting camera limits
x = clamp(x,view_w_half + buff,room_width-view_w_half - buff);			//buff prevents camera shake from showing past edges of level
y = clamp(y,view_h_half + buff,room_height-view_h_half - buff);

//Screen shake
x += random_range(-shake_remain, shake_remain);
y += random_range(-shake_remain, shake_remain);
shake_remain = max(0, shake_remain-((1 / shake_length) * shake_magnitude));

//Update camera view
camera_set_view_pos(cam,x-view_w_half,y-view_h_half);




//Paralax
if (layer_exists("Mountains"))
{
	layer_x("Mountains", x/2);			//Using x gives max distance effect. Using 0 gives no distance effect.
}

if (layer_exists("Trees"))
{
	layer_x("Trees", x/4);			//Using x gives max distance effect. Using 0 gives no distance effect.
}