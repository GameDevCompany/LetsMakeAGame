Gravity();
Collision(obj_collidable,true,true);
grounded = IsGrounded(obj_collidable);
Rotate(horizontalSpeed, grounded);


Translate();
sprite = asset_get_index("spr_" + characterType + "_"+part);
sprite_index = sprite;

if(grounded) {
  horizontalSpeed -= sign(horizontalSpeed);
  rotationSpeed = horizontalSpeed;
}

if(created_on + particleDelay > get_timer()) {
  var bloodSpurtParticle = part_type_create();
  part_type_shape(bloodSpurtParticle, pt_shape_square);
  part_type_size(bloodSpurtParticle, 0.02, 0.04, 0, 0);
  part_type_colour1(bloodSpurtParticle, c_red);
  part_type_alpha2(bloodSpurtParticle, 1, 0);
  part_type_speed(bloodSpurtParticle, 3, 9, 0, 0);
  part_type_direction(bloodSpurtParticle, image_angle - 2, image_angle + 2, 0, 0);
  part_type_gravity(bloodSpurtParticle, 0.50, 270);
  part_type_orientation(bloodSpurtParticle, 0, 0, 0, 0, 1);
  part_type_life(bloodSpurtParticle, room_speed*1, room_speed*1.2);
  part_particles_create(global.particleSystem, x, y, bloodSpurtParticle, 1);
}

if(created_on + 30000000 < get_timer()) {
  instance_destroy();
}

