var masks_local;
masks_local[0] = spr_mask1;
masks_local[1] = spr_mask2;
masks_local[2] = spr_mask3;
masks_local[3] = spr_mask4;
masks_local[4] = spr_mask5;
masks_local[5] = spr_mask6;
masks_local[6] = spr_mask7;
masks_local[7] = spr_mask8;

for(var i = 0;i < array_length_1d(masks_local);i++) {
  global.masks[i] = sprite_duplicate(masks_local[i]);
  
  global.particles[i] = part_type_create();
  part_type_sprite(global.particles[i], spr_regularblock,0,0,0);
  part_type_scale(global.particles[i], 1, 1);
  part_type_speed(global.particles[i], 1, 3, 0, 0);
  part_type_alpha2(global.particles[i], 1, 0);
  part_type_gravity(global.particles[i],0.5,270);
  part_type_direction(global.particles[i], 0, 360, 0, 0);
  part_type_orientation(global.particles[i], 0, 360, 1, 0, 1);
  part_type_life(global.particles[i], room_speed*0.7, room_speed*0.7);
}


global.spellfill = part_type_create();
part_type_shape(global.spellfill, pt_shape_sphere);
part_type_size(global.spellfill, 2, 2, -0.005, 0.1);
part_type_scale(global.spellfill, 1, 1);
part_type_colour1(global.spellfill,c_aqua);
part_type_alpha2(global.spellfill, 0.2, 0);
part_type_speed(global.spellfill, 0, 0, 0, 0);
//part_type_gravity(global.spellfill,0.5,90);
part_type_direction(global.spellfill,0,1,0,10);
part_type_orientation(global.spellfill, 0, 0, 0, 0, 1);
part_type_blend(global.spellfill, false);
part_type_life(global.spellfill, room_speed, room_speed);

global.spellinner = part_type_create();
part_type_shape(global.spellinner, pt_shape_sphere);
part_type_size(global.spellinner, 1.5, 1.8, -0.005, 0);
part_type_scale(global.spellinner, 1, 1);
part_type_colour1(global.spellinner,c_white);
part_type_alpha2(global.spellinner, 0.2, 0);
part_type_speed(global.spellinner, 0, 0, 0, 0);
//part_type_gravity(global.spellinner,0.5,90);
part_type_direction(global.spellinner,0,1,0,10);
part_type_orientation(global.spellinner, 0, 0, 0, 0, 1);
part_type_blend(global.spellinner, true);
part_type_life(global.spellinner, room_speed, room_speed);

global.sprinkle = part_type_create();
part_type_shape(global.sprinkle, pt_shape_flare);
part_type_size(global.sprinkle, 0.25, 0.25, -0.005, 0);
part_type_scale(global.sprinkle, 1, 1);
part_type_colour1(global.sprinkle, c_white);
part_type_alpha2(global.sprinkle, 1, 0);
part_type_speed(global.sprinkle, 2, 4, 0, 0);
//part_type_gravity(global.sprinkle,0.1,270);
part_type_direction(global.sprinkle,0,359,0,0);
part_type_orientation(global.sprinkle, 0, 360, 0, 360, 1);
part_type_blend(global.sprinkle, false);
part_type_life(global.sprinkle, room_speed*4, room_speed*4);


global.spelldark = part_type_create();
part_type_shape(global.spelldark, pt_shape_ring);
part_type_size(global.spelldark, 1.8, 1.8, 0, 0);
part_type_scale(global.spelldark, 1, 1);
part_type_colour1(global.spelldark,c_purple);
part_type_alpha2(global.spelldark, 1, 0);
part_type_speed(global.spelldark, 0, 0, 0, 0);
part_type_gravity(global.spelldark,0.5,90);
part_type_direction(global.spelldark,0,1,0,10);
part_type_orientation(global.spelldark, 0, 0, 0, 0, 1);
part_type_blend(global.spelldark, true);
part_type_life(global.spelldark, 2, 2);


//Dirt particle for when something hits the ground.
global.dirtParticles = part_type_create();
part_type_shape(global.dirtParticles, pt_shape_square);
part_type_size(global.dirtParticles, 0.05, 0.05, 0, 0);
part_type_scale(global.dirtParticles, 1, 1);
part_type_colour1(global.dirtParticles, c_maroon);
part_type_alpha2(global.dirtParticles, 0.5, 0);
part_type_gravity(global.dirtParticles, 0.10, 270);
part_type_speed(global.dirtParticles, 1 , 2 , 0, 0);
part_type_life(global.dirtParticles, room_speed*0.5, room_speed*1);


