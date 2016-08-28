if(damageColor > 0) {
  damageColor -= 10;
  if(damageColor < 0) {
    damageColor = 0;
  }
}
image_blend = make_colour_hsv(0, damageColor, 255);
