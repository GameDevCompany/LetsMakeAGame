  x = initX;
  y = initY;
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
  
