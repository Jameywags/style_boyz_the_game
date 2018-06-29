if (hit_delay = 0)			//If hit delay is at 0
{
	screen_shake(4, 30)
	hp --;					//subtract 1 from hp
	hit_delay = 50;		//Sets hit delay
	flash = hit_delay;			//Sets flash to same length as hit delay
	audio_play_sound(snd_player_hit, 0, 0);
}

if (hp == 0) {
	instance_change(o_player_D, true);
	direction = point_direction(other.x, other.y, x, y);
	hsp = lengthdir_x(6, direction);
	vsp = lengthdir_y(4, direction)-2;
	if (sign(hsp) != 0) image_xscale = sign(hsp);
	o_music.dead = true
	
	//instance_create_layer(0,0,"extra",o_game_over);
	//return;
}