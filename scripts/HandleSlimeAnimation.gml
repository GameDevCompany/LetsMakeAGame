image_speed = global.timeScale * 0.2;
switch(state) {
  case "moving":
    sprite_index = spr_slime_walk;
    break;
  case "jump":
    image_speed = global.timeScale;
    sprite_index = spr_slime_jump;
    break;
  case "flying": 
    sprite_index = spr_slime_air;
    break;
  default:
    sprite_index = spr_slime_walk;
}
