old_x = 0;
old_y = 0;

//Particle System
part_powerup_sys = part_system_create();


//Particle
part_powerup = part_type_create();
part_type_size(part_powerup, 1, 2, 0, 0);
part_type_color1(part_powerup,c_red);
part_type_alpha2(part_powerup, 1, 0);
part_type_speed(part_powerup, 0.8, 1, 0, 0);
part_type_direction(part_powerup, 0, 359, 0, 0);
part_type_gravity(part_powerup, 0.02, 270);
part_type_blend(part_powerup, 1);
part_type_life(part_powerup, room_speed*.5, room_speed*1);


//Particle Emitter
part_powerup_emit = part_emitter_create(part_powerup_sys);