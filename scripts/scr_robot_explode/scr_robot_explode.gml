instance_create_depth(x, y, 0, o_explosion);
instance_create_depth(0,0,0, o_particle_firework);

audio_play_sound(mus_ode_to_joy,0,0);

instance_destroy(o_particle_robot_sparks);
instance_destroy(o_mini_robot);
instance_destroy(o_robot_laser);
instance_destroy();