/// @description Fire Bullets

var firing_angle = 180*(dir_looking - 1)/2;
var firing_direction = sign(dir_looking)
if(firing_delay <= 0)
{
	firing_delay = 10;
	audio_play_sound(snd_shoot, 0, 0);
	if (boy == JAMEY_ID)
	{
		o_bullet.atk_damage = 1;
		with (instance_create_layer(x+10*sign(dir_looking),y,"Bullets",o_bullet_Jamey))
		{
			bullet_range = 300;	//bullet range variable in object o_bullet. 1=yes, 0 =no
			push_back = 0;		//Push back variable in object o_bullet. 1=yes, 0 =no
			wall_break = 0;		//Wall break variable in object o_bullet. 1=yes, 0 =no
			direction = firing_angle;
			image_xscale = firing_direction;
			speed = o_player.max_hsp*1.5 + o_player.hsp*sign(o_player.hsp);
		}
	}
	if (boy == LUKE_ID)
	{
		o_bullet.atk_damage = 2;
		with (instance_create_layer(x+10*sign(dir_looking),y,"Bullets",o_bullet_Luke))
		{
			bullet_range = 100;	//bullet range variable in object o_bullet. 1=yes, 0 =no
			push_back = 1;		//Push backvariable in object o_bullet. 1=yes, 0 =no
			wall_break = 0;		//Wall break variable in object o_bullet. 1=yes, 0 =no
			direction = firing_angle;
			image_xscale = firing_direction;
			speed = o_player.max_hsp*1.5 + o_player.hsp*sign(o_player.hsp);
		}
	}
	if (boy == HIMAT_ID)
	{
		o_bullet.atk_damage = 4;
		with (instance_create_layer(x+10*sign(dir_looking),y,"Bullets",o_bullet_Himat))
		{
			bullet_range = 50;		//bullet range variable in object o_bullet. 1=yes, 0 =no
			wall_break = 1;		//Wall break variable in object o_bullet. 1=yes, 0 =no
			push_back = 0;			//Push backvariable in object o_bullet. 1=yes, 0 =no
			direction = firing_angle;
			image_xscale = firing_direction;
			speed = o_player.max_hsp*1.5 + o_player.hsp*sign(o_player.hsp);
		}
	}
}
