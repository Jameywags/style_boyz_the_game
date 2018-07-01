//alarm[0] = room_speed;

//System
part_firework_sys = part_system_create();

//Rocket Particle
part_rocket = part_type_create();
part_type_direction(part_rocket, 80, 100, 0, 0);
part_type_speed(part_rocket, 12.5, 15.5, 0, 0);
part_type_life(part_rocket, room_speed*1.1, room_speed*1.3);
part_type_gravity(part_rocket, .15, 270);
part_type_alpha1(part_rocket, 0);


//Trail Particle
part_trail = part_type_create();
part_type_color2(part_trail, c_yellow, c_white);
part_type_gravity(part_trail, 0.1, 270);
part_type_shape(part_trail, pt_shape_cloud);
part_type_life(part_trail, room_speed*0.5, room_speed*0.6);
part_type_alpha2(part_trail, 0.8, 0.0);
part_type_size(part_trail, 0.3, 0.4, -0.01, 0);

//Expolosion Particle
part_explode = part_type_create();
part_type_shape(part_explode, pt_shape_flare);
part_type_size(part_explode, 0.3, 0.5, -0.001, 0);
part_type_alpha2(part_explode, 1, 0);
part_type_direction(part_explode, 0, 359, 0, 0);
part_type_speed(part_explode, 1, 6, 0, 0);
part_type_life(part_explode, 20, 50);
part_type_blend(part_explode, false);
part_type_gravity(part_explode, 0.1, 270);
part_type_color3(part_explode, c_blue, c_white, c_red);
//part_type_color3(part_explode, make_color_rgb(random(255), random(255), random(255)), make_color_rgb(random(255), random(255), random(255)), make_color_rgb(random(255), random(255), random(255)));
//part_type_color_rgb(part_explode, 0, 255, 0, 255, 0, 255 );


//Sequence
part_type_step(part_rocket, 1, part_trail);
part_type_death(part_rocket, 100, part_explode);


//Emitter
part_firework_emit = part_emitter_create(part_firework_sys);
part_emitter_region(part_firework_sys, part_firework_emit, 0, room_width, room_height, room_height, ps_shape_line, ps_distr_linear);
part_emitter_stream(part_firework_sys, part_firework_emit, part_rocket, -30);