/// @desc Move to next room

with (o_player)
{
	if (has_control)
	{
		audio_stop_all()
		has_control = false;
		scr_slide_transition(TRANS_MODE.GOTO, other.target);
		
	}
}