//shader_set(PRETTY);

if(y < view_yview[0]) {
  draw_sprite(spr_char_display,0,x,view_yview + 26);
}
if(y > view_yview[0]+view_hview[0]) {
   draw_sprite(spr_char_display,0,x,view_yview[0]+view_hview[0] - 26);
}

draw_sprite_ext(sprite_index, image_index, x, y, image_xscale, image_yscale, image_angle, image_blend, image_alpha);
DrawBubbled();

//shader_reset();