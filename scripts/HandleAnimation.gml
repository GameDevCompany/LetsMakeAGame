//SetSprites();
image_speed = global.timeScale * 0.2;

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

if(grounded && (sprite_index == fallingSprite || sprite_index == hoverSprite)) {
  var bbottom = bbox_bottom;
  sprite_index = idleSprite;
  y -=  bbox_bottom - bbottom;
}

switch(state) {
  case "attacking":
    sprite_index = idleSprite;
    break;
  case "idle":
    sprite_index = idleSprite;
    break;
  case "running":
    sprite_index = runningSprite;
    break;
  case "hover":
    sprite_index = hoverSprite;
    break;
  default:
    sprite_index = fallingSprite;
}





//Switching animation depending on character state.
/*if(attackTimer > global.time) {
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
}*/
