

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
  part_type_sprite(global.particles[i], spr_mosscobble_piece,0,0,0);
  part_type_scale(global.particles[i], 1, 1);
  part_type_speed(global.particles[i], 1, 3, 0, 0);
  part_type_alpha2(global.particles[i], 1, 0);
  part_type_direction(global.particles[i], 0, 360, 0, 0);
  part_type_orientation(global.particles[i], 0, 360, 1, 0, 1);
  part_type_life(global.particles[i], room_speed*1, room_speed*1);
}






























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




//smoke particle that has no use yet
global.smokeParticles = part_type_create();
part_type_shape(global.smokeParticles, pt_shape_square);
part_type_size(global.smokeParticles, 0.05, 0.08, 0.01, 0);
part_type_scale(global.bloodParticles, 1, 1);
part_type_colour1(global.smokeParticles, c_gray);
part_type_alpha2(global.smokeParticles, 0.4, 0);
part_type_speed(global.smokeParticles, 0.1, 1, 0, 0);
//part_type_orientation(global.smokeParticles, 0, 0, 0, 0, 1);
//part_type_blend(global.smokeParticles, 1);
part_type_life(global.smokeParticles, room_speed*0.5, room_speed*1);




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
//part_type_scale(global.bloodParticles, 1, 1);
part_type_colour1(global.crumbleParticles, c_maroon);
part_type_alpha2(global.crumbleParticles, 1, 0);
part_type_speed(global.crumbleParticles, 0, 1, 0, 0);
part_type_direction(global.crumbleParticles, 200, 300, 0, 0);
part_type_gravity(global.crumbleParticles, 0.50, 270);
part_type_orientation(global.crumbleParticles, 0, 0, 0, 0, 1);
//part_type_blend(global.bloodParticles, 0);
part_type_life(global.crumbleParticles, room_speed*0.3, room_speed*0.5);





global.trailParticles = part_type_create();
part_type_shape(global.trailParticles, pt_shape_sphere);
part_type_size(global.trailParticles, 0.02, 0.04, 0, 0.5);
part_type_scale(global.trailParticles, 1, 1);
part_type_colour1(global.trailParticles, c_white);
part_type_alpha2(global.trailParticles, 0.5, 0);
part_type_speed(global.trailParticles, 0, 1, 0, 0);
//part_type_direction(global.trailParticles, 200, 300, 0, 0);
part_type_gravity(global.trailParticles, -1, 270);
part_type_orientation(global.trailParticles, 0, 0, 0, 0, 1);
part_type_blend(global.trailParticles, false);
part_type_life(global.trailParticles, room_speed*0.5, room_speed*0.8);



global.trailParticles2 = part_type_create();
part_type_shape(global.trailParticles2, pt_shape_sphere);
part_type_size(global.trailParticles2, 0.01, 0.02, 0, 0.2);
part_type_scale(global.trailParticles2, 1, 1);
part_type_colour1(global.trailParticles2, c_white);
part_type_alpha2(global.trailParticles2, 0.5, 0);
part_type_speed(global.trailParticles2, 0, 1, 0, 0);
//part_type_direction(global.trailParticles, 200, 300, 0, 0);
part_type_gravity(global.trailParticles2, -1, 270);
part_type_orientation(global.trailParticles2, 0, 0, 0, 0, 1);
part_type_blend(global.trailParticles2, false);
part_type_life(global.trailParticles2, room_speed*0.5, room_speed*0.8);


global.spellParticles = part_type_create();
part_type_shape(global.spellParticles, pt_shape_sphere);
//part_type_sprite(global.spellParticles, spr_spell,0,0,0);
part_type_size(global.spellParticles, 0.25, 0.25, -0.005, 0);
part_type_scale(global.spellParticles, 1, 1);
part_type_colour1(global.spellParticles, c_white);
part_type_alpha2(global.spellParticles, 0.5, 0);
part_type_speed(global.spellParticles, 0, 0, 0, 0);
part_type_orientation(global.spellParticles, 0, 0, 0, 0, 1);
part_type_blend(global.spellParticles, true);
part_type_life(global.spellParticles, room_speed*0.4, room_speed*0.4);


global.brokenCobble = part_type_create();
part_type_sprite(global.brokenCobble, spr_mosscobble_piece,0,0,0);
part_type_scale(global.brokenCobble, 1, 1);
part_type_speed(global.brokenCobble, 1, 3, 0, 0);
part_type_alpha2(global.brokenCobble, 1, 0);
part_type_direction(global.brokenCobble, 0, 360, 0, 0);
part_type_orientation(global.brokenCobble, 0, 360, 1, 0, 1);
part_type_life(global.brokenCobble, room_speed*1, room_speed*1);


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
