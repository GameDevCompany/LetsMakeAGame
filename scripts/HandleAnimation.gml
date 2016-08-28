//SetSprites();
image_speed = global.timeScale * 0.2;

switch(state) {
 /* case "attacking":
    sprite_index = idleSprite;
    break;
  case "idle":
    sprite_index = idleSprite;
    break;
  case "running":
    sprite_index = runningSprite;
    break;*/
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