global.crumbleParticles = part_type_create();
part_type_shape(global.crumbleParticles, pt_shape_square);
part_type_size(global.crumbleParticles, 0.02, 0.04, 0, 0);
part_type_colour1(global.crumbleParticles, c_maroon);
part_type_alpha2(global.crumbleParticles, 1, 0);
part_type_speed(global.crumbleParticles, 0, 1, 0, 0);
part_type_direction(global.crumbleParticles, 200, 300, 0, 0);
part_type_gravity(global.crumbleParticles, 0.50, 270);
part_type_orientation(global.crumbleParticles, 0, 0, 0, 0, 1);
part_type_life(global.crumbleParticles, room_speed*0.3, room_speed*0.5);


global.trailParticles = part_type_create();
part_type_shape(global.trailParticles, pt_shape_sphere);
part_type_size(global.trailParticles, 0.02, 0.04, 0, 0.5);
part_type_scale(global.trailParticles, 1, 1);
part_type_colour1(global.trailParticles, c_white);
part_type_alpha2(global.trailParticles, 0.5, 0);
part_type_speed(global.trailParticles, 0, 1, 0, 0);
part_type_gravity(global.trailParticles, -1, 270);
part_type_orientation(global.trailParticles, 0, 0, 0, 0, 1);
part_type_blend(global.trailParticles, false);
part_type_life(global.trailParticles, room_speed*0.5, room_speed*0.8);

global.starburst = part_type_create();
part_type_shape(global.starburst, pt_shape_star);
part_type_size(global.starburst, 0.04, 0.4, -0.005, 0);
part_type_scale(global.starburst, 1, 1);
part_type_colour1(global.starburst,c_yellow);
part_type_alpha2(global.starburst, 0.7, 0);
part_type_speed(global.starburst, 0, 10, 0, 0);
part_type_gravity(global.starburst,0.5,270);
part_type_direction(global.starburst,0,359,0,0);
part_type_orientation(global.starburst, 0, 359, 0, 0, 1);
part_type_blend(global.starburst, true);
part_type_life(global.starburst, room_speed*0.4, room_speed*0.4);

global.trailParticles2 = part_type_create();
part_type_shape(global.trailParticles2, pt_shape_sphere);
part_type_size(global.trailParticles2, 0.01, 0.02, 0, 0.2);
part_type_scale(global.trailParticles2, 1, 1);
part_type_colour1(global.trailParticles2, c_white);
part_type_alpha2(global.trailParticles2, 0.5, 0);
part_type_speed(global.trailParticles2, 0, 1, 0, 0);
part_type_gravity(global.trailParticles2, -1, 270);
part_type_orientation(global.trailParticles2, 0, 0, 0, 0, 1);
part_type_blend(global.trailParticles2, false);
part_type_life(global.trailParticles2, room_speed*0.5, room_speed*0.8);


global.spellParticles = part_type_create();
part_type_shape(global.spellParticles, pt_shape_sphere);
part_type_size(global.spellParticles, 0.25, 0.25, -0.005, 0);
part_type_scale(global.spellParticles, 1, 1);
part_type_colour1(global.spellParticles, c_white);
part_type_alpha2(global.spellParticles, 0.5, 0);
part_type_speed(global.spellParticles, 0, 0, 0, 0);
part_type_orientation(global.spellParticles, 0, 0, 0, 0, 1);
part_type_blend(global.spellParticles, false);
part_type_life(global.spellParticles, room_speed*0.4, room_speed*0.4);


global.cloudParticles = part_type_create();
part_type_sprite(global.cloudParticles, spr_poof,0,0,0);
//part_type_shape(global.cloudParticles, pt_shape_sphere);
part_type_size(global.cloudParticles, 0.1, 0.1, 0.02, 0);
part_type_scale(global.cloudParticles, 1, 1);
part_type_colour1(global.cloudParticles, c_white);
part_type_alpha3(global.cloudParticles, 1,1,0);
part_type_speed(global.cloudParticles, 1, 4, -0.1, 0);
part_type_direction(global.cloudParticles,0,359,0,20); 
part_type_orientation(global.cloudParticles, 0, 0, 0, 0, 0);
part_type_blend(global.cloudParticles, false);
part_type_life(global.cloudParticles, room_speed*1, room_speed*2);


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
