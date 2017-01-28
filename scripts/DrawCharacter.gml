if(y < view_yview[global.gameview]) {
  draw_sprite(spr_char_display,0,x,view_yview[global.gameview] + 26);
}
if(y > view_yview[global.gameview]+view_hview[global.gameview]) {
   draw_sprite(spr_char_display,0,x,view_yview[global.gameview]+view_hview[global.gameview] - 26);
}

draw_self();
if(bubbled) {
  drawBounce((bounceX/8), (bounceY/8),spr_bubble, 0.7);
}

