part_emitter_region(part_powerup_sys, part_powerup_emit, o_player.x-5, o_player.x+5, o_player.y+5, o_player.y-5, 0, 0);

//if o_player.x != old_x || o_player.y != old_y
//{
	part_emitter_burst(part_powerup_sys, part_powerup_emit, part_powerup, 5);
//}
//old_x = o_player.x;
//old_y = o_player.y;