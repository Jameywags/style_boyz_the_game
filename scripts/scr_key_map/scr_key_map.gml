

if keyboard_check_released(vk_up)
{
	o_player.jump_key = vk_up;
	end_map = 1;
}

if keyboard_check_released(vk_space)
{
	o_player.jump_key = vk_space;
	end_map = 1;
}