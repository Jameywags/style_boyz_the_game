enum states
{
	start,
	start_to_green,
	green,
	green_to_yellow,
	yellow,
	yellow_to_red,
	red,
	red_to_explode,
	explode
}

o_particle_robot_sparks.spark = 0;

audio_sound_pitch(mus_first_try_beat, 1);
audio_sound_pitch(mus_first_try_base, 1);
audio_sound_pitch(mus_first_try_harm, 1);