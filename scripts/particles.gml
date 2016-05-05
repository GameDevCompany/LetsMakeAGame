global.bloodParticles = part_type_create();
part_type_shape(global.bloodParticles, pt_shape_square);
part_type_size(global.bloodParticles, 0.02, 0.04, 0, 0);
//part_type_scale(global.bloodParticles, 1, 1);
part_type_colour1(global.bloodParticles, c_red);
part_type_alpha2(global.bloodParticles, 1, 0);
part_type_speed(global.bloodParticles, 3, 9, 0, 0);
part_type_direction(global.bloodParticles, 60, 120, 0, 0);
part_type_gravity(global.bloodParticles, 0.50, 270);
part_type_orientation(global.bloodParticles, 0, 0, 0, 0, 1);
//part_type_blend(global.bloodParticles, 0);
part_type_life(global.bloodParticles, room_speed*1, room_speed*1.2);


/* Awesome transition thing?
global.bloodParticles = part_type_create();
part_type_shape(global.bloodParticles, pt_shape_square);
part_type_size(global.bloodParticles, 0.1, 0.2, 1, 0);
part_type_scale(global.bloodParticles, 1, 1);
part_type_colour1(global.bloodParticles, c_red);
part_type_alpha2(global.bloodParticles, 1, 0);
part_type_speed(global.bloodParticles, 2, 4, 0, 0);
part_type_direction(global.bloodParticles, 0, 180, 0, 0);
part_type_gravity(global.bloodParticles, 0.20, 270);
part_type_orientation(global.bloodParticles, 0, 0, 0, 0, 1);
part_type_blend(global.bloodParticles, 0);
part_type_life(global.bloodParticles, 15, 120);
*/
