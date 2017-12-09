if (instance_exists(o_player))
{
	if (round(o_player.y + (o_player.sprite_height/2)) > y) || (o_player.key_down)		//if player is below platform. height/2 takes from the center origin down to the feet. Round makes it work nice. Or if down arrow is pressed.
	{
		 mask_index = -1;					//No sprite collision, can pass through.
	}
	else
	{
		mask_index = s_platform;			//Sprite, with collision.
	}
}