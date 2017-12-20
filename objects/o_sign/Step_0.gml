if(!place_meeting(x,y,o_player)) {
	if(text_id > 0) {
		instance_destroy(text_id);
		text_id = -1;
	}
}