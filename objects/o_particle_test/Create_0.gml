x = room_width/2 + 150;
y = room_height/2 + 100;

//Particle System
part1_sys = part_system_create();
part_system_depth(part1_sys, 0);

//Particle
part1 = part_type_create();
part_type_shape(part1, pt_shape_disk);
part_type_scale(part1, 1, 1);
part_type_size(part1, 0.5, 0.7, -0.005, 0);
part_type_color2(part1, c_blue, c_white);
part_type_alpha2(part1, 1, 0.75);
part_type_speed(part1, 0.1, 0.5, 0, 0);
part_type_direction(part1, 0, 359, 0, 0);
part_type_gravity(part1, 0.02, 90);
part_type_life(part1, room_speed*2, room_speed*4);
part_type_blend(part1, 1);


