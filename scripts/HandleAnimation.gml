
//Flip animation depending on direction of movement
if(horizontalSpeed != 0) {
    if(horizontalSpeed < 0) {
      image_xscale = -1;
    } else {
      image_xscale = 1;
    }
}

//Switching animation depending if character is moving
if(attackKeyPressed) {
  sprite_index = spr_ninja_punch;
} else if(!grounded) {
  sprite_index = spr_ninja_roll;
} else if(horizontalSpeed != 0) {
  sprite_index = spr_ninja_running;
} else {
  sprite_index = spr_ninja_idle;
}
