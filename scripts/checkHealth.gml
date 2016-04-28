if(HP <= 0 && state != characterStates.dead) {
  timeOfDeath = get_timer();
  state = characterStates.dead;
  visible = false;
  temp_mask = mask_index;
  mask_index = nocollision;
  with(instance_create(x,y,obj_bodypart)) {
    part = "head";
    characterType = other.characterType;
  }
  with(instance_create(x,y,obj_bodypart)) {
    part = "body";
    characterType = other.characterType;
  }
  with(instance_create(x,y,obj_bodypart)) {
    part = "arm";
    characterType = other.characterType;
  }
  with(instance_create(x,y,obj_bodypart)) {
    part = "arm";
    characterType = other.characterType;
  }
  with(instance_create(x,y,obj_bodypart)) {
    part = "leg";
    characterType = other.characterType;
  }
  with(instance_create(x,y,obj_bodypart)) {
    part = "leg";
    characterType = other.characterType;
  }
   
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
  
  visible = true;
  state = characterStates.alive;
}
