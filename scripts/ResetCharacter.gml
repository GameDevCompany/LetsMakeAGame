  x = random_range(0,view_wview[0]);
  y = random_range(0,view_hview[0]);
  while(place_meeting(x,y,obj_collidable)) {
    x = random_range(0,view_wview[0]);
    y = random_range(0,view_hview[0]);
  }
  
  HP = maxHP;
  if(state == characterStates.dead) {
    mask_index = temp_mask;
  }
  horizontalSpeed = 0;
  verticalSpeed = 0;
  visible = true;
  speed = 0;
  lastGroundSpeed = 0;
  state = characterStates.alive;
  
