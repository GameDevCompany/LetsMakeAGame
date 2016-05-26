  HP = maxHP;
  if(state == characterStates.dead) {
    mask_index = temp_mask;
  }
  horizontalSpeed = 0;
  verticalSpeed = 0;
  visible = true;
  state = characterStates.alive;
