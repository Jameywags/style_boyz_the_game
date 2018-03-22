x = room_width/2 - 150;
y = room_height/2 + 100;

//Particle Sysytem
part_fire_sys = part_system_create();



//Particle
part_fire = part_type_create();
part_type_sprite(part_fire, s_particle_fire_test, 0, 0, 1);
part_type_size(part_fire, 1, 2, 0, 0);
part_type_color2(part_fire, c_orange, c_red);
part_type_alpha3(part_fire, 1, 1, 0);
part_type_speed(part_fire, 4, 10, 0, 0);
part_type_direction(part_fire, 85, 95, 0, 10);
part_type_orientation(part_fire, 0, 359, 0, 0, 0);
part_type_blend(part_fire, 1);
part_type_life(part_fire, room_speed*0.2, room_speed*0.4);

//Cinder Particle
partCinder = part_type_create();
part_type_shape(partCinder,pt_shape_flare);
part_type_size(partCinder,0.5,1,0,0);
part_type_color2(partCinder,c_orange,c_red);
part_type_alpha3(partCinder,1,1,0);
part_type_speed(partCinder,1,2,0,0);
part_type_direction(partCinder,85,95,0,10);
part_type_blend(partCinder,1);
part_type_life(partCinder,240,320);



//Particle Emitter
part_fire_emit = part_emitter_create(part_fire_sys);
part_emitter_region(part_fire_sys, part_fire_emit, x-80, x+80, y-20, y+20, ps_shape_ellipse, ps_distr_linear);