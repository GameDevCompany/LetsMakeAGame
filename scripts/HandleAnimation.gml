
//Flip animation depending on direction of movement
if(grounded) {
  if(horizontalSpeed != 0) {
      if(horizontalSpeed < 0) {
        image_xscale = -1;
      } else {
        image_xscale = 1;
      }
  }
}

//Switching animation depending on character state.
if(attackTimer > global.time || throwKeyPressed) {
  if(sprite_index != punchSprite) {
    sprite_index = punchSprite;
    image_index = 0;
  }
} else if(!grounded) {
  sprite_index = rollSprite;
} else if(horizontalSpeed != 0) {
  if(isCrouched && grounded) {
    sprite_index = crouchWalkSprite;
  } else { 
    sprite_index = runningSprite;
  }
} else {
  if(isCrouched) {
    sprite_index = crouchSprite;
  } else {
    sprite_index = idleSprite;
  }
}
