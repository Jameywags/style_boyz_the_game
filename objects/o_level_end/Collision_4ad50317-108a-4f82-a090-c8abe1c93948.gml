/// @desc Move to next room

with (o_player)
{
	if (has_control)
	{
		audio_sound_pitch(mus_first_try_beat, 1);
		audio_sound_pitch(mus_first_try_base, 1);
		audio_sound_pitch(mus_first_try_harm, 1);
		audio_stop_all()
		has_control = false;
		scr_slide_transition(TRANS_MODE.GOTO, other.target);
		
	}
}