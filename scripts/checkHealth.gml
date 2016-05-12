if(HP <= 0 && state != characterStates.dead) {
  timeOfDeath = get_timer();
  state = characterStates.dead;
  visible = false;
  temp_mask = mask_index;
  mask_index = nocollision;
  bodyparts[0] = "head";
  bodyparts[1] = "body";
  bodyparts[2] = "arm";
  bodyparts[3] = "arm";
  bodyparts[4] = "leg";
  bodyparts[5] = "leg";
  for(i = 0; i < array_length_1d(bodyparts); i++;) {
    with(instance_create(x,y,obj_bodypart)) {
      part = other.bodyparts[other.i];
      characterType = other.characterType;
      created_on = get_timer();
    }
  }
  /*repeat(50)
  {
    part_particles_create(global.particleSystem, x, y, global.bloodParticles, 1);
  }*/
}

if(state == characterStates.dead && timeOfDeath + 5000000  < get_timer()) {
  HP = maxHP;
  mask_index = temp_mask;

  x = random_range(0,view_wview[0]);
  y = random_range(0,view_hview[0]);
  while(place_meeting(x,y,obj_collidable)) {
    x = random_range(0,view_wview[0]);
    y = random_range(0,view_hview[0]);
  }
  horizontalSpeed = 0;
  verticalSpeed = 0;
  visible = true;
  state = characterStates.alive;
}
