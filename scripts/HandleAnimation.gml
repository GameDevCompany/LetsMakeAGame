//SetSprites();
image_speed = global.timeScale * 0.2;
if(!isFalling) {
  switch(state) {
    case "grounded":
      if(horizontalSpeed < -0.2) {
        //☺
        sprite_index = walkLeftSprite;
      } else if (horizontalSpeed > 0.2) {
        sprite_index = walkRightSprite;
      } else {
        sprite_index = idleSprite;
      }
      break;
    case "hover_left":
      sprite_index = walkLeftSprite;
      break;
    case "hover_right":
      sprite_index = walkRightSprite;
      break;
    case "falling_left":
      sprite_index = walkLeftSprite;
      break;
    case "falling_right":
      sprite_index = walkRightSprite;
      break;
    case "hover":
      sprite_index = idleSprite;
      break;
    default:
      sprite_index = idleSprite;
  }
} else {
  switch(state) {
    case "slide_left":
      sprite_index = slideLeftSprite;
      break;
    case "slide_right":
      sprite_index = slideRightSprite;
      break;
    case "hover":
      sprite_index = hoverSprite;
      break;
    case "hover_left":
      hover = hoverLeftSprite;
      sprite_index = hoverLeftSprite;
      break;
    case "hover_right":
      hover = hoverRightSprite;
      sprite_index = hoverRightSprite;
      break;
    case "falling_left":
      sprite_index = fallingLeftSprite;
      break;
    case "falling_right":
      sprite_index = fallingRightSprite;
      break;
    default:
      sprite_index = fallingSprite;
  }
}

mask_index = sprite_index;
