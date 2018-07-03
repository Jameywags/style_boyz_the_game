spark = 0;

//Particle System
part_fairy_dust_sys = part_system_create();
part_system_depth(part_fairy_dust_sys, -1);

//Particle
part_fairy_dust = part_type_create();
part_type_size(part_fairy_dust, 1, 2, 0, 0);
part_type_color1(part_fairy_dust,55295);
part_type_alpha2(part_fairy_dust, 1, 0);
part_type_speed(part_fairy_dust, 0.4, 0.7, 0, 0);
part_type_direction(part_fairy_dust, 0, 359, 0, 0);
part_type_gravity(part_fairy_dust, 0.05, 270);
part_type_blend(part_fairy_dust, 1);
part_type_life(part_fairy_dust, room_speed*0.5, room_speed*1);


//Particle Emitter
part_fairy_dust_emit = part_emitter_create(part_fairy_dust_sys);